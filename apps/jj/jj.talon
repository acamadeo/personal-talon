tag: user.jj
-
jj sync all:
    insert("jj sync --all")

jj log:
    insert("jj log")

jj diff:
    insert("jj diff")

jj squash:
    insert("jj squash")

jj commit:
    insert("jj commit")

jj commit <user.text>:
    insert("jj commit -m \"")
    insert(text or "")
    insert("\"")

jj edit <user.letter>+:
    insert("jj edit ")
    commit_name = user.commit_name(letter_list)
    insert(commit_name)

jj new <user.text>:
    insert("jj new ")
    insert(text or "")

jj new <user.letter>+:
    insert("jj new ")
    commit_name = user.commit_name(letter_list)
    insert(commit_name)
