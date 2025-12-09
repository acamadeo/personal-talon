tag: user.jj
-
jj log:
    insert("jj log")
    key(enter)

jj diff:
    insert("jj diff")
    key(enter)

jj diff <user.jj_commit>:
    insert("jj diff -r {jj_commit}")
    key(enter)

jj squash:
    insert("jj squash")
    key(enter)

jj edit <user.jj_commit>:
    insert("jj edit {jj_commit}")
    key(enter)

jj new:
    insert("jj new")
    key(enter)

jj new <user.jj_bookmark>:
    insert("jj new {jj_bookmark}")
    key(enter)

jj new <user.jj_commit>:
    insert("jj new {jj_commit}")
    key(enter)

jj commit:
    insert("jj commit")

jj commit message:
    insert("jj commit -m \"\"")
    key(left)

jj commit <user.text>:
    insert("jj commit -m \"{text}\"")

jj desk:
    insert("jj desc")
    key(enter)

jj desk <user.jj_commit>:
    insert("jj desc -r {jj_commit}")
    key(enter)

jj abandon:
    insert("jj abandon")
    key(enter)

jj rebase <user.commitmark_source> <user.commitmark_destination>:
    insert("jj rebase -s {commitmark_source} -d {commitmark_destination}")
    key(enter)

jj move book <user.jj_bookmark> <user.commitmark_destination>:
    insert("jj bookmark move {jj_bookmark} --to {commitmark_destination}")

jj abandon <user.jj_commit>:
    insert("jj abandon {jj_commit}")

jj get fetch:
    insert("jj git fetch")
    key(enter)

jj get push <user.jj_bookmark>:
    insert("jj git push --bookmark {jj_bookmark}")
