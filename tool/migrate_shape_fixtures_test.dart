import 'dart:io';

import 'package:pub_semver/pub_semver.dart';
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'migrate_shape_fixtures.dart';
import 'migrating_cells.dart' show previousRelease, publishedVersions;

const _lanesWithoutTypeRenames = <String, String>{
  'azure':
      'terradart_azure first released in 0.36.0 (after the 0.33/0.35 type-name '
      'renames) and renamed no helper or enum type in 0.36.0 → 0.37.0',
};

void main() {
  final migrating = File('MIGRATING.md').readAsStringSync();
  final renamed = renamedTypes(migrating);

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

  test('_releasedBefore requires a stable release older than from', () {
    expect(_releasedBefore(['0.36.0'], '0.36.0'), isFalse);
    expect(_releasedBefore(['0.36.0-dev', '0.36.0'], '0.36.0'), isFalse);
    expect(_releasedBefore(['0.35.0', '0.36.0'], '0.36.0'), isTrue);
    expect(_releasedBefore(['0.35.0'], null), isFalse);
  });

  group('repo shape fixtures', () {
    late final Map<String, List<String>> versions;
    late final Map<String, String> previous;
    setUpAll(() async {
      versions = await publishedVersions([
        for (final m in allMigrateManifests) m.package,
      ]);
      previous = previousRelease(migrating, versions);
    });

    for (final manifest in allMigrateManifests) {
      final lane = shapeFixtureLane(manifest.package);
      test('the $lane shape fixture migrates every shape its lane has', () {
        final file = File(shapeFixturePath(manifest.package));
        expect(file.existsSync(), isTrue, reason: '${file.path} is missing');
        final result = _migrate(file);
        expect(
          shapeFixtureFindings(
            manifest,
            result.report,
            renamed: renamed,
            published: _releasedBefore(
              versions[manifest.package] ?? const [],
              previous[manifest.package],
            ),
            allowNoRename: _lanesWithoutTypeRenames.containsKey(lane),
          ),
          isEmpty,
        );
      });
    }
  });

  test('every no-rename allowlist entry names a real lane', () {
    final lanes = {
      for (final m in allMigrateManifests) shapeFixtureLane(m.package),
    };
    expect(_lanesWithoutTypeRenames.keys, everyElement(isIn(lanes)));
  });

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
            published: true,
          ),
          [contains('never migrates a ${shape.name}')],
        );
      });
    }

    test('a fixture that uses no renamed type fails', () {
      expect(
        shapeFixtureFindings(
          google,
          without(types: renamed),
          renamed: renamed,
          published: true,
        ),
        [contains('none of the renamed types')],
      );
    });

    test('a lane that MIGRATING.md renames nothing in fails', () {
      expect(
        shapeFixtureFindings(
          google,
          result.report,
          renamed: {'NotAType'},
          published: true,
        ),
        [contains('no Before / After row in MIGRATING.md renames a google')],
      );
    });

    test('only a published lane needs a rename row in MIGRATING.md', () {
      expect(
        shapeFixtureFindings(
          google,
          result.report,
          renamed: {'NotAType'},
          published: false,
        ),
        isEmpty,
      );
      expect(
        shapeFixtureFindings(
          google,
          result.report,
          renamed: {'NotAType'},
          published: true,
        ),
        [contains('no Before / After row in MIGRATING.md renames a google')],
      );
    });

    test(
      'allowNoRename excuses a lane without renames and fails once one lands',
      () {
        expect(
          shapeFixtureFindings(
            google,
            result.report,
            renamed: {'NotAType'},
            published: true,
            allowNoRename: true,
          ),
          isEmpty,
        );
        expect(
          shapeFixtureFindings(
            google,
            result.report,
            renamed: renamed,
            published: true,
            allowNoRename: true,
          ),
          [contains('remove google from the no-rename allowlist')],
        );
        expect(
          shapeFixtureFindings(
            google,
            without(types: renamed),
            renamed: renamed,
            published: true,
            allowNoRename: true,
          ),
          containsAll([
            contains('remove google from the no-rename allowlist'),
            contains('none of the renamed types'),
          ]),
        );
      },
    );

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
          published: true,
        ),
        [contains('google_kms_key_ring.ring is kept')],
      );
    });
  });
}

bool _releasedBefore(List<String> versions, String? from) =>
    from != null &&
    versions
        .map(Version.parse)
        .any((v) => !v.isPreRelease && v < Version.parse(from));

MigrationResult _migrate(File file) => migrateModule(
  TfModule.fromTfJson(file.readAsStringSync(), fileName: file.path),
  name: 'shapes',
);
