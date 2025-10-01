from talon import Module, actions
from typing import List

mod = Module()
mod.tag("jj", desc="commands for working with Jujutsu")

apps = mod.apps


@mod.action_class
class Actions:
    def commit_name(letter_list: List[str]) -> str:
        """turns a sequence of letters into a string"""
        return "".join(letter_list)
