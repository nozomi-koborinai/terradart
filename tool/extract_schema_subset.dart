// tool/extract_schema_subset.dart
//
// Extracts a filtered provider-schema fixture containing ONLY the listed
// resource types (and, when requested, data sources) — the fixture
// strategy for demand-driven provider catalogs (google-beta first): the
// full google-beta schema is >9 MB and the beta catalog is curated on
// request, so the committed fixture stays exactly as small as the
// catalog. The GA google fixture stays full (its backlog detection needs
// every resource key); this tool is NOT for it.
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

/// Returns the data-source type names of an existing fixture: the union
/// of every provider's `data_source_schemas` keys, sorted. Empty is
/// allowed — resource-only fixtures are the historical default.
List<String> dataSourceNamesFromFixture(Map<String, dynamic> fixture) {
  final providerSchemas =
      (fixture['provider_schemas'] as Map?)?.cast<String, dynamic>() ??
          const {};
  final names = <String>{};
  for (final body in providerSchemas.values) {
    final dataSources = ((body as Map?)?['data_source_schemas'] as Map?)
        ?.cast<String, dynamic>();
    if (dataSources != null) names.addAll(dataSources.keys);
  }
  return names.toList()..sort();
}

/// Returns a schema JSON containing only [resources] (and optionally
/// [dataSources]) under `registry.terraform.io/<providerSource>`. Fails
/// closed: an absent provider key or absent requested type throws
/// [StateError] (a typo must never produce a silently-empty fixture).
/// `data_source_schemas` is omitted when [dataSources] is empty so
/// resource-only fixtures stay exactly as small as the catalog.
Map<String, dynamic> filterSchemaSubset(
  Map<String, dynamic> full, {
  required String providerSource,
  required List<String> resources,
  List<String> dataSources = const [],
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
  final allDataSources =
      (providerBody['data_source_schemas'] as Map?)?.cast<String, dynamic>() ??
          const {};
  final missingData =
      dataSources.where((d) => !allDataSources.containsKey(d)).toList();
  if (missingData.isNotEmpty) {
    throw StateError(
      'requested data source(s) absent from $providerKey: '
      '${missingData.join(', ')}',
    );
  }
  return {
    'format_version': full['format_version'],
    'provider_schemas': {
      providerKey: {
        'resource_schemas': {
          for (final r in resources) r: allResources[r],
        },
        if (dataSources.isNotEmpty)
          'data_source_schemas': {
            for (final d in dataSources) d: allDataSources[d],
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
  var dataSources = const <String>[];
  var allResources = false;
  var allDataSources = false;
  for (final a in args) {
    if (a.startsWith('--provider=')) {
      provider = a.substring('--provider='.length);
    } else if (a.startsWith('--version=')) {
      version = a.substring('--version='.length);
    } else if (a.startsWith('--resources=')) {
      resources = a.substring('--resources='.length).split(',');
    } else if (a.startsWith('--data-sources=')) {
      dataSources = a
          .substring('--data-sources='.length)
          .split(',')
          .where((s) => s.isNotEmpty)
          .toList();
    } else if (a.startsWith('--resources-from=')) {
      resourcesFrom = a.substring('--resources-from='.length);
    } else if (a.startsWith('--out=')) {
      out = a.substring('--out='.length);
    } else if (a.startsWith('--schema-json=')) {
      schemaJsonPath = a.substring('--schema-json='.length);
    } else if (a == '--all-resources') {
      allResources = true;
    } else if (a == '--all-data-sources') {
      allDataSources = true;
    } else {
      stderr.writeln('unknown argument: $a');
      exit(_exitUsage);
    }
  }
  if (resourcesFrom != null) {
    // Union: the fixture's current set is the base, --resources adds to it
    // (used by terradart-add-beta-resource to append a new type without a
    // baked-in name list).
    final fixture = jsonDecode(File(resourcesFrom).readAsStringSync())
        as Map<String, dynamic>;
    resources = {...resourceNamesFromFixture(fixture), ...resources}.toList()
      ..sort();
    dataSources = {
      ...dataSourceNamesFromFixture(fixture),
      ...dataSources,
    }.toList()
      ..sort();
  }
  if (provider == null || out == null || (!allResources && resources.isEmpty)) {
    stderr.writeln(
      'Usage: dart tool/extract_schema_subset.dart --provider=NS/NAME '
      '--version=X.Y.Z (--resources=a,b | --resources-from=FIXTURE.json '
      '| --all-resources) [--data-sources=a,b | --all-data-sources] '
      '--out=DIR [--schema-json=FILE]',
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

  final decoded = jsonDecode(rawSchema) as Map<String, dynamic>;
  if (allResources) {
    resources = resourceNamesFromFixture(decoded);
  }
  if (allDataSources) {
    dataSources = dataSourceNamesFromFixture(decoded);
  }
  if (resources.isEmpty) {
    stderr.writeln(
      'extract_schema_subset: no resources selected '
      '(pass --resources, --resources-from, or --all-resources).',
    );
    exit(_exitUsage);
  }

  final Map<String, dynamic> subset;
  try {
    subset = filterSchemaSubset(
      decoded,
      providerSource: provider,
      resources: resources,
      dataSources: dataSources,
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
To ADD a data source: `--data-sources=<type>` (combined with
`--resources-from` so the current resource set is kept).
To REMOVE one, pass an explicit `--resources=` / `--data-sources=` list
without it.

To extract the FULL catalog at this pin (filled-at-pin providers):
`--all-resources --all-data-sources` (optionally with `--schema-json=`
to reuse a dump).
''');
  print(
    'extract_schema_subset: wrote ${resources.length} resource(s)'
    '${dataSources.isEmpty ? '' : ' + ${dataSources.length} data source(s)'} '
    'to ${outDir.path}',
  );
}
