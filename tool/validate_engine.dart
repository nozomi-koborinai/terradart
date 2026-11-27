// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

const kNotOnOpenTofuRegistry = {
  // 404 on registry.opentofu.org/v1/providers/appwrite/appwrite/versions.
  'appwrite/appwrite',
};

const kValidateLeg = <List<String>>[
  ['fmt', '-check'],
  ['init', '-backend=false', '-input=false'],
  ['validate'],
];

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
