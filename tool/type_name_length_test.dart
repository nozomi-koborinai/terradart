// Every type `terradart wrap` declares in the package of a tool/providers.yaml
// lane stays at or under [maxTypeNameLength] characters, unless its name is
// already as short as the naming rules allow: one Terraform segment (and an
// optional `Choice` collision suffix) past the type it is named after — see
// [irreducibleTypes]. Only that prefix is long there, and Terraform chose it.
// Any other name over the limit needs a reasoned entry in
// tool/type_name_length_debt.yaml, and an entry that no longer names such a
// type fails as stale.

import 'dart:io';

import 'package:terradart_codegen/src/codegen/naming.dart';
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

/// Every run of consecutive words in [snake], in PascalCase: a type name may
/// drop the words a segment repeats from its prefix, and a derived sealed
/// concept is the members' shared leading or trailing words.
Iterable<String> _wordRuns(String snake) sync* {
  final words = [
    for (final w in snake.split('_'))
      if (w.isNotEmpty) w,
  ];
  for (var i = 0; i < words.length; i++) {
    for (var j = i + 1; j <= words.length; j++) {
      yield _pascal(words.sublist(i, j).join('_'));
    }
  }
}

/// Every Terraform name segment (block, attribute, sealed member, sealed
/// concept) the manifest records, and every word run of one, in PascalCase.
Set<String> _segments(MigrateManifest manifest) {
  final out = <String>{};
  void add(Iterable<MigrateSlot> slots) {
    for (final s in slots) {
      for (final t in s.tfName.split('.')) {
        out.addAll(_wordRuns(t));
      }
      if (s.variants case final variants?) {
        if (s.dartName.isNotEmpty) {
          out.add(s.dartName[0].toUpperCase() + s.dartName.substring(1));
        }
        for (final member in variants.keys) {
          out.addAll(_wordRuns(member));
        }
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

/// A declared type: its name, the file declaring it, and whether it is one
/// segment past the type it is named after (see [irreducibleTypes]).
typedef TypeName = ({String name, String file, bool irreducible});

/// The types [src] declares whose name is one of [segments] (plus an
/// optional `Choice`) past the type it is named after, where:
/// - a helper class or enum is named after a resource stem in [stems];
/// - a sealed type is named after a stem or the helper class holding it;
/// - a variant is named after its sealed type, or after that type's owner
///   when the member takes the concept's place.
Set<String> irreducibleTypes(
  String src,
  List<String> stems,
  Set<String> segments,
) {
  bool oneMore(String name, String owner) {
    final trimmed = name.endsWith('Choice')
        ? name.substring(0, name.length - 'Choice'.length)
        : name;
    return trimmed.length > owner.length &&
        trimmed.startsWith(owner) &&
        segments.contains(trimmed.substring(owner.length));
  }

  final declared = [for (final m in _decl.allMatches(src)) m[1]!];
  final sealed = {
    for (final m in RegExp(r'\bsealed class (\w+)').allMatches(src)) m[1]!,
  };
  final parentOf = {
    for (final m in RegExp(
      r'\bfinal class (\w+)\s+extends\s+(\w+)',
    ).allMatches(src))
      if (sealed.contains(m[2])) m[1]!: m[2]!,
  };
  final helpers = [
    for (final n in declared)
      if (!sealed.contains(n) && !parentOf.containsKey(n)) n,
  ];
  final ownerOf = <String, List<String>>{
    for (final s in sealed)
      s: [
        for (final o in [...stems, ...helpers])
          if (oneMore(s, o)) o,
      ],
  };
  return {
    for (final h in helpers)
      if (stems.any((s) => oneMore(h, s))) h,
    for (final s in sealed)
      if (ownerOf[s]!.isNotEmpty) s,
    for (final MapEntry(key: v, value: s) in parentOf.entries)
      if (oneMore(v, s) || ownerOf[s]!.any((o) => oneMore(v, o))) v,
  };
}

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
    final short = shortResourcePascal(
      f.uri.pathSegments.last.replaceAll('.dart', ''),
    );
    final irreducible = irreducibleTypes(src, [short, 'Data$short'], segments);
    for (final m in _decl.allMatches(src)) {
      out.add((
        name: m[1]!,
        file: f.path,
        irreducible: irreducible.contains(m[1]),
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
  test('a type one segment past what it is named after is irreducible', () {
    const src = '''
class LambdaFunctionVpcConfig {}
class LambdaFunctionVpcConfigSubnet {}
class LambdaFunctionTargetResourceConfig {}
sealed class LambdaFunctionCode {}
final class LambdaFunctionCodeImageUri extends LambdaFunctionCode {}
final class LambdaFunctionS3Bucket extends LambdaFunctionCode {}
final class LambdaFunctionCodeVpcConfigChoice extends LambdaFunctionCode {}
final class LambdaFunctionCodeOther extends LambdaFunctionCode {}
sealed class LambdaFunctionVpcConfigNetwork {}
final class LambdaFunctionVpcConfigNetworkSubnet
    extends LambdaFunctionVpcConfigNetwork {}
sealed class LambdaFunctionImageUriTarget {}
''';
    final segments = {
      for (final s in ['vpc_config', 'image_uri', 's3_bucket', 'subnet'])
        ..._wordRuns(s),
      'Code',
      'Network',
      'Target',
      'ResourceConfig',
    };
    expect(
      irreducibleTypes(src, ['LambdaFunction'], segments),
      unorderedEquals([
        'LambdaFunctionVpcConfig',
        'LambdaFunctionCode',
        'LambdaFunctionCodeImageUri',
        'LambdaFunctionS3Bucket',
        'LambdaFunctionCodeVpcConfigChoice',
        'LambdaFunctionVpcConfigNetwork',
        'LambdaFunctionVpcConfigNetworkSubnet',
      ]),
    );
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
