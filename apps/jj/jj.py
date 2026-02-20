from talon import Module, actions
from typing import List

mod = Module()
mod.tag("jj", desc="commands for working with Jujutsu")

apps = mod.apps

# Say any of the following to start a jj command.
@mod.capture(rule="jj | juju")
def jj_command(m) -> str:
    return "jj"

@mod.capture(rule="<user.letter>+")
def jj_commit(m) -> str:
    return "".join(m.letter_list)

@mod.capture(rule="<user.text>")
def jj_bookmark(m) -> str:
    return m.text


@mod.capture(rule="(<user.jj_commit> | <self.jj_bookmark>)")
def jj_commitmark(m) -> str:
    return str(m)


@mod.capture(rule="<user.jj_commitmark>")
def commitmark_source(m) -> str:
    return m.jj_commitmark

@mod.capture(rule="to <user.jj_commitmark>")
def commitmark_destination(m) -> str:
    return m.jj_commitmark
