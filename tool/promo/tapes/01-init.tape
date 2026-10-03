# Beat 1: a Flutter app, then `terradart init`, answering the questions.
# The pauses leave each prompt on screen long enough to read along.
Show
Sleep 1.2s
Type "terradart init"
Sleep 700ms
Enter
Wait /numbers:/
Sleep 4.5s
Type "1"
Sleep 700ms
Enter
Wait /Environments/
Sleep 1.8s
Enter
Wait /for dev/
Sleep 900ms
Type "myapp-dev"
Sleep 600ms
Enter
Wait /for prd/
Sleep 900ms
Type "myapp-prd"
Sleep 600ms
Enter
Wait /\[y\/N\]/
Sleep 2s
Enter
Wait /\[Y\/n\]/
Sleep 3.5s
Enter
Wait@90s /^\$\s*$/
Sleep 4s
