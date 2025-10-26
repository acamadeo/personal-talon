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

dat bomp:
    insert("-- ")

tab back:
    key(shift-tab)

# Undo / redo
nope: edit.undo()
yes indeed: edit.redo()

# TODO: Need a command besides `say` that inserts a final ` ` after the text.
