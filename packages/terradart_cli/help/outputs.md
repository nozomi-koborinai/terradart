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

The file is .terradart/dart_defines.json, or
.terradart/dart_defines.<env>.json with --env. --define-output <name> picks
one of several define outputs, --define-file <path> writes elsewhere, and
terradart.dart_defines in pubspec.yaml sets both for every run. .terradart/
gets its own .gitignore, so the file never reaches git. --dry-run prints the
file and its keys and writes nothing; --json lists the keys, never the
values.

Build with it:

  flutter run --dart-define-from-file=.terradart/dart_defines.stg.json
  flutter build web --dart-define-from-file=.terradart/dart_defines.stg.json

The generated reader (const <Stack>Outputs.fromDartDefine()) says how to get
the file when the app starts without it.

More: https://terradart.dev/docs/client-outputs/
