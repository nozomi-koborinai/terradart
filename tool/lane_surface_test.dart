import 'dart:io';

import 'package:test/test.dart';

import 'lane_surface.dart';
import 'render_coverage_page.dart';
import 'wrap_lanes.dart';

void main() {
  const fakeLane = '''
providers:
  fake:
    source: example/fake
    schemaDir: fixtures/fake
    outputPackage: packages/terradart_fake
    overridesRoot: overrides/fake
    barrelsManifest: barrels_fake.yaml
    migrateManifest: manifest/fake.g.dart
    typePrefix: fake_
    siteTitle: Fake
  plain:
    source: example/plain
    schemaDir: fixtures/plain
    outputPackage: packages/terradart_plain
    overridesRoot: overrides/plain
    barrelsManifest: barrels_plain.yaml
    migrateManifest: manifest/plain.g.dart
''';

  test('catalog paths follow the yaml entries', () {
    expect(laneCatalogPaths(parseWrapLanes(fakeLane)), [
      'packages/terradart_fake/lib/src/_catalog.g.dart',
      'packages/terradart_plain/lib/src/_catalog.g.dart',
    ]);
  });

  test('a coverage page follows siteTitle and the catalog text', () {
    const one = '''
providers:
  fake:
    source: example/fake
    schemaDir: fixtures/fake
    outputPackage: packages/terradart_fake
    overridesRoot: overrides/fake
    barrelsManifest: barrels_fake.yaml
    migrateManifest: manifest/fake.g.dart
    typePrefix: fake_
    siteTitle: Fake
''';
    final pages = coverageProviders(parseWrapLanes(one), (path) {
      expect(path, 'packages/terradart_fake/lib/src/_catalog.g.dart');
      return '''
CatalogEntry(
  tfType: 'fake_widget',
  className: 'FakeWidget',
  barrel: 'widget',
  kind: CatalogKind.resource,
)
''';
    });
    expect(pages, hasLength(1));
    expect(pages.single.slug, 'fake');
    expect(pages.single.title, 'Fake');
    expect(pages.single.source, 'example/fake');
    expect(pages.single.catalog.single.className, 'FakeWidget');
  });

  test('a lane without siteTitle is not rendered', () {
    const yaml = '''
providers:
  bare:
    source: example/bare
    schemaDir: fixtures/bare
    outputPackage: packages/terradart_bare
    overridesRoot: overrides/bare
    barrelsManifest: barrels_bare.yaml
    migrateManifest: manifest/bare.g.dart
''';
    expect(
      () => coverageProviders(parseWrapLanes(yaml), (_) => ''),
      throwsStateError,
    );
  });

  test('exact-pin discovery follows an alias of the generated pin', () {
    final root = Directory.systemTemp.createTempSync('lane-pin');
    addTearDown(() => root.deleteSync(recursive: true));
    final provider = File(
      '${root.path}/packages/terradart_fake/lib/src/fake_provider.dart',
    );
    provider.parent.createSync(recursive: true);
    provider.writeAsStringSync(
      'const String kFakeProviderVersionConstraint = terradartProviderVersion;\n',
    );
    Directory(
      '${root.path}/packages/terradart_plain/lib',
    ).createSync(recursive: true);
    final hits = discoverExactPins(parseWrapLanes(fakeLane), root: root.path);
    expect(hits.map((hit) => hit.package), ['terradart_fake']);
    expect(hits.single.pinConstant, 'kFakeProviderVersionConstraint');
    expect(hits.single.fixtureDir, 'fixtures/fake');
  });

  test('doc-snippet barrels follow the lane entry', () {
    final barrels = docSnippetBarrels(parseWrapLanes(fakeLane));
    expect(
      barrels,
      contains("import 'package:terradart_fake/terradart_fake.dart';"),
    );
    expect(
      barrels,
      contains("import 'package:terradart_plain/terradart_plain.dart';"),
    );
    expect(
      docSnippetPackages('''
workspace:
  - packages/terradart_core
  - packages/terradart_codegen
  - packages/terradart_cli
  - packages/terradart_fake
'''),
      ['terradart_core', 'terradart_fake'],
    );
  });

  test('workspace packages are the packages/ members, in order', () {
    const pubspec = '''
workspace:
  - packages/terradart_core
  - packages/terradart_fake
  - examples/fake_quickstart
  - packages/terradart_cli
''';
    expect(workspacePackageNames(pubspec), [
      'terradart_core',
      'terradart_fake',
      'terradart_cli',
    ]);
  });

  test(
    'the hook protects a prefix that exists only in providers.yaml',
    () async {
      final dir = Directory.systemTemp.createTempSync('lane-hook');
      addTearDown(() => dir.deleteSync(recursive: true));
      final yaml = File('${dir.path}/providers.yaml');
      yaml.writeAsStringSync('''
providers:
  fake:
    outputPackage: packages/terradart_fake
    typePrefix: fake_
''');
      Future<int> protect(String rel) async {
        final result = await Process.run('bash', [
          '-c',
          '''
        export HOOK_PROVIDERS_FILE=${yaml.path}
        source tool/hook_lib.sh
        hook_is_protected_write_path "\$1"
        ''',
          'bash',
          rel,
        ]);
        return result.exitCode;
      }

      expect(
        await protect(
          'packages/terradart_fake/lib/src/widget/fake_widget.dart',
        ),
        0,
      );
      expect(
        await protect('packages/terradart_fake/lib/src/_catalog.g.dart'),
        0,
      );
      expect(
        await protect('packages/terradart_fake/lib/src/fake_provider.dart'),
        1,
      );
      expect(
        await protect('packages/terradart_fake/lib/src/widget/note.dart'),
        1,
      );
    },
  );

  test('committed catalogs parse one entry per CatalogEntry', () {
    final lanes = parseWrapLanes(File(providersPath).readAsStringSync());
    for (final path in laneCatalogPaths(lanes)) {
      final text = File(path).readAsStringSync();
      final declared = RegExp(r'kind: CatalogKind\.').allMatches(text).length;
      final parsed = parseCatalogEntries(text);
      expect(parsed, hasLength(declared), reason: path);
      expect(parsed.map((e) => e.className).toSet(), hasLength(parsed.length));
    }
  });
}
