Terraform outputs, and the define file a Flutter or Dart client builds with.

addOutput declares a Terraform output. addDartDefineOutput() declares one
more, a map of strings, that terradart writes as the JSON
--dart-define-from-file reads:

  addOutput('api_url', .literal(url));
  addDartDefineOutput();

terradart apply writes it after the apply; terradart outputs writes it from
the applied state without planning or applying (a client build job that can
read the state but not change it):

  terradart apply --env stg
  terradart outputs --env stg
  terradart outputs --env stg --dry-run

The file is .terradart/dart_defines.json. When the command runs an
environment, its name goes before .json (.terradart/dart_defines.stg.json),
whether --env, $TERRADART_ENV, defaultEnv or the only member chose it;
without one, a --workspace name does the same. --define-output <name> picks
one of several define outputs, and terradart.dart_defines in pubspec.yaml
sets the output and the file for every run (the name goes into that file
too). --define-file <path> writes to <path> exactly. .terradart/
gets its own .gitignore, so the file never reaches git. --dry-run prints the
file and its keys and writes nothing; --json lists the keys, never the
values.

Build with it:

  flutter run --dart-define-from-file=.terradart/dart_defines.stg.json
  flutter build web --dart-define-from-file=.terradart/dart_defines.stg.json

The generated reader (const <Stack>Outputs.fromDartDefine()) says how to get
the file when the app starts without it.

More: https://terradart.dev/docs/client-outputs/
