# Beat 4: the command that runs the app against staging, typed and not run:
# its define file comes from `terradart apply --env stg`, which the clip
# does not show.
Show
Sleep 500ms
Type "flutter run --dart-define-from-file=infra/.terradart/dart_defines.stg.json"
Sleep 1.5s
