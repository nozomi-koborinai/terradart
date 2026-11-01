import 'dart:io';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'migrate_shape_fixtures.dart';

void main() {
  final renamed = renamedTypes(File('MIGRATING.md').readAsStringSync());

  test('the rename tables are found', () {
    expect(renamed, contains('Wafv2WebAclRuleNamed'));
    expect(
      renamedTypes('''
### One
| Before | After |
|---|---|
| `GoogleThing('t', mode: .x)` | `GoogleThing('t', mode: .y)` |
| `OldName` | `NewName` |

### Two
| Before | After |
|---|---|
| `OtherOld` | `OtherNew` |
'''),
      {'NewName', 'OtherNew'},
    );
  });

  test('a versioned header and a lane note still read as a rename', () {
    expect(
      renamedTypes('''
| Before (0.30) | After |
|--------|-------|
| `OldMode` (google-beta) | `NewMode` |

| Before (0.31) | After (0.32) |
|---|---|
| `OldKind` | `NewKind` (appwrite) |
'''),
      {'NewMode', 'NewKind'},
    );
  });

  test('a header that only starts with Before / After is no rename table', () {
    expect(
      () => renamedTypes('''
| Before you apply | After that |
|---|---|
| `OldMode` | `NewMode` |
'''),
      throwsStateError,
    );
  });

  test('the google-beta and appwrite renames are read', () {
    expect(
      renamed,
      containsAll([
        'ComputeFutureReservationMode',
        'MongoBackupStorageProvider',
      ]),
    );
  });

  test('a MIGRATING.md with no rename fails loudly', () {
    expect(
      () => renamedTypes(
        '### Renames\n| Old | New |\n|---|---|\n| `A` | `B` |\n',
      ),
      throwsStateError,
    );
  });

  for (final manifest in allMigrateManifests) {
    final lane = shapeFixtureLane(manifest.package);
    test('the $lane shape fixture migrates every shape its lane has', () {
      final file = File(shapeFixturePath(manifest.package));
      expect(file.existsSync(), isTrue, reason: '${file.path} is missing');
      final result = _migrate(file);
      expect(
        shapeFixtureFindings(manifest, result.report, renamed: renamed),
        isEmpty,
      );
    });
  }

  group('seeded failures', () {
    final google = allMigrateManifests.firstWhere(
      (m) => m.package == 'terradart_google',
    );
    final result = _migrate(File(shapeFixturePath(google.package)));

    MigrationReport without({
      Set<MigratedShape> shapes = const {},
      Set<String> types = const {},
      List<KeptItem> kept = const [],
    }) {
      final r = result.report;
      return MigrationReport(
        module: r.module,
        stackClass: r.stackClass,
        migrated: r.migrated,
        kept: [...r.kept, ...kept],
        warnings: r.warnings,
        packages: r.packages,
        shapes: r.shapes.difference(shapes),
        types: r.types.difference(types),
      );
    }

    for (final shape in requiredShapes(google)) {
      test('a fixture that never migrates a ${shape.name} fails', () {
        expect(
          shapeFixtureFindings(
            google,
            without(shapes: {shape}),
            renamed: renamed,
          ),
          [contains('never migrates a ${shape.name}')],
        );
      });
    }

    test('a fixture that uses no renamed type fails', () {
      expect(
        shapeFixtureFindings(google, without(types: renamed), renamed: renamed),
        [contains('none of the renamed types')],
      );
    });

    test('a lane that MIGRATING.md renames nothing in fails', () {
      expect(
        shapeFixtureFindings(google, result.report, renamed: {'NotAType'}),
        [contains('no Before / After row in MIGRATING.md renames a google')],
      );
    });

    test('a fixture that keeps a block in Terraform fails', () {
      expect(
        shapeFixtureFindings(
          google,
          without(
            kept: const [
              KeptItem(
                address: 'google_kms_key_ring.ring',
                reason: 'seeded blocker',
              ),
            ],
          ),
          renamed: renamed,
        ),
        [contains('google_kms_key_ring.ring is kept')],
      );
    });
  });
}

MigrationResult _migrate(File file) => migrateModule(
  TfModule.fromTfJson(file.readAsStringSync(), fileName: file.path),
  name: 'shapes',
);
