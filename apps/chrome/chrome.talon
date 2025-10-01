app: chrome
-
tab refresh:
    user.chrome_mod("r")

tab new paste:
    user.chrome_mod("t")
    user.chrome_mod("v")

# Solution from https://superuser.com/a/338543
tab pop out:
    user.chrome_mod("l")
    sleep(50ms)
    user.chrome_mod("c")
    user.chrome_mod("w")
    user.chrome_mod("n")
    user.chrome_mod("v")
    key(enter)

change plink:
    user.chrome_mod("l")

copy plink:
    user.chrome_mod("l")
    user.chrome_mod("c")
    key(esc)
    key(esc)
