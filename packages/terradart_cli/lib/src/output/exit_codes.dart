/// The exit codes of the `terradart` command and the `error.code` its
/// `--json` result names them by.
///
/// A public API: a change goes in the CHANGELOG and `MIGRATING.md`. 0 is
/// success and 2 is `plan --detailed-exitcode` with changes ([exitChanges]);
/// every other code is a failure listed here.
enum ExitCode {
  /// An unexpected failure.
  internal(1, 'internal'),

  /// The command needs an answer and nobody can give one (no terminal,
  /// `--no-input`, `--json`): `--auto-approve` or another flag decides.
  inputRequired(3, 'input_required'),

  /// `skill status --check`: the skill is missing, older, or edited.
  skillDrift(4, 'skill_drift'),

  /// `skill update` kept a file with local edits.
  localEdits(5, 'local_edits'),

  /// The entry point exited non-zero.
  synthFailed(10, 'synth_failed'),

  /// No engine to run: none on `PATH` for the setting, or the OpenTofu
  /// download or its SHA-256 check failed.
  engineUnavailable(11, 'engine_unavailable'),

  /// `init`, `plan`, `apply` or another engine step failed; its own code is
  /// [CliException.engineExitCode].
  engineFailed(12, 'engine_failed'),

  /// A usage error: an unknown flag, a malformed value.
  usage(64, 'usage'),

  /// A flag the command needs, with nothing to default it from.
  missingFlag(64, 'missing_flag'),

  /// The `terradart:` section of `pubspec.yaml`, or what the Stack declares,
  /// does not fit the command (an environment it does not declare).
  projectConfig(65, 'project_config'),

  /// No `pubspec.yaml` in the directory or above it.
  noProject(66, 'no_project');

  const ExitCode(this.code, this.error);

  /// The process exit code.
  final int code;

  /// `error.code` in the `--json` result.
  final String error;
}

/// `plan --detailed-exitcode` with changes: a success, as Terraform's.
const exitChanges = 2;
