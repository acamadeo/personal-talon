from talon import Module

mod = Module()
mod.apps.google_docs = r"""
tag: browser
browser.host: docs.google.com
browser.path: /^/document/.*/
"""
mod.apps.google_docs = r"""
app.name: Docs
"""
