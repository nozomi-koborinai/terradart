// ignore_for_file: avoid_print
//
// Scaffolds thin wrap-init-style override YAMLs for every Cloudflare
// resource + data source in the 5.23.0 fixture, and prints the unique
// resource outputDir set so barrels_cloudflare.yaml can stay fail-closed.
//
// Does not overwrite cloudflare_zone.yaml / cloudflare_dns_record.yaml
// (those carry curatedDoc + paramOrder).
//
// Run from packages/terradart_codegen:
//   dart run tool/scaffold_cloudflare_overrides.dart

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/providers/cloudflare_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';

const _keep = {'cloudflare_zone.yaml', 'cloudflare_dns_record.yaml'};

void main() {
  const rules = CloudflareProviderRules();
  final resolver = OutputDirResolver(
    aliases: rules.outputDirAliases,
    typePrefix: rules.terraformTypePrefix,
  );

  final schemaPath = p.join(
    'test',
    'fixtures',
    'wrap',
    'source_cloudflare',
    'schema.json',
  );
  final schema =
      jsonDecode(File(schemaPath).readAsStringSync()) as Map<String, dynamic>;
  final provider =
      (schema['provider_schemas'] as Map).values.single as Map<String, dynamic>;
  final resources = (provider['resource_schemas'] as Map)
      .keys
      .cast<String>()
      .toList()
    ..sort();
  final dataSources = (provider['data_source_schemas'] as Map)
      .keys
      .cast<String>()
      .toList()
    ..sort();

  final outDir = p.join(
    'lib',
    'src',
    'codegen',
    'wrapper_overrides',
    'cloudflare',
    'yaml',
  );
  Directory(outDir).createSync(recursive: true);

  final barrels = <String>{};
  var wrote = 0;
  var skipped = 0;

  for (final type in resources) {
    final outputDir = resolver.resolve(
      terraformType: type,
      mmProduct: null,
      kind: WrapperOverrideKind.resource,
    );
    barrels.add(outputDir);
    final fileName = '$type.yaml';
    if (_keep.contains(fileName)) {
      skipped++;
      continue;
    }
    File(p.join(outDir, fileName)).writeAsStringSync(
      'outputDir: $outputDir\n'
      'deriveClassDoc: true\n'
      'deriveOutputGetters: true\n'
      'deriveNestedTypes: true\n',
    );
    wrote++;
  }

  for (final type in dataSources) {
    File(p.join(outDir, 'data_$type.yaml')).writeAsStringSync(
      'kind: data_source\n'
      'outputDir: data\n'
      'schemaStubBodyMode: bare\n'
      'deriveClassDoc: true\n'
      'deriveOutputGetters: true\n'
      'deriveNestedTypes: true\n',
    );
    wrote++;
  }

  final barrelList = barrels.toList()..sort();
  print('wrote $wrote yaml files, kept $_keep ($skipped skipped)');
  print('resources ${resources.length} data_sources ${dataSources.length}');
  print('resource barrels (${barrelList.length}):');
  for (final b in barrelList) {
    print('  $b');
  }
}
