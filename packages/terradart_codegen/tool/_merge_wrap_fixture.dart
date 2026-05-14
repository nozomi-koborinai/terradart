// One-shot helper that merges `curated_full.schema.json` (12 resources) and
// `google_project_v7.schema.json` (1 data source) into the
// `test/fixtures/wrap/source/schema.json` input the wrap-command integration
// tests consume.
//
// Not invoked by tests at runtime — the merged JSON is checked in. Re-run
// with `dart run tool/_merge_wrap_fixture.dart` from
// `packages/terradart_codegen/` if either source fixture changes.
import 'dart:convert';
import 'dart:io';

void main() {
  const fixturesDir = 'test/fixtures/schema';
  final curated = jsonDecode(
    File('$fixturesDir/curated_full.schema.json').readAsStringSync(),
  ) as Map<String, Object?>;
  final googleProject = jsonDecode(
    File('$fixturesDir/google_project_v7.schema.json').readAsStringSync(),
  ) as Map<String, Object?>;

  const providerKey = 'registry.terraform.io/hashicorp/google';
  final curatedProvider =
      (curated['provider_schemas'] as Map)[providerKey] as Map<String, Object?>;
  final googleProjectProvider = (googleProject['provider_schemas']
      as Map)[providerKey] as Map<String, Object?>;

  final merged = <String, Object?>{
    'format_version': curated['format_version'] ?? '1.0',
    'provider_schemas': {
      providerKey: {
        if (curatedProvider['resource_schemas'] != null)
          'resource_schemas': curatedProvider['resource_schemas'],
        if (googleProjectProvider['data_source_schemas'] != null)
          'data_source_schemas': googleProjectProvider['data_source_schemas'],
      },
    },
  };

  const encoder = JsonEncoder.withIndent('  ');
  final out = File('test/fixtures/wrap/source/schema.json');
  out.parent.createSync(recursive: true);
  out.writeAsStringSync('${encoder.convert(merged)}\n');

  final providerBody =
      (merged['provider_schemas'] as Map)[providerKey] as Map<String, Object?>;
  final resCount = (providerBody['resource_schemas'] as Map?)?.length ?? 0;
  final dsCount = (providerBody['data_source_schemas'] as Map?)?.length ?? 0;
  stdout.writeln('Wrote ${out.path}');
  stdout.writeln('resources: $resCount, data sources: $dsCount');
}
