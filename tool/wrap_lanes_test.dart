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
        '--migrate-manifest '
        '../terradart_migrate/lib/src/manifest/google_beta.g.dart '
        '--check',
      );
    });

    test('cloudflare wrap omits --resource-provider', () {
      expect(
        wrap('cloudflare'),
        'wrap --provider cloudflare/cloudflare '
        '--source test/fixtures/wrap/source_cloudflare '
        '--output ../terradart_cloudflare/lib/src '
        '--overrides-root lib/src/codegen/wrapper_overrides/cloudflare/yaml '
        '--barrels-manifest lib/src/codegen/barrels/barrels_cloudflare.yaml '
        '--migrate-manifest '
        '../terradart_migrate/lib/src/manifest/cloudflare.g.dart '
        '--check',
      );
    });

    test('aws wrap omits --resource-provider', () {
      expect(
        wrap('aws'),
        'wrap --provider hashicorp/aws '
        '--source test/fixtures/wrap/source_aws '
        '--output ../terradart_aws/lib/src '
        '--overrides-root lib/src/codegen/wrapper_overrides/aws/yaml '
        '--barrels-manifest lib/src/codegen/barrels/barrels_aws.yaml '
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
