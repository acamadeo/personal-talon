os: mac
app: terminal
-
tag(): user.jj

clear word last:
    key(ctrl-w)

clear line:
    key(ctrl-u)

clear screen:
    key(cmd-k)

cancel:
    key(ctrl-c)

dancel:
    key(ctrl-d)

(hunt this) | (look up):
    key(ctrl-r)

run last:
    key(up)
    key(enter)

ssh <user.text>:
    insert("ssh {text}")
    key(enter)

tee mux (a | attach):
    insert("tmux a")
    key(enter)

tee mux new:
    insert("tmux new")
    key(enter)
