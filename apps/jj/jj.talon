tag: user.jj
-
jj sync all:
    insert("jj sync --all")

jj log:
    insert("jj log")

jj diff:
    insert("jj diff")

jj diff <user.letter>+:
    insert("jj diff -r ")
    commit_name = user.commit_name(letter_list)
    insert(commit_name)

jj squash:
    insert("jj squash")

jj edit <user.letter>+:
    insert("jj edit ")
    commit_name = user.commit_name(letter_list)
    insert(commit_name)

jj new:
    insert("jj new")

jj new <user.text>:
    insert("jj new ")
    insert(text or "")

jj new <user.letter>+:
    insert("jj new ")
    commit_name = user.commit_name(letter_list)
    insert(commit_name)

jj commit:
    insert("jj commit")

jj commit <user.text>:
    insert("jj commit -m \"")
    insert(text or "")
    insert("\"")

jj desk:
    insert("jj desc")

jj desk <user.letter>+:
    insert("jj desc -r ")
    commit_name = user.commit_name(letter_list)
    insert(commit_name)

jj get fetch:
    insert("jj git fetch")

jj get push book <user.text>:
    insert("jj git push --bookmark ")
    insert(text or "")
