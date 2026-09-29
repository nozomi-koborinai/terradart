import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/cli/lint_override_command.dart';
import 'package:test/test.dart';

import 'wrap_lanes.dart';

void main() {
  group('WrapGate.args over the committed providers.yaml', () {
    final lanes = {
      for (final lane in parseWrapLanes(File(providersPath).readAsStringSync()))
        lane.name: lane,
    };

    String wrap(String lane) => WrapGate.wrap.args(lanes[lane]!).join(' ');
    String lint(String lane) => WrapGate.lint.args(lanes[lane]!).join(' ');

    test('declares the five lanes in order', () {
      expect(
        lanes.keys,
        equals(['google', 'google-beta', 'appwrite', 'cloudflare', 'aws']),
      );
    });

    test('google wrap passes the default registry and barrels explicitly', () {
      expect(
        wrap('google'),
        'wrap --provider hashicorp/google '
        '--source test/fixtures/wrap/source '
        '--output ../terradart_google/lib/src '
        '--overrides-root lib/src/codegen/wrapper_overrides/yaml '
        '--barrels-manifest lib/src/codegen/barrels/barrels.yaml '
        '--migrate-manifest ../terradart_migrate/lib/src/manifest/google.g.dart '
        '--check',
      );
    });

    test('google-beta wrap pins the provider meta-argument', () {
      expect(
        wrap('google-beta'),
        'wrap --provider hashicorp/google-beta '
        '--source test/fixtures/wrap/source_beta '
        '--output ../terradart_google_beta/lib/src '
        '--overrides-root lib/src/codegen/wrapper_overrides/google_beta/yaml '
        '--barrels-manifest lib/src/codegen/barrels/barrels_google_beta.yaml '
        '--resource-provider google-beta '
        '--mm-hints '
        '--migrate-manifest '
        '../terradart_migrate/lib/src/manifest/google_beta.g.dart '
        '--check',
      );
    });

    test('regen is the same wrap without --check', () {
      for (final lane in lanes.keys) {
        expect(
          '${WrapGate.regen.args(lanes[lane]!).join(' ')} --check',
          wrap(lane),
        );
      }
    });

    test('cloudflare wrap omits --resource-provider, types provider enums', () {
      expect(
        wrap('cloudflare'),
        'wrap --provider cloudflare/cloudflare '
        '--source test/fixtures/wrap/source_cloudflare '
        '--output ../terradart_cloudflare/lib/src '
        '--overrides-root lib/src/codegen/wrapper_overrides/cloudflare/yaml '
        '--barrels-manifest lib/src/codegen/barrels/barrels_cloudflare.yaml '
        '--provider-enums '
        '--migrate-manifest '
        '../terradart_migrate/lib/src/manifest/cloudflare.g.dart '
        '--check',
      );
    });

    test('aws wrap omits --resource-provider, types provider enums', () {
      expect(
        wrap('aws'),
        'wrap --provider hashicorp/aws '
        '--source test/fixtures/wrap/source_aws '
        '--output ../terradart_aws/lib/src '
        '--overrides-root lib/src/codegen/wrapper_overrides/aws/yaml '
        '--barrels-manifest lib/src/codegen/barrels/barrels_aws.yaml '
        '--provider-enums '
        '--migrate-manifest ../terradart_migrate/lib/src/manifest/aws.g.dart '
        '--check',
      );
    });

    test('lint reads MM YAML from <schemaDir>/mm like wrap does', () {
      expect(
        lint('google'),
        'lint-override --dir lib/src/codegen/wrapper_overrides/yaml '
        '--mm-dir test/fixtures/wrap/source/mm',
      );
      expect(
        lint('appwrite'),
        'lint-override --dir lib/src/codegen/wrapper_overrides/appwrite/yaml '
        '--mm-dir test/fixtures/wrap/source_appwrite/mm',
      );
    });
  });

  group('parseWrapLanes', () {
    test('names the lane and the missing field', () {
      expect(
        () => parseWrapLanes('''
providers:
  aws:
    source: hashicorp/aws
    schemaDir: packages/terradart_codegen/test/fixtures/wrap/source_aws
'''),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'lane aws: missing outputPackage',
          ),
        ),
      );
    });

    test('rejects a file without providers', () {
      expect(
        () => parseWrapLanes('lanes: {}'),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'tool/providers.yaml has no providers: entries',
          ),
        ),
      );
    });

    const lane = '''
providers:
  x:
    source: example/x
    schemaDir: fixtures/source_x
    outputPackage: packages/terradart_x
    overridesRoot: overrides/x/yaml
    barrelsManifest: barrels_x.yaml
    migrateManifest: manifest/x.g.dart
''';

    test('providerEnums: true adds --provider-enums to wrap and regen', () {
      final x = parseWrapLanes('$lane    providerEnums: true\n').single;
      expect(WrapGate.wrap.args(x), contains('--provider-enums'));
      expect(WrapGate.regen.args(x), contains('--provider-enums'));
      expect(WrapGate.lint.args(x), isNot(contains('--provider-enums')));
    });

    test('providerEnums defaults to off', () {
      expect(parseWrapLanes(lane).single.providerEnums, isFalse);
    });

    test('rejects a non-bool providerEnums', () {
      expect(
        () => parseWrapLanes('$lane    providerEnums: yes please\n'),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'lane x: providerEnums must be a bool',
          ),
        ),
      );
    });

    test('hintsRepo is the bump repo', () {
      expect(parseWrapLanes(lane).single.hintsRepo, isNull);
      expect(
        parseWrapLanes('$lane    bump:\n      repo: acme/terraform-x\n')
            .single
            .hintsRepo,
        'acme/terraform-x',
      );
    });

    test('the committed cloudflare lane re-extracts hints from its repo', () {
      final cloudflare = parseWrapLanes(File(providersPath).readAsStringSync())
          .singleWhere((l) => l.name == 'cloudflare');
      expect(cloudflare.providerEnums, isTrue);
      expect(cloudflare.hintsRepo, 'cloudflare/terraform-provider-cloudflare');
      expect(staleHints(cloudflare.schemaDir), isEmpty);
    });

    test('the committed appwrite lane types enums from current hints', () {
      final appwrite = parseWrapLanes(File(providersPath).readAsStringSync())
          .singleWhere((l) => l.name == 'appwrite');
      expect(appwrite.providerEnums, isTrue);
      expect(staleHints(appwrite.schemaDir), isEmpty);
    });

    test('mmHints: true adds --mm-hints to wrap and regen', () {
      final x = parseWrapLanes('$lane    mmHints: true\n').single;
      expect(WrapGate.wrap.args(x), contains('--mm-hints'));
      expect(WrapGate.regen.args(x), contains('--mm-hints'));
      expect(WrapGate.lint.args(x), isNot(contains('--mm-hints')));
      expect(parseWrapLanes(lane).single.mmHints, isFalse);
    });

    test('rejects mmHints beside providerEnums', () {
      expect(
        () => parseWrapLanes(
          '$lane    mmHints: true\n    providerEnums: true\n',
        ),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'lane x: mmHints and providerEnums are exclusive hint sources',
          ),
        ),
      );
    });

    test('mmSync needs both coordinates', () {
      final x = parseWrapLanes(
        '$lane    mmSync:\n      providerRepo: acme/terraform-x\n'
        '      servicesDir: x/services\n',
      ).single;
      expect(
        x.mmSync,
        (providerRepo: 'acme/terraform-x', servicesDir: 'x/services'),
      );
      expect(parseWrapLanes(lane).single.mmSync, isNull);
      expect(
        () => parseWrapLanes(
          '$lane    mmSync:\n      providerRepo: acme/terraform-x\n',
        ),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            'lane x: mmSync needs providerRepo and servicesDir strings',
          ),
        ),
      );
    });

    test('the committed google-beta lane syncs current MM YAML', () {
      final beta = parseWrapLanes(File(providersPath).readAsStringSync())
          .singleWhere((l) => l.name == 'google-beta');
      expect(beta.mmHints, isTrue);
      expect(
        beta.mmSync?.providerRepo,
        'hashicorp/terraform-provider-google-beta',
      );
      expect(staleMmSync(beta.schemaDir), isEmpty);
    });

    test('the committed aws lane re-extracts hints from its repo', () {
      final aws = parseWrapLanes(File(providersPath).readAsStringSync())
          .singleWhere((l) => l.name == 'aws');
      expect(aws.providerEnums, isTrue);
      expect(aws.hintsRepo, 'hashicorp/terraform-provider-aws');
      expect(staleHints(aws.schemaDir), isEmpty);
    });
  });

  group('staleHints', () {
    late Directory dir;
    setUp(() => dir = Directory.systemTemp.createTempSync('hints_'));
    tearDown(() => dir.deleteSync(recursive: true));

    void hint(String name, String version) =>
        File(p.join(dir.path, 'hints', name))
          ..createSync(recursive: true)
          ..writeAsStringSync('provider_version: $version\nproperties: []\n');

    test('is empty without hints', () {
      File(p.join(dir.path, 'provider_version.txt')).writeAsStringSync('5.2.0');
      expect(staleHints(dir.path), isEmpty);
    });

    test('names each hints file extracted at another version', () {
      File(p.join(dir.path, 'provider_version.txt'))
          .writeAsStringSync('5.2.0\n');
      hint('b.yaml', '5.1.0');
      hint('a.yaml', '5.2.0');
      hint('c.yaml', '5.0.0');
      File(p.join(dir.path, 'hints', 'README.md')).writeAsStringSync('x');
      expect(staleHints(dir.path), ['b.yaml: 5.1.0', 'c.yaml: 5.0.0']);
    });
  });

  group('staleMmSync', () {
    late Directory dir;
    setUp(() {
      dir = Directory.systemTemp.createTempSync('mm_sync_');
      File(p.join(dir.path, 'provider_version.txt'))
          .writeAsStringSync('8.4.0\n');
      File(p.join(dir.path, 'schema.json')).writeAsStringSync(
        '{"provider_schemas": {"registry.terraform.io/hashicorp/x": '
        '{"resource_schemas": {"x_a": {}, "x_b": {}}}}}',
      );
    });
    tearDown(() => dir.deleteSync(recursive: true));

    void record(String version, List<String> types) =>
        File(p.join(dir.path, mmSourcesFile)).writeAsStringSync(
          'provider_version: $version\nupstream_ref: abc\nfiles:\n'
          '${[for (final t in types) '  $t: null\n'].join()}',
        );

    test('is empty when the record matches the fixture', () {
      record('8.4.0', ['x_a', 'x_b']);
      expect(staleMmSync(dir.path), isEmpty);
    });

    test('names a missing record', () {
      expect(staleMmSync(dir.path), ['$mmSourcesFile is missing']);
    });

    test('names another release and a changed resource set', () {
      record('8.3.0', ['x_a', 'x_c']);
      expect(staleMmSync(dir.path), [
        '$mmSourcesFile records provider 8.3.0, the fixture is 8.4.0',
        '$mmSourcesFile lacks x_b',
        '$mmSourcesFile lists x_c, absent from schema.json',
      ]);
    });
  });

  test('every resource override of a providerEnums lane derives its hints', () {
    for (final lane in parseWrapLanes(File(providersPath).readAsStringSync())) {
      if (!lane.providerEnums) continue;
      final files =
          Directory(lane.overridesRoot).listSync().whereType<File>().where((f) {
        final name = p.basename(f.path);
        return name.endsWith('.yaml') && !name.startsWith('data_');
      }).toList();
      expect(files, isNotEmpty, reason: 'lane ${lane.name}');
      for (final f in files) {
        final lines = f.readAsLinesSync();
        for (final flag in ['deriveEnums', 'deriveExactlyOne']) {
          expect(lines, contains('$flag: true'), reason: '${f.path}: $flag');
        }
      }
    }
  });

  test('every committed lane resolves the shared lint ledgers under tool/', () {
    for (final lane in parseWrapLanes(File(providersPath).readAsStringSync())) {
      expect(
        lintDebtToolDirForOverrideRoot(lane.overridesRoot),
        p.absolute('tool'),
        reason: 'lane ${lane.name}',
      );
    }
  });

  group('unownedLedgerEntries', () {
    test('names each entry no lane owns, per ledger', () {
      expect(
        unownedLedgerEntries(
          {
            'tool/exactly_one_lint_debt.yaml': ['google_a', 'ghost'],
            'tool/migrate_manifest_debt.yaml': ['aws_b', 'data.google_c'],
          },
          {'google_a', 'aws_b'},
        ),
        [
          'tool/exactly_one_lint_debt.yaml: ghost names no override in any '
              'lane',
          'tool/migrate_manifest_debt.yaml: data.google_c names no override '
              'in any lane',
        ],
      );
    });

    test('is empty when every entry has an owner', () {
      expect(
        unownedLedgerEntries(
          {
            'tool/exactly_one_lint_debt.yaml': ['google_a'],
          },
          {'google_a'},
        ),
        isEmpty,
      );
    });
  });

  group('ledgerOwnershipFailures', () {
    late Directory root;
    const overrides = 'packages/terradart_codegen/lib/src/codegen/'
        'wrapper_overrides';

    setUp(() {
      root = Directory.systemTemp.createTempSync('wrap_lanes_ledger_');
      for (final (lane, override) in [('a', 'a_one'), ('b', 'b_two')]) {
        Directory(p.join(root.path, overrides, lane, 'yaml'))
            .createSync(recursive: true);
        File(p.join(root.path, overrides, lane, 'yaml', '$override.yaml'))
            .writeAsStringSync('outputDir: x\n');
      }
      Directory(p.join(root.path, 'tool')).createSync();
    });
    tearDown(() => root.deleteSync(recursive: true));

    List<WrapLane> lanes(Map<String, String> overridesRoots) {
      final yaml = StringBuffer('providers:\n');
      for (final MapEntry(key: name, value: root) in overridesRoots.entries) {
        yaml
          ..writeln('  $name:')
          ..writeln('    source: example/$name')
          ..writeln('    schemaDir: fixtures/source_$name')
          ..writeln('    outputPackage: packages/terradart_$name')
          ..writeln('    overridesRoot: $root')
          ..writeln('    barrelsManifest: barrels_$name.yaml')
          ..writeln('    migrateManifest: manifest/$name.g.dart');
      }
      return parseWrapLanes(yaml.toString());
    }

    test('an entry owned by another lane passes; one owned by none fails', () {
      File(p.join(root.path, 'tool', 'exactly_one_lint_debt.yaml'))
          .writeAsStringSync('b_two: lane b owns it\nghost: owned by none\n');
      File(p.join(root.path, 'tool', 'migrate_manifest_debt.yaml'))
          .writeAsStringSync('a_one: lane a owns it\n');
      expect(
        ledgerOwnershipFailures(
          lanes({'a': '$overrides/a/yaml', 'b': '$overrides/b/yaml'}),
          root.path,
        ),
        [
          'tool/exactly_one_lint_debt.yaml: ghost names no override in any '
              'lane',
        ],
      );
    });

    test('a lane outside wrapper_overrides is reported, not skipped', () {
      Directory(p.join(root.path, 'elsewhere')).createSync();
      expect(
        ledgerOwnershipFailures(
          lanes({'a': '$overrides/a/yaml', 'x': 'elsewhere'}),
          root.path,
        ),
        [
          'lane x: overridesRoot elsewhere resolves the lint ledgers to '
              'nothing, not ${p.join(root.path, 'tool')}',
        ],
      );
    });
  });

  group('missingLanePaths', () {
    late Directory root;

    setUp(() => root = Directory.systemTemp.createTempSync('wrap_lanes_'));
    tearDown(() => root.deleteSync(recursive: true));

    test('names each absent path and skips the ones that exist', () {
      Directory(p.join(root.path, 'fixtures/source_x'))
          .createSync(recursive: true);
      File(p.join(root.path, 'barrels_x.yaml')).createSync();
      final lanes = parseWrapLanes('''
providers:
  x:
    source: example/x
    schemaDir: fixtures/source_x
    outputPackage: packages/terradart_x
    overridesRoot: overrides/x/yaml
    barrelsManifest: barrels_x.yaml
    resourceProvider: null
    migrateManifest: manifest/x.g.dart
''');
      expect(
        missingLanePaths(lanes, root.path),
        equals([
          'lane x: missing outputPackage packages/terradart_x',
          'lane x: missing overridesRoot overrides/x/yaml',
        ]),
      );
    });
  });
}
