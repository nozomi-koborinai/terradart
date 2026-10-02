/// The `terradart` command: synthesize a TerraDart Stack, plan and apply it
/// with OpenTofu or Terraform, and write its outputs as the
/// `--dart-define-from-file` JSON a Flutter or Dart client builds with.
///
/// Run it as `dart run terradart_cli:terradart <command>` from a project
/// that lists `terradart_cli` in `dev_dependencies`, or as
/// `terradart <command>` after `dart pub global activate terradart_cli`.
library;

export 'src/cli.dart' show runTerradart;
export 'src/opentofu.dart' show kOpenTofuVersion;
export 'src/process_runner.dart'
    show CapturedProcess, IoProcessRunner, ProcessRunner;
export 'src/workflow.dart' show Console;
