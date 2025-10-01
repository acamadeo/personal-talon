from talon import Module, actions
from typing import List

mod = Module()
mod.tag("jj", desc="commands for working with Jujutsu")

apps = mod.apps

@mod.capture(rule="<user.letter>+")
def jj_commit(m) -> str:
    return "".join(m.letter_list)

@mod.capture(rule="<user.text>")
def jj_bookmark(m) -> str:
    return m.text

@mod.capture(rule="<user.jj_commit>")
def commit_source(m) -> str:
    return m.jj_commit

@mod.capture(rule="to <user.jj_commit>")
def commit_destination(m) -> str:
    return m.jj_commit
