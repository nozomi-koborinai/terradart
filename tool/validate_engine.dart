// validate_engine.dart — the engine that validates an example's synth output.
//
// OpenTofu, the engine `terradart` gives users: `tofu` on PATH, else the
// release terradart_cli pins, downloaded and checksum-verified by
// `terradart engine --engine tofu`. A Stack that requires a provider the
// OpenTofu registry does not carry (kNotOnOpenTofuRegistry) validates with
// `terraform` until the provider is published there.
//
// Run from repo root:
//   dart tool/validate_engine.dart examples/<slug>/tf-out
// prints `<kind> <binary>` (`tofu /path/to/tofu`, or `terraform terraform`).
// tool/example_synth_gates.dart and the CI terraform_validate matrix both
// pick the engine here.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

/// Provider sources `registry.opentofu.org` does not serve, so `tofu init`
/// cannot install them. Remove an entry once
/// `https://registry.opentofu.org/v1/providers/<source>/versions` answers.
const kNotOnOpenTofuRegistry = {
  // 404 on registry.opentofu.org (2026-10-02); terradart_appwrite users on
  // OpenTofu hit the same init failure.
  'appwrite/appwrite',
};

/// The `required_providers` sources of [mainTfJson] that
/// [kNotOnOpenTofuRegistry] lists.
Set<String> providersNotOnOpenTofu(Map<String, dynamic> mainTfJson) {
  final terraform = mainTfJson['terraform'];
  final required = terraform is Map ? terraform['required_providers'] : null;
  if (required is! Map) return const {};
  return {
    for (final p in required.values)
      if (p is Map && p['source'] is String)
        if (_normalize(p['source'] as String) case final source
            when kNotOnOpenTofuRegistry.contains(source))
          source,
  };
}

String _normalize(String source) {
  final parts = source.toLowerCase().split('/');
  return parts.length == 3 ? '${parts[1]}/${parts[2]}' : parts.join('/');
}

/// The OpenTofu binary `terradart engine --engine tofu` resolves, or `null`
/// (with the reason on stderr) when it cannot.
Future<String?> resolveOpenTofu() async {
  final r = await Process.run(Platform.resolvedExecutable, [
    'run',
    'terradart_cli:terradart',
    'engine',
    '--engine',
    'tofu',
  ]);
  final last = (r.stdout as String).trim().split('\n').last.trim();
  if (r.exitCode == 0 && last.isNotEmpty) return last;
  stderr.writeln(
    'terradart engine --engine tofu failed (exit ${r.exitCode}): '
    '${(r.stderr as String).trim()}',
  );
  return null;
}

Future<void> main(List<String> args) async {
  if (args.length != 1) {
    stderr.writeln('usage: dart tool/validate_engine.dart <tf-out dir>');
    exit(64);
  }
  final main = File('${args.single}/main.tf.json');
  final json = jsonDecode(main.readAsStringSync()) as Map<String, dynamic>;
  final missing = providersNotOnOpenTofu(json);
  if (missing.isNotEmpty) {
    stderr.writeln(
      'validate_engine: ${missing.join(', ')} not on the OpenTofu registry; '
      'validating with terraform.',
    );
    print('terraform terraform');
    return;
  }
  final tofu = await resolveOpenTofu();
  if (tofu == null) exit(1);
  print('tofu $tofu');
}
