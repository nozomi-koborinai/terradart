// tool/batch_wrap_init.dart
//
// Maintainer helper: run `terradart wrap-init` for multiple Terraform types.
//
// Usage (explicit list):
//   dart tool/batch_wrap_init.dart \
//     --resources=google_container_cluster,google_container_node_pool
//
// Usage (schema prefix filter — types without an override yaml yet):
//   dart tool/batch_wrap_init.dart --prefix=google_container_
//
// Options:
//   --resources   comma-separated terraform type names
//   --prefix      scaffold every schema resource matching this prefix that
//                 lacks an override yaml (mutually exclusive with --resources)
//   --source      wrap fixture dir (default: packages/terradart_codegen/...)
//   --output      override yaml dir (default: packages/terradart_codegen/...)
//   --force       overwrite existing override yaml files
//   --dry-run     print planned commands without running wrap-init
//
// Output (stdout, JSON):
//   { "created": [...], "skipped": [...], "failed": [...] }
//
// Exit codes:
//   0 success (with or without skipped)
//   64 usage error
//   65 no resources resolved
//   66 one or more wrap-init failures

import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';

const _exitUsage = 64;
const _exitNoResources = 65;
const _exitFailed = 66;

const _defaultSource = 'packages/terradart_codegen/test/fixtures/wrap/source';
const _defaultOutput =
    'packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml';

Future<void> main(List<String> args) async {
  final parsed = parseArgs(args);
  if (parsed == null) {
    stderr.writeln(
      'Usage: dart tool/batch_wrap_init.dart '
      '--resources=<r1,r2,...> | --prefix=<google_foo_> '
      '[--source=DIR] [--output=DIR] [--force] [--dry-run]',
    );
    exit(_exitUsage);
  }

  final repoRoot = Directory.current.path;
  final sourceDir = pJoin(repoRoot, parsed.source);
  final outputDir = pJoin(repoRoot, parsed.output);
  final schemaFile = File(pJoin(sourceDir, 'schema.json'));
  if (!schemaFile.existsSync()) {
    stderr.writeln('schema.json not found: ${schemaFile.path}');
    exit(_exitUsage);
  }

  final resources = resolveResources(
    explicit: parsed.resources,
    prefix: parsed.prefix,
    schemaFile: schemaFile,
    outputDir: outputDir,
  );
  if (resources.isEmpty) {
    stderr.writeln('No resources to scaffold.');
    exit(_exitNoResources);
  }

  final created = <String>[];
  final skipped = <String>[];
  final failed = <Map<String, String>>[];

  for (final resource in resources) {
    final outFile = File(pJoin(outputDir, '$resource.yaml'));
    if (outFile.existsSync() && !parsed.force) {
      skipped.add(resource);
      continue;
    }

    final cmd = [
      'run',
      'bin/terradart.dart',
      'wrap-init',
      resource,
      '--source',
      sourceDir,
      '--output',
      outputDir,
      if (parsed.force) '--force',
    ];

    if (parsed.dryRun) {
      stderr.writeln(
        '[dry-run] (cd packages/terradart_codegen && dart ${cmd.join(' ')})',
      );
      created.add(resource);
      continue;
    }

    final result = await Process.run(
      'dart',
      cmd,
      workingDirectory: pJoin(repoRoot, 'packages/terradart_codegen'),
    );
    if (result.exitCode == 0) {
      created.add(resource);
    } else {
      failed.add({
        'resource': resource,
        'reason': (result.stderr as String).trim().isEmpty
            ? 'exit ${result.exitCode}'
            : (result.stderr as String).trim().split('\n').last,
      });
    }
  }

  stdout.writeln(
    jsonEncode({
      'created': created,
      'skipped': skipped,
      'failed': failed,
    }),
  );

  if (failed.isNotEmpty) {
    exit(_exitFailed);
  }
}

@visibleForTesting
class BatchWrapInitArgs {
  BatchWrapInitArgs({
    required this.resources,
    required this.prefix,
    required this.source,
    required this.output,
    required this.force,
    required this.dryRun,
  });

  final List<String>? resources;
  final String? prefix;
  final String source;
  final String output;
  final bool force;
  final bool dryRun;
}

@visibleForTesting
BatchWrapInitArgs? parseArgs(List<String> args) {
  List<String>? resources;
  String? prefix;
  var source = _defaultSource;
  var output = _defaultOutput;
  var force = false;
  var dryRun = false;

  for (final a in args) {
    if (a.startsWith('--resources=')) {
      final raw = a.substring('--resources='.length).trim();
      resources = raw
          .split(',')
          .map((s) => s.trim())
          .where((s) => s.isNotEmpty)
          .toList();
    } else if (a.startsWith('--prefix=')) {
      prefix = a.substring('--prefix='.length).trim();
    } else if (a.startsWith('--source=')) {
      source = a.substring('--source='.length);
    } else if (a.startsWith('--output=')) {
      output = a.substring('--output='.length);
    } else if (a == '--force') {
      force = true;
    } else if (a == '--dry-run') {
      dryRun = true;
    } else {
      stderr.writeln('Unknown argument: $a');
      return null;
    }
  }

  final hasResources = resources != null && resources.isNotEmpty;
  final hasPrefix = prefix != null && prefix.isNotEmpty;
  if (hasResources == hasPrefix) {
    stderr.writeln('Specify exactly one of --resources or --prefix.');
    return null;
  }

  return BatchWrapInitArgs(
    resources: hasResources ? resources : null,
    prefix: hasPrefix ? prefix : null,
    source: source,
    output: output,
    force: force,
    dryRun: dryRun,
  );
}

@visibleForTesting
List<String> resolveResources({
  required List<String>? explicit,
  required String? prefix,
  required File schemaFile,
  required String outputDir,
}) {
  if (explicit != null) {
    return List<String>.from(explicit)..sort();
  }

  final schema =
      jsonDecode(schemaFile.readAsStringSync()) as Map<String, dynamic>;
  final provider = schema['provider_schemas'] as Map<String, dynamic>;
  final google = provider['registry.terraform.io/hashicorp/google']
      as Map<String, dynamic>;
  final resourceSchemas =
      (google['resource_schemas'] as Map<String, dynamic>).keys.cast<String>();

  final matches = resourceSchemas.where((k) => k.startsWith(prefix!)).toList()
    ..sort();

  return [
    for (final name in matches)
      if (!File(pJoin(outputDir, '$name.yaml')).existsSync()) name,
  ];
}

String pJoin(String part1, [String? part2, String? part3]) {
  if (part3 != null) {
    return pJoin(pJoin(part1, part2!), part3);
  }
  if (part2 != null) {
    return '$part1${Platform.pathSeparator}$part2';
  }
  return part1;
}
