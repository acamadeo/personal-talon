tag: user.jj
-
<user.jj_command> log:
    insert("jj log")
    key(enter)

<user.jj_command> status:
    insert("jj st")
    key(enter)

<user.jj_command> diff:
    insert("jj diff")
    key(enter)

<user.jj_command> diff <user.jj_commit>:
    insert("jj diff -r {jj_commit}")
    key(enter)

<user.jj_command> squash:
    insert("jj squash")
    key(enter)

<user.jj_command> squash into <user.jj_commit>:
    insert("jj squash -t {jj_commit}")
    key(enter)

<user.jj_command> edit <user.jj_commit>:
    insert("jj edit {jj_commit}")
    key(enter)

<user.jj_command> new:
    insert("jj new")
    key(enter)

<user.jj_command> new <user.jj_bookmark>:
    insert("jj new {jj_bookmark}")
    key(enter)

<user.jj_command> new <user.jj_commit>:
    insert("jj new {jj_commit}")
    key(enter)

<user.jj_command> commit:
    insert("jj commit")

<user.jj_command> commit message:
    insert("jj commit -m \"\"")
    key(left)

<user.jj_command> commit <user.text>:
    insert("jj commit -m \"{text}\"")

<user.jj_command> desk:
    insert("jj desc")
    key(enter)

<user.jj_command> desk <user.jj_commit>:
    insert("jj desc -r {jj_commit}")
    key(enter)

<user.jj_command> abandon:
    insert("jj abandon")
    key(enter)

<user.jj_command> rebase <user.commitmark_source> <user.commitmark_destination>:
    insert("jj rebase -s {commitmark_source} -d {commitmark_destination}")
    key(enter)

<user.jj_command> split:
    insert("jj split")
    key(enter)

<user.jj_command> move book <user.jj_bookmark> <user.commitmark_destination>:
    insert("jj bookmark move {jj_bookmark} --to {commitmark_destination}")
    key(enter)

<user.jj_command> abandon <user.jj_commit>:
    insert("jj abandon {jj_commit}")
    key(enter)

<user.jj_command> get fetch:
    insert("jj git fetch")
    key(enter)

<user.jj_command> get push <user.jj_bookmark>:
    insert("jj git push --bookmark {jj_bookmark}")
    key(enter)
