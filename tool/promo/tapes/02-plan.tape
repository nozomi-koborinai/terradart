# Beat 3: no engine on PATH, then validate and plan through the managed OpenTofu.
Show
Sleep 600ms
Type "terraform version"
Sleep 300ms
Enter
Sleep 1.6s
Type "terradart validate"
Sleep 400ms
Enter
Wait@120s /^\$\s*$/
Sleep 2s
Hide
Type "clear"
Enter
Sleep 300ms
Show
Sleep 400ms
Type "terradart plan"
Sleep 400ms
Enter
Wait@120s /^\$\s*$/
Sleep 4s
