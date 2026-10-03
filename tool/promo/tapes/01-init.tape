# Beat 1: a Flutter app, then `terradart init`, answering the questions.
# The pauses leave each prompt on screen long enough to read along.
Show
Sleep 1.2s
Type "terradart init"
Sleep 700ms
Enter
Wait /numbers:/
Sleep 4.5s
Type "2"
Sleep 700ms
Enter
Wait /Environments/
Sleep 1.5s
Type "dev,stg,prd"
Sleep 700ms
Enter
Wait /region for dev/
Sleep 1.5s
Type "us-east-1"
Sleep 500ms
Enter
Wait /region for stg/
Sleep 600ms
Type "us-east-1"
Sleep 500ms
Enter
Wait /region for prd/
Sleep 600ms
Type "us-east-1"
Sleep 500ms
Enter
Wait /account ID for dev/
Sleep 1.5s
Enter
Wait /account ID for stg/
Sleep 500ms
Enter
Wait /account ID for prd/
Sleep 500ms
Enter
Wait /\[y\/N\]/
Sleep 2.5s
Enter
Wait /\[Y\/n\]/
Sleep 3.5s
Enter
Wait@90s /^\$\s*$/
Sleep 4s
