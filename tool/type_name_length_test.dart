// Every type `terradart wrap` declares in the package of a tool/providers.yaml
// lane stays at or under [maxTypeNameLength] characters, unless its name is
// already as short as the naming rules allow: the resource stem
// (`shortResourcePascal`) followed by one Terraform segment — two for a sealed
// variant (its concept or block, then its member) — and an optional `Choice`
// collision suffix. Only the stem is long there, and Terraform chose it. Any
// other name over the limit needs a reasoned entry in
// tool/type_name_length_debt.yaml, and an entry that no longer names such a
// type fails as stale.

import 'dart:io';

import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

const maxTypeNameLength = 80;

const _ledgerPath = 'tool/type_name_length_debt.yaml';

/// The package every `tool/providers.yaml` lane wraps into
/// (`outputPackage`), so a new lane is gated with no edit here.
List<String> lanePackages() {
  final doc =
      loadYaml(File('tool/providers.yaml').readAsStringSync()) as YamlMap;
  return [
    for (final lane in (doc['providers'] as YamlMap).values.cast<YamlMap>())
      (lane['outputPackage'] as String).split('/').last,
  ];
}

String _pascal(String snake) => [
  for (final p in snake.split('_'))
    if (p.isNotEmpty) p[0].toUpperCase() + p.substring(1),
].join();

/// Every Terraform name segment (block, attribute, sealed member) the
/// manifest records, in PascalCase.
Set<String> _segments(MigrateManifest manifest) {
  final out = <String>{};
  void add(Iterable<MigrateSlot> slots) {
    for (final s in slots) {
      for (final t in s.tfName.split('.')) {
        if (t.isNotEmpty) out.add(_pascal(t));
      }
      for (final member in s.variants?.keys ?? const <String>[]) {
        out.add(_pascal(member));
      }
    }
  }

  for (final e in manifest.entries) {
    add(e.slots);
  }
  for (final h in manifest.helpers.values) {
    add(h.slots);
  }
  return out;
}

/// Whether [rest] is at most [parts] segments of [segments] back to back.
bool _fits(String rest, int parts, Set<String> segments) {
  if (rest.isEmpty) return true;
  if (parts == 0) return false;
  for (var i = 1; i <= rest.length; i++) {
    if (segments.contains(rest.substring(0, i)) &&
        _fits(rest.substring(i), parts - 1, segments)) {
      return true;
    }
  }
  return false;
}

/// A declared type: its name, the file declaring it, and whether it is at
/// most one segment (two for a sealed variant) past the resource stem.
typedef TypeName = ({String name, String file, bool irreducible});

const _header = '// GENERATED FILE - DO NOT EDIT';
final _decl = RegExp(
  r'^(?:sealed class|final class|class|enum) (\w+)',
  multiLine: true,
);

/// Every type declared by a generated file under [package]'s `lib/src/`.
List<TypeName> declaredTypes(String package, Set<String> segments) {
  final out = <TypeName>[];
  final files =
      Directory('packages/$package/lib/src')
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('.dart'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  for (final f in files) {
    final src = f.readAsStringSync();
    if (!src.startsWith(_header)) continue;
    final base = f.uri.pathSegments.last.replaceAll('.dart', '');
    final short = _pascal(
      base.replaceFirst(RegExp(r'^(google|aws|cloudflare|appwrite)_'), ''),
    );
    final stems = [short, 'Data$short'];
    final sealed = {
      for (final m in RegExp(r'\bsealed class (\w+)').allMatches(src)) m[1]!,
    };
    final variants = {
      for (final m in RegExp(
        r'\bfinal class (\w+)\s+extends\s+(\w+)',
      ).allMatches(src))
        if (sealed.contains(m[2])) m[1]!,
    };
    for (final m in _decl.allMatches(src)) {
      final name = m[1]!;
      final stem = stems
          .where(name.startsWith)
          .fold<String?>(
            null,
            (a, s) => a == null || s.length > a.length ? s : a,
          );
      final trimmed = name.endsWith('Choice')
          ? name.substring(0, name.length - 'Choice'.length)
          : name;
      out.add((
        name: name,
        file: f.path,
        irreducible:
            stem != null &&
            trimmed.length >= stem.length &&
            _fits(
              trimmed.substring(stem.length),
              variants.contains(name) ? 2 : 1,
              segments,
            ),
      ));
    }
  }
  return out;
}

Map<String, String> _ledger() {
  final doc = loadYaml(File(_ledgerPath).readAsStringSync());
  if (doc == null) return const {};
  return {
    for (final MapEntry(:key, :value) in (doc as YamlMap).entries)
      key as String: value as String,
  };
}

void main() {
  test('_fits splits a suffix into known segments', () {
    const segs = {'Target', 'ResourceConfig', 'Existing'};
    expect(_fits('', 1, segs), isTrue);
    expect(_fits('ResourceConfig', 1, segs), isTrue);
    expect(_fits('TargetResourceConfig', 1, segs), isFalse);
    expect(_fits('TargetResourceConfig', 2, segs), isTrue);
  });

  final ledger = _ledger();
  final over = <String, TypeName>{};
  final packages = lanePackages();
  final manifests = {for (final m in allMigrateManifests) m.package: m};

  test('every lane has a registered migration manifest', () {
    expect(
      [
        for (final p in packages)
          if (!manifests.containsKey(p)) p,
      ],
      isEmpty,
      reason: 'add the lane manifest to allMigrateManifests',
    );
  });

  for (final package in packages) {
    final manifest = manifests[package];
    if (manifest == null) continue;
    final types = declaredTypes(package, _segments(manifest));
    for (final t in types) {
      if (t.name.length > maxTypeNameLength && !t.irreducible) {
        over[t.name] = t;
      }
    }
    test('$package type names stay within '
        '$maxTypeNameLength characters', () {
      final unledgered = [
        for (final t in types)
          if (t.name.length > maxTypeNameLength &&
              !t.irreducible &&
              !ledger.containsKey(t.name))
            '${t.name} (${t.name.length}, ${t.file})',
      ];
      expect(
        unledgered,
        isEmpty,
        reason:
            'shorten the name (a sealedNames concept, or an override that '
            'drops the colliding block) or add a reasoned entry to '
            '$_ledgerPath',
      );
    });
  }

  test('lanes are read from tool/providers.yaml', () {
    expect(
      packages,
      containsAll([
        'terradart_google',
        'terradart_google_beta',
        'terradart_aws',
        'terradart_cloudflare',
        'terradart_appwrite',
      ]),
    );
  });

  test('every $_ledgerPath entry names a type over the limit', () {
    expect([
      for (final name in ledger.keys)
        if (!over.containsKey(name)) name,
    ], isEmpty);
  });
}
