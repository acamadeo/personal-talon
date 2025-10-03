os: mac
app: terminal
-
tag(): user.jj

clear word last:
    key(ctrl-w)

clear line:
    key(ctrl-u)

cancel:
    key(ctrl-c)

run last:
    key(up)
    key(enter)

ssh <user.text>:
    insert("ssh {text}")
    key(enter)

tee mux a:
    insert("tmux a")

tee mux new:
    insert("tmux new")
