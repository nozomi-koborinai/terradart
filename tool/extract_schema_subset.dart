// tool/extract_schema_subset.dart
//
// Extracts a filtered provider-schema fixture containing ONLY the listed
// resource types — the fixture strategy for demand-driven provider
// catalogs (google-beta first): the full google-beta schema is >9 MB and
// the beta catalog is curated on request, so the committed fixture stays
// exactly as small as the catalog. The GA google fixture stays full (its
// backlog detection needs every resource key); this tool is NOT for it.
//
// The committed output must never be hand-edited — always re-extract
// (the MM-fixture local patch that PR #595 clobbered is the cautionary
// tale). The exact command is recorded in the emitted README.md.
//
// Usage (repo root):
//   dart tool/extract_schema_subset.dart \
//     --provider=hashicorp/google-beta --version=7.44.0 \
//     --resources=google_project_service_identity[,google_x,...] \
//     --out=packages/terradart_codegen/test/fixtures/wrap/source_beta
//
//   --schema-json=<file>  read an existing `terraform providers schema
//                         -json` dump instead of running terraform
//                         (tests / offline use).
//
// Without --schema-json the tool pins the provider at --version in a temp
// dir and runs `terraform init` + `terraform providers schema -json` —
// the same mechanism schema-bump.yml uses. Network: terraform registry
// only; no cloud credentials, no GCP calls.
//
// Exit codes: 0 success, 64 usage error, 69 terraform/extraction failure.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

const _exitUsage = 64;
const _exitExtract = 69;

/// Returns a schema JSON containing only [resources] under
/// `registry.terraform.io/<providerSource>`. Fails closed: an absent
/// provider key or absent requested resource throws [StateError] (a typo
/// must never produce a silently-empty fixture). `data_source_schemas`
/// is omitted until a data source joins the subset contract.
Map<String, dynamic> filterSchemaSubset(
  Map<String, dynamic> full, {
  required String providerSource,
  required List<String> resources,
}) {
  final providerKey = 'registry.terraform.io/$providerSource';
  final providerSchemas =
      (full['provider_schemas'] as Map?)?.cast<String, dynamic>();
  final providerBody =
      (providerSchemas?[providerKey] as Map?)?.cast<String, dynamic>();
  if (providerBody == null) {
    throw StateError(
      'provider key $providerKey not found in schema '
      '(available: ${providerSchemas?.keys.join(', ') ?? 'none'})',
    );
  }
  final allResources =
      (providerBody['resource_schemas'] as Map?)?.cast<String, dynamic>() ??
          const {};
  final missing =
      resources.where((r) => !allResources.containsKey(r)).toList();
  if (missing.isNotEmpty) {
    throw StateError(
      'requested resource(s) absent from $providerKey: '
      '${missing.join(', ')}',
    );
  }
  return {
    'format_version': full['format_version'],
    'provider_schemas': {
      providerKey: {
        'resource_schemas': {
          for (final r in resources) r: allResources[r],
        },
      },
    },
  };
}

Future<void> main(List<String> args) async {
  String? provider;
  String? version;
  String? out;
  String? schemaJsonPath;
  var resources = const <String>[];
  for (final a in args) {
    if (a.startsWith('--provider=')) {
      provider = a.substring('--provider='.length);
    } else if (a.startsWith('--version=')) {
      version = a.substring('--version='.length);
    } else if (a.startsWith('--resources=')) {
      resources = a.substring('--resources='.length).split(',');
    } else if (a.startsWith('--out=')) {
      out = a.substring('--out='.length);
    } else if (a.startsWith('--schema-json=')) {
      schemaJsonPath = a.substring('--schema-json='.length);
    } else {
      stderr.writeln('unknown argument: $a');
      exit(_exitUsage);
    }
  }
  if (provider == null || out == null || resources.isEmpty) {
    stderr.writeln(
      'Usage: dart tool/extract_schema_subset.dart --provider=NS/NAME '
      '--version=X.Y.Z --resources=a,b --out=DIR [--schema-json=FILE]',
    );
    exit(_exitUsage);
  }
  if (schemaJsonPath == null && version == null) {
    stderr.writeln('--version is required unless --schema-json is given.');
    exit(_exitUsage);
  }

  String rawSchema;
  if (schemaJsonPath != null) {
    rawSchema = File(schemaJsonPath).readAsStringSync();
  } else {
    final tmp = Directory.systemTemp.createTempSync('extract_schema_');
    try {
      final name = provider.split('/').last;
      File('${tmp.path}/main.tf').writeAsStringSync('''
terraform {
  required_providers {
    $name = {
      source  = "$provider"
      version = "= $version"
    }
  }
}
''');
      final init = Process.runSync(
        'terraform',
        ['init', '-no-color'],
        workingDirectory: tmp.path,
      );
      if (init.exitCode != 0) {
        stderr.writeln('terraform init failed:\n${init.stderr}');
        exit(_exitExtract);
      }
      final dump = Process.runSync(
        'terraform',
        ['providers', 'schema', '-json'],
        workingDirectory: tmp.path,
      );
      if (dump.exitCode != 0) {
        stderr.writeln('terraform providers schema failed:\n${dump.stderr}');
        exit(_exitExtract);
      }
      rawSchema = dump.stdout as String;
    } finally {
      tmp.deleteSync(recursive: true);
    }
  }

  final Map<String, dynamic> subset;
  try {
    subset = filterSchemaSubset(
      jsonDecode(rawSchema) as Map<String, dynamic>,
      providerSource: provider,
      resources: resources,
    );
  } on StateError catch (e) {
    stderr.writeln('extract_schema_subset: ${e.message}');
    exit(_exitExtract);
  }

  final outDir = Directory(out)..createSync(recursive: true);
  File('${outDir.path}/schema.json')
      .writeAsStringSync('${jsonEncode(subset)}\n');
  if (version != null) {
    File('${outDir.path}/provider_version.txt').writeAsStringSync('$version\n');
  }
  final sortedResources = [...resources]..sort();
  File('${outDir.path}/README.md').writeAsStringSync('''
# Filtered schema fixture — $provider

Machine-extracted subset containing ONLY the curated resources below.
Never hand-edit; re-extract with:

```bash
dart tool/extract_schema_subset.dart \\
  --provider=$provider --version=${version ?? '<X.Y.Z>'} \\
  --resources=${sortedResources.join(',')} \\
  --out=${out.replaceAll(r'\', '/')}
```

Resources:
${sortedResources.map((r) => '- `$r`').join('\n')}
''');
  print(
    'extract_schema_subset: wrote ${resources.length} resource(s) to '
    '${outDir.path}',
  );
}
