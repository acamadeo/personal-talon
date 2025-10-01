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

jj squash:
    insert("jj squash")

jj edit <user.jj_commit>:
    insert("jj edit {jj_commit}")

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
    insert_between("jj commit -m \"\"", '"')

jj commit <user.text>:
    insert("jj commit -m \"{text}\"")

jj desk:
    insert("jj desc")

jj desk <user.jj_commit>:
    insert("jj desc -r {jj_commit}")

jj rebase <user.commit_source> <user.commit_destination>:
    insert("jj rebase -s {commit_source} -d {commit_destination}")

jj move book <user.jj_bookmark> <user.commit_destination>:
    insert("jj bookmark move {jj_bookmark} --to {commit_destination}")

jj abandon <user.jj_commit>:
    insert("jj abandon {jj_commit}")

jj get fetch:
    insert("jj git fetch")

jj get push <user.jj_bookmark>:
    insert("jj git push --bookmark {jj_bookmark}")
