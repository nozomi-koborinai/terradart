import 'dart:io';

import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'migrate_shape_fixtures.dart';

void main() {
  final renamed = renamedTypes(File('MIGRATING.md').readAsStringSync());

  test('the rename table is found', () {
    expect(renamed, contains('Wafv2WebAclRuleNamed'));
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
