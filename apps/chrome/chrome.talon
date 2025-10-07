app: chrome
-
# TODO: Add command for "go three tabs left"

tab (refresh | fresh):
    user.chrome_mod("r")

# Requires extension: https://chromewebstore.google.com/detail/tab-duplicator/lfmcdmbfaplkbjkefabcfbkfelmhhboa
tab dupe:
    key(alt-shift-d)

tab new paste:
    user.chrome_mod("t")
    user.chrome_mod("v")
    key(enter)

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

# Specific apps
tab new calendar:
    user.chrome_mod("t")
    insert("calendar.google.com/")
    key(enter)

tab new drive:
    user.chrome_mod("t")
    insert("drive.google.com/")
    key(enter)

tab new gmail:
    user.chrome_mod("t")
    insert("mail.google.com/")
    key(enter)

tab new youtube:
    user.chrome_mod("t")
    insert("youtube.com/")
    key(enter)
