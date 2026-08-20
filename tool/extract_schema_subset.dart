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
//   --resources-from=<schema.json>  read the resource set from an existing
//                         fixture (its resource_schemas keys). May be
//                         combined with --resources= — the union is
//                         extracted (how terradart-add-beta-resource
//                         appends a type without a baked-in name list;
//                         the weekly schema bump passes it alone to
//                         re-extract the same set at the new version).
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

/// Returns the resource type names of an existing (filtered) fixture: the
/// union of every provider's `resource_schemas` keys, sorted. Fails closed
/// on an empty result — re-extracting an empty set must never silently
/// produce an empty fixture.
List<String> resourceNamesFromFixture(Map<String, dynamic> fixture) {
  final providerSchemas =
      (fixture['provider_schemas'] as Map?)?.cast<String, dynamic>() ??
          const {};
  final names = <String>{};
  for (final body in providerSchemas.values) {
    final resources =
        ((body as Map?)?['resource_schemas'] as Map?)?.cast<String, dynamic>();
    if (resources != null) names.addAll(resources.keys);
  }
  if (names.isEmpty) {
    throw StateError('no resource_schemas found in the fixture');
  }
  return names.toList()..sort();
}

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
  final missing = resources.where((r) => !allResources.containsKey(r)).toList();
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
  String? resourcesFrom;
  var resources = const <String>[];
  for (final a in args) {
    if (a.startsWith('--provider=')) {
      provider = a.substring('--provider='.length);
    } else if (a.startsWith('--version=')) {
      version = a.substring('--version='.length);
    } else if (a.startsWith('--resources=')) {
      resources = a.substring('--resources='.length).split(',');
    } else if (a.startsWith('--resources-from=')) {
      resourcesFrom = a.substring('--resources-from='.length);
    } else if (a.startsWith('--out=')) {
      out = a.substring('--out='.length);
    } else if (a.startsWith('--schema-json=')) {
      schemaJsonPath = a.substring('--schema-json='.length);
    } else {
      stderr.writeln('unknown argument: $a');
      exit(_exitUsage);
    }
  }
  if (resourcesFrom != null) {
    // Union: the fixture's current set is the base, --resources adds to it
    // (used by terradart-add-beta-resource to append a new type without a
    // baked-in name list).
    final base = resourceNamesFromFixture(
      jsonDecode(File(resourcesFrom).readAsStringSync())
          as Map<String, dynamic>,
    );
    resources = {...base, ...resources}.toList()..sort();
  }
  if (provider == null || out == null || resources.isEmpty) {
    stderr.writeln(
      'Usage: dart tool/extract_schema_subset.dart --provider=NS/NAME '
      '--version=X.Y.Z (--resources=a,b | --resources-from=FIXTURE.json '
      '| both) --out=DIR [--schema-json=FILE]',
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
    // dart:io's exit() skips finally blocks, so failures are collected and
    // exit happens only AFTER the temp-dir cleanup below.
    String? failure;
    var raw = '';
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
      // Terraform emits UTF-8; the default systemEncoding is not UTF-8
      // everywhere (Windows), and a mis-decoded description would land
      // silently in the committed fixture.
      final init = Process.runSync(
        'terraform',
        ['init', '-no-color'],
        workingDirectory: tmp.path,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (init.exitCode != 0) {
        failure = 'terraform init failed:\n${init.stderr}';
      } else {
        final dump = Process.runSync(
          'terraform',
          ['providers', 'schema', '-json'],
          workingDirectory: tmp.path,
          stdoutEncoding: utf8,
          stderrEncoding: utf8,
        );
        if (dump.exitCode != 0) {
          failure = 'terraform providers schema failed:\n${dump.stderr}';
        } else {
          raw = dump.stdout as String;
        }
      }
    } finally {
      tmp.deleteSync(recursive: true);
    }
    if (failure != null) {
      stderr.writeln(failure);
      exit(_exitExtract);
    }
    rawSchema = raw;
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
  final fixtureDir = out.replaceAll(r'\', '/');
  File('${outDir.path}/README.md').writeAsStringSync('''
# Filtered schema fixture — $provider

Machine-extracted subset containing ONLY the curated resources. The keys of
`schema.json` are the single source of truth for the set, and
`provider_version.txt` records the extraction version. Never hand-edit
either file. Re-extract the SAME set at the pinned version with:

```bash
dart tool/extract_schema_subset.dart \\
  --provider=$provider \\
  --version="\$(cat $fixtureDir/provider_version.txt)" \\
  --resources-from=$fixtureDir/schema.json \\
  --out=$fixtureDir
```

To ADD a resource, append it via union:
`--resources-from=$fixtureDir/schema.json --resources=<new_type>`.
To REMOVE one, pass an explicit `--resources=` list without it.
''');
  print(
    'extract_schema_subset: wrote ${resources.length} resource(s) to '
    '${outDir.path}',
  );
}
