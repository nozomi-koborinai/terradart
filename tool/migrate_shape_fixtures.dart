// migrate_shape_fixtures.dart — one Terraform JSON fixture per migration
// manifest that exercises every typed API shape the lane's wrappers emit.
//
// The round-trip gate migrates each fixture strictly (no ledger), and
// tool/migrate_shape_fixtures_test.dart checks that the migration used every
// shape [requiredShapes] derives from the manifest and at least one type the
// latest rename table names, when the lane has one.

import 'package:terradart_migrate/terradart_migrate.dart';

const shapeFixtureRoot = 'packages/terradart_migrate/test/fixtures/shapes';

String shapeFixtureLane(String package) =>
    package.replaceFirst('terradart_', '');

String shapeFixtureSlug(String package) =>
    'shapes_${shapeFixtureLane(package)}';

String shapeFixturePath(String package) =>
    '$shapeFixtureRoot/${shapeFixtureLane(package)}/main.tf.json';

/// The shapes a migration of [manifest]'s fixture must use: each enum,
/// enum-list, sealed, reference and principal slot kind the manifest has,
/// with every enum fallback and all three enum-list forms.
Set<MigratedShape> requiredShapes(MigrateManifest manifest) {
  final out = <MigratedShape>{};
  void scan(Iterable<MigrateSlot> slots) {
    for (final s in slots) {
      switch (s.kind) {
        case MigrateSlotKind.enumValue when s.repeated && s.wrapped:
          out.addAll(const [
            MigratedShape.enumListLiteral,
            MigratedShape.enumListVariable,
            MigratedShape.enumListExpression,
          ]);
        case MigrateSlotKind.enumValue:
          out.addAll(const [
            MigratedShape.enumMember,
            MigratedShape.enumVariable,
            MigratedShape.enumExpression,
            MigratedShape.enumUnlisted,
          ]);
        case MigrateSlotKind.sealed:
          out.add(
            s.required
                ? MigratedShape.sealedExactlyOne
                : MigratedShape.sealedAtMostOne,
          );
        case MigrateSlotKind.reference:
          out.add(MigratedShape.reference);
        case MigrateSlotKind.principal:
          out.add(MigratedShape.principal);
        default:
      }
    }
  }

  for (final e in manifest.entries) {
    scan(e.slots);
    if (e.getters.isNotEmpty) out.add(MigratedShape.outputGetter);
  }
  for (final h in manifest.helpers.values) {
    scan(h.slots);
  }
  return out;
}

/// The new names of the latest rename table in MIGRATING.md: the `After`
/// column of "Long and repeated type names are shorter".
Set<String> renamedTypes(String migratingMd) {
  const heading = '### Long and repeated type names are shorter';
  final start = migratingMd.indexOf(heading);
  if (start < 0) return const {};
  final end = migratingMd.indexOf('\n### ', start + heading.length);
  final section = migratingMd.substring(start, end < 0 ? null : end);
  return {
    for (final m in RegExp(
      r'^\| `[^`]+` \| `([^`]+)` \|$',
      multiLine: true,
    ).allMatches(section))
      m.group(1)!,
  };
}

/// Why [report], the migration of [manifest]'s shape fixture, does not cover
/// the lane: a kept block, a required shape it did not use, or no use of a
/// renamed type the manifest declares.
List<String> shapeFixtureFindings(
  MigrateManifest manifest,
  MigrationReport report, {
  required Set<String> renamed,
}) {
  final lane = shapeFixtureLane(manifest.package);
  final findings = <String>[
    for (final k in report.kept)
      '$lane: ${k.address} is kept in Terraform (${k.reason})',
  ];
  final missing = requiredShapes(manifest).difference(report.shapes);
  for (final shape in missing.toList()..sort(_byIndex)) {
    findings.add('$lane: the fixture never migrates a ${shape.name}');
  }
  final declared = renamed.intersection({
    ...manifest.helpers.keys,
    ...manifest.enums.keys,
  }).toList();
  if (declared.isNotEmpty && report.types.intersection(renamed).isEmpty) {
    findings.add(
      '$lane: the fixture uses none of the renamed types '
      '${(declared..sort()).join(', ')}',
    );
  }
  return findings;
}

int _byIndex(MigratedShape a, MigratedShape b) => a.index.compareTo(b.index);
