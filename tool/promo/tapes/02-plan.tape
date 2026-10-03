# Beat 3: no engine on PATH, then validate and plan through the managed OpenTofu.
# The pauses leave each result on screen long enough to read along.
Show
Sleep 1s
Type "terraform version"
Sleep 500ms
Enter
Sleep 3s
Type "terradart validate"
Sleep 600ms
Enter
Wait@120s /^\$\s*$/
Sleep 3s
Hide
Type "clear"
Enter
Sleep 300ms
Show
Sleep 800ms
Type "terradart plan --env stg"
Sleep 600ms
Enter
Wait@120s /^\$\s*$/
Sleep 6s
