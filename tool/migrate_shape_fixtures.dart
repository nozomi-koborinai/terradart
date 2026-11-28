import 'package:terradart_migrate/terradart_migrate.dart';

const shapeFixtureRoot = 'packages/terradart_migrate/test/fixtures/shapes';

String shapeFixtureLane(String package) =>
    package.replaceFirst('terradart_', '');

String shapeFixtureSlug(String package) =>
    'shapes_${shapeFixtureLane(package)}';

String shapeFixturePath(String package) =>
    '$shapeFixtureRoot/${shapeFixtureLane(package)}/main.tf.json';

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
          if (s.dartType == 'GoogleApi') out.add(MigratedShape.googleApiCustom);
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

Set<String> renamedTypes(String migratingMd) {
  const note = r'(?: \([^()|]*\))?';
  final header = RegExp('^\\| *Before$note *\\| *After$note *\\|\$');
  final rename = RegExp(
    '^\\| `[A-Z][A-Za-z0-9]*`$note \\| `([A-Z][A-Za-z0-9]*)`$note \\|\$',
  );
  final out = <String>{};
  var inTable = false;
  for (final line in migratingMd.split('\n')) {
    if (header.hasMatch(line)) {
      inTable = true;
    } else if (!line.startsWith('|')) {
      inTable = false;
    } else if (inTable) {
      if (rename.firstMatch(line) case final m?) out.add(m.group(1)!);
    }
  }
  if (out.isEmpty) {
    throw StateError(
      'MIGRATING.md has no Before / After row that renames a type; the '
      'shape fixtures cannot check renamed types',
    );
  }
  return out;
}

List<String> shapeFixtureFindings(
  MigrateManifest manifest,
  MigrationReport report, {
  required Set<String> renamed,
  required bool published,
  bool allowNoRename = false,
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
  if (!published) return findings;
  final types = {...manifest.helpers.keys, ...manifest.enums.keys};
  final declared = renamed.intersection(types).toList();
  if (declared.isEmpty && types.isNotEmpty) {
    if (!allowNoRename) {
      findings.add(
        '$lane: no Before / After row in MIGRATING.md renames a $lane type, '
        'so the fixture cannot check one; a rename table this lane has is '
        'not being read',
      );
    }
  } else if (declared.isNotEmpty) {
    if (allowNoRename) {
      findings.add(
        '$lane: MIGRATING.md now renames ${(declared..sort()).join(', ')}; '
        'remove $lane from the no-rename allowlist',
      );
    }
    if (report.types.intersection(renamed).isEmpty) {
      findings.add(
        '$lane: the fixture uses none of the renamed types '
        '${(declared..sort()).join(', ')}',
      );
    }
  }
  return findings;
}

int _byIndex(MigratedShape a, MigratedShape b) => a.index.compareTo(b.index);
