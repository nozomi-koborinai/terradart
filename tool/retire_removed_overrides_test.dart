import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'retire_removed_overrides.dart';

void main() {
  late Directory root;

  setUp(() => root = Directory.systemTemp.createTempSync('retire_'));
  tearDown(() => root.deleteSync(recursive: true));

  String schema(List<String> resources, List<String> dataSources) =>
      '{"provider_schemas":{"registry.terraform.io/x/x":{'
      '"resource_schemas":{${resources.map((t) => '"$t":{}').join(',')}},'
      '"data_source_schemas":{${dataSources.map((t) => '"$t":{}').join(',')}}'
      '}}}';

  void put(String path, String text) => File(p.join(root.path, path))
    ..createSync(recursive: true)
    ..writeAsStringSync(text);

  const barrels = '''
umbrellaFile: terradart_x
umbrellaDoc: |-
  /// Umbrella.
barrels:
  data:
    doc: |-
      /// Data sources.
  registrar:
    doc: |-
      /// Registrar domains.
  zone:
    doc: |-
      /// Zones.
dataSourceBarrels:
  cloudflare_registrar_domain: registrar
  cloudflare_zone: zone
''';

  test('deletes overrides the schema dropped and the barrel they owned', () {
    put('schema.json', schema(['cloudflare_zone'], ['cloudflare_zone']));
    put('overrides/cloudflare_zone.yaml', 'outputDir: zone\n');
    put('overrides/cloudflare_registrar_domain.yaml', 'outputDir: registrar\n');
    put(
      'overrides/data_cloudflare_registrar_domain.yaml',
      'kind: data_source\noutputDir: data\n',
    );
    put(
      'overrides/data_cloudflare_zone.yaml',
      'kind: data_source\noutputDir: data\n',
    );
    put('barrels.yaml', barrels);
    put('hints/cloudflare_registrar_domain.yaml', 'provider_version: "1"\n');
    put('hints/cloudflare_zone.yaml', 'provider_version: "1"\n');

    final retired = retireRemovedOverrides(
      schemaPath: p.join(root.path, 'schema.json'),
      overridesRoot: p.join(root.path, 'overrides'),
      barrelsManifest: p.join(root.path, 'barrels.yaml'),
    );

    expect(retired.resources, ['cloudflare_registrar_domain']);
    expect(retired.dataSources, ['cloudflare_registrar_domain']);
    expect(retired.barrels, ['registrar']);
    expect(retired.hints, ['cloudflare_registrar_domain.yaml']);
    expect(
      File(
        p.join(root.path, 'overrides/cloudflare_registrar_domain.yaml'),
      ).existsSync(),
      isFalse,
    );
    expect(
      File(
        p.join(root.path, 'overrides/data_cloudflare_registrar_domain.yaml'),
      ).existsSync(),
      isFalse,
    );
    expect(
      File(
        p.join(root.path, 'overrides/cloudflare_zone.yaml'),
      ).readAsStringSync(),
      'outputDir: zone\n',
    );
    expect(
      File(p.join(root.path, 'hints/cloudflare_zone.yaml')).existsSync(),
      isTrue,
    );
    expect(File(p.join(root.path, 'barrels.yaml')).readAsStringSync(), '''
umbrellaFile: terradart_x
umbrellaDoc: |-
  /// Umbrella.
barrels:
  data:
    doc: |-
      /// Data sources.
  zone:
    doc: |-
      /// Zones.
dataSourceBarrels:
  cloudflare_zone: zone
''');
  });

  test('deletes only the hint file of the kind the schema dropped', () {
    put(
      'schema.json',
      schema(['cloudflare_registrar_domain'], ['cloudflare_zone']),
    );
    put('overrides/cloudflare_zone.yaml', 'outputDir: zone\n');
    put(
      'overrides/data_cloudflare_zone.yaml',
      'kind: data_source\noutputDir: data\n',
    );
    put('overrides/cloudflare_registrar_domain.yaml', 'outputDir: registrar\n');
    put(
      'overrides/data_cloudflare_registrar_domain.yaml',
      'kind: data_source\noutputDir: data\n',
    );
    put('barrels.yaml', barrels);
    for (final hint in [
      'hints/cloudflare_zone.yaml',
      'hints/data/cloudflare_zone.yaml',
      'hints/cloudflare_registrar_domain.yaml',
      'hints/data/cloudflare_registrar_domain.yaml',
    ]) {
      put(hint, 'provider_version: "1"\n');
    }

    final retired = retireRemovedOverrides(
      schemaPath: p.join(root.path, 'schema.json'),
      overridesRoot: p.join(root.path, 'overrides'),
      barrelsManifest: p.join(root.path, 'barrels.yaml'),
    );

    expect(retired.resources, ['cloudflare_zone']);
    expect(retired.dataSources, ['cloudflare_registrar_domain']);
    expect(retired.hints, [
      'cloudflare_zone.yaml',
      'data/cloudflare_registrar_domain.yaml',
    ]);
    bool exists(String path) => File(p.join(root.path, path)).existsSync();
    expect(exists('hints/cloudflare_zone.yaml'), isFalse);
    expect(exists('hints/data/cloudflare_zone.yaml'), isTrue);
    expect(exists('hints/cloudflare_registrar_domain.yaml'), isTrue);
    expect(exists('hints/data/cloudflare_registrar_domain.yaml'), isFalse);
  });

  test('keeps a barrel an authored data source still names', () {
    put(
      'schema.json',
      schema(['cloudflare_zone'], ['cloudflare_zone', 'cloudflare_zones']),
    );
    put('overrides/cloudflare_zone.yaml', 'outputDir: zone\n');
    put('overrides/cloudflare_registrar_domain.yaml', 'outputDir: registrar\n');
    put(
      'overrides/data_cloudflare_zones.yaml',
      'kind: data_source\noutputDir: data\n',
    );
    put('barrels.yaml', '''
umbrellaFile: terradart_x
umbrellaDoc: |-
  /// Umbrella.
barrels:
  data:
    doc: |-
      /// Data sources.
  registrar:
    doc: |-
      /// Registrar domains.
  zone:
    doc: |-
      /// Zones.
dataSourceBarrels:
  cloudflare_zones: registrar
''');

    final retired = retireRemovedOverrides(
      schemaPath: p.join(root.path, 'schema.json'),
      overridesRoot: p.join(root.path, 'overrides'),
      barrelsManifest: p.join(root.path, 'barrels.yaml'),
    );

    expect(retired.resources, ['cloudflare_registrar_domain']);
    expect(retired.barrels, isEmpty);
    expect(
      File(p.join(root.path, 'barrels.yaml')).readAsStringSync(),
      contains('  registrar:\n'),
    );
    expect(
      File(p.join(root.path, 'barrels.yaml')).readAsStringSync(),
      contains('  cloudflare_zones: registrar\n'),
    );
  });

  test('leaves a schema that still has the type untouched', () {
    put(
      'schema.json',
      schema(['cloudflare_registrar_domain'], ['cloudflare_registrar_domain']),
    );
    put('overrides/cloudflare_registrar_domain.yaml', 'outputDir: registrar\n');
    put(
      'overrides/data_cloudflare_registrar_domain.yaml',
      'kind: data_source\noutputDir: data\n',
    );
    put('barrels.yaml', barrels);
    put('hints/cloudflare_registrar_domain.yaml', 'provider_version: "1"\n');

    final retired = retireRemovedOverrides(
      schemaPath: p.join(root.path, 'schema.json'),
      overridesRoot: p.join(root.path, 'overrides'),
      barrelsManifest: p.join(root.path, 'barrels.yaml'),
    );

    expect(retired.isEmpty, isTrue);
    expect(
      File(
        p.join(root.path, 'overrides/cloudflare_registrar_domain.yaml'),
      ).readAsStringSync(),
      'outputDir: registrar\n',
    );
    expect(File(p.join(root.path, 'barrels.yaml')).readAsStringSync(), barrels);
  });
}
