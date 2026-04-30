from talon import Module, app
import re

mod = Module()
mod.tag("custom_formatters", desc="commands for working with custom formatters")

apps = mod.apps

def setup_custom_formatters():
    try:
        # We now import CustomFormatter alongside the dictionary.
        from user.community_talon.core.formatters.formatters import formatters_dict, CustomFormatter
    except ImportError as e:
        print(f"Talon: Could not import formatter objects. Error: {e}")
        return

    def format_sponge(text: str) -> str:
        return "".join(c.upper() if i % 2 == 0 else c.lower() for i, c in enumerate(text))
    
    def format_regex_wildcard(text: str) -> str:
        # Escape regex special characters, then replace spaces with '.*'
        escaped = re.escape(text)
        return escaped.replace(r'\ ', r'.*')

    # The CustomFormatter takes an ID string, and the formatting function.
    formatters_dict["SPONGE_CASE"] = CustomFormatter("SPONGE_CASE", format_sponge)
    formatters_dict["REGEX_WILDCARD"] = CustomFormatter("REGEX_WILDCARD", format_regex_wildcard)
    print("Formatters", formatters_dict)

app.register("ready", setup_custom_formatters)
