from talon import Context, Module, app, registry
from user.community_talon.core.formatters.formatters import CustomFormatter
import re

mod = Module()
mod.tag("custom_formatters", desc="commands for working with custom formatters")

apps = mod.apps

ctx = Context()

# Patch `code_formatter.talon-list`.
def patch_code_formatter():
    talon_list_name = "user.code_formatter"
    if talon_list_name in registry.lists:
        base_list = dict(registry.lists[talon_list_name][0])
        
        # Triggering a formatter on "list" alone is problematic since it's
        # commonly used in formatted words.
        #  - Instead trigger it with "comma list".
        if "list" in base_list:
            del base_list["list"]
        base_list["comma list"] = "COMMA_SEPARATED"
        
        # Add our custom formatters so Talon can use them.
        base_list["sponge"] = "SPONGE_CASE"
        base_list["regex wildcard"] = "REGEX_WILDCARD"
        
        # Assign this dynamically built list to our context.
        ctx.lists[talon_list_name] = base_list
    else:
        print(f"Talon: {talon_list_name} list not found in registry.")


def setup_custom_formatters(formatters_dict):
    def format_sponge(text: str) -> str:
        return "".join(c.upper() if i % 2 == 0 else c.lower() for i, c in enumerate(text))
    
    def format_regex_wildcard(text: str) -> str:
        # Escape regex special characters, then replace spaces with '.*'
        escaped = re.escape(text)
        return escaped.replace(r'\ ', r'.*')

    # The CustomFormatter takes an ID string, and the formatting function.
    formatters_dict["SPONGE_CASE"] = CustomFormatter("SPONGE_CASE", format_sponge)
    formatters_dict["REGEX_WILDCARD"] = CustomFormatter("REGEX_WILDCARD", format_regex_wildcard)

def on_ready():
    try:
        # We now import CustomFormatter alongside the dictionary.
        from user.community_talon.core.formatters.formatters import formatters_dict
    except ImportError as e:
        print(f"Talon: Could not import formatter objects. Error: {e}")
        return

    setup_custom_formatters(formatters_dict)
    patch_code_formatter()


app.register("ready", on_ready)
