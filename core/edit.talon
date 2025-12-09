-
semi: key(;)

clap: key(enter)

ex clomp:
    key(!)
    key(space)

comp | spam:
    insert(", ")

stomp:
    insert(". ")

bomp:
    insert("! ")

domp:
    insert("- ")

quomp:
    insert("? ")

clomp:
    key(:)
    key(space)

dub domp:
    insert("-- ")

tab back:
    key(shift-tab)

void:
    key(space)

# Undo / redo
nope: edit.undo()
yes indeed: edit.redo()

# TODO:
#  - You can say `strings foo` to do 'foo'. Implement a similar thing for parens, brackets, braces.
