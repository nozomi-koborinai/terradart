import 'dart:convert';
import 'dart:io';

/// Minimal shape of a finished process: exit code plus captured output.
typedef ProcessResultLike = ({int exitCode, String stdout, String stderr});

/// Runs [executable] with [args] and returns its result. Injectable so the
/// directory strategy can be unit-tested without a real `terraform` binary.
typedef CommandRunner =
    Future<ProcessResultLike> Function(String executable, List<String> args);

Future<ProcessResultLike> _defaultRunner(
  String executable,
  List<String> args,
) async {
  final r = await Process.run(executable, args);
  return (
    exitCode: r.exitCode,
    stdout: r.stdout as String,
    stderr: r.stderr as String,
  );
}

/// Produces a decoded `terraform show -json` document for the Terraform working
/// directory [dir] by delegating to the `terraform` binary.
///
/// Terraform natively reads both `.tf` (HCL) and `.tf.json` configuration, so
/// callers never parse HCL themselves — that is the whole point of this mode.
///
/// Strategy:
///   1. `terraform -chdir=DIR show -json` — describe current state. Fast and
///      credential-free; used when the directory has already been applied.
///   2. Otherwise fall back to a plan: `terraform -chdir=DIR plan -out=TMP`
///      then `terraform -chdir=DIR show -json TMP`. This covers a configuration
///      that has never been applied (the common "evaluate before migrating"
///      case), without creating anything.
///
/// Throws [TerraformUnavailable] if the binary is missing, or [TerraformFailed]
/// (carrying terraform's own stderr) on any terraform error.
Future<Map<String, dynamic>> terraformShowJson(
  String dir, {
  CommandRunner runner = _defaultRunner,
}) async {
  final ProcessResultLike state;
  try {
    state = await runner('terraform', ['-chdir=$dir', 'show', '-json']);
  } on ProcessException catch (e) {
    throw TerraformUnavailable(e.message);
  }
  if (state.exitCode == 0) {
    final doc = _decodeIfHasResources(state.stdout);
    if (doc != null) return doc;
  }

  // No usable state — plan from scratch.
  final planFile = '${Directory.systemTemp.path}/terradart-coverage.tfplan.tmp';
  final plan = await runner('terraform', [
    '-chdir=$dir',
    'plan',
    '-out=$planFile',
    '-input=false',
    '-no-color',
  ]);
  if (plan.exitCode != 0) {
    throw TerraformFailed(
      'terraform plan failed in "$dir".\n'
      'Hint: run `terraform init` in that directory first, and make sure the '
      'configuration is valid and any required variables are set.\n'
      '${plan.stderr}',
    );
  }
  final shown = await runner('terraform', [
    '-chdir=$dir',
    'show',
    '-json',
    planFile,
  ]);
  try {
    File(planFile).deleteSync();
  } on FileSystemException {
    // Best effort; a leftover temp plan is harmless.
  }
  if (shown.exitCode != 0) {
    throw TerraformFailed('terraform show failed in "$dir".\n${shown.stderr}');
  }
  return jsonDecode(shown.stdout) as Map<String, dynamic>;
}

/// Decodes [raw] and returns it only if it carries at least one resource in
/// `values`/`planned_values`; otherwise null (so the caller can fall back to a
/// plan rather than reporting an empty config).
Map<String, dynamic>? _decodeIfHasResources(String raw) {
  if (raw.trim().isEmpty) return null;
  final Object? decoded;
  try {
    decoded = jsonDecode(raw);
  } on FormatException {
    return null;
  }
  if (decoded is! Map<String, dynamic>) return null;
  final root = decoded['values'] ?? decoded['planned_values'];
  if (root is! Map || root['root_module'] is! Map) return null;
  final rootModule = root['root_module'] as Map;
  final hasRoot = (rootModule['resources'] as List?)?.isNotEmpty ?? false;
  final hasChildren =
      (rootModule['child_modules'] as List?)?.isNotEmpty ?? false;
  return (hasRoot || hasChildren) ? decoded : null;
}

/// The `terraform` binary could not be executed (not installed / not on PATH).
class TerraformUnavailable implements Exception {
  TerraformUnavailable(this.details);
  final String details;
  @override
  String toString() =>
      'terraform binary not found on PATH. Install Terraform to use --dir '
      '(or pipe `terraform show -json` output instead).\n$details';
}

/// A terraform invocation exited non-zero; [message] includes terraform's own
/// stderr plus a hint.
class TerraformFailed implements Exception {
  TerraformFailed(this.message);
  final String message;
  @override
  String toString() => message;
}
