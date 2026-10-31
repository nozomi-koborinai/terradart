// tool/enum_validated_values_test.dart
//
// The wire value a generated enum member emits must be one the provider
// accepts. The migration manifests record every emitted value; a lane's
// hint files (tool/extract_provider_hints.dart) record the provider's own
// validated sets. A description can be stale where the validator is not
// (azurerm's `forward_proxy_convention` lists the Go constant names
// `ForwardProxyConventionNoProxy`, ... while the provider accepts `NoProxy`),
// so an emitted value outside the validated set of its input fails here.
//
// Where no hint covers an input, a value set whose every value is the
// input's own PascalCase name plus a suffix is the shape of a Go constant
// leaking from a description, and fails unless [_goConstantLike] gives the
// reason the provider really accepts it.

// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'bump_api_surface.dart' show laneManifests;

/// `type.path` → why values shaped like Go constants are the wire values.
const _goConstantLike = {
  'google_bigtable_instance.cluster.node_scaling_factor':
      'the Bigtable API enum values are NodeScalingFactor1X / '
      'NodeScalingFactor2X, and the provider sends them unchanged',
};

final _root = Directory.current.path;
final _providersYaml = File(
  p.join(_root, 'tool/providers.yaml'),
).readAsStringSync();

/// Every enum-typed input of [manifest]: `(kind, type, path)` → wire values.
Map<(CatalogKind, String, String), List<String>> emittedEnums(
  MigrateManifest manifest,
) {
  final out = <(CatalogKind, String, String), List<String>>{};
  void walk(
    CatalogKind kind,
    String type,
    List<MigrateSlot> slots,
    List<String> path,
    Set<String> onPath,
  ) {
    for (final slot in slots) {
      final at = [...path, slot.tfName];
      switch (slot.kind) {
        case MigrateSlotKind.enumValue:
          final e = manifest.enums[slot.dartType];
          if (e != null) {
            out[(kind, type, at.join('.'))] = e.members.keys.toList();
          }
        case MigrateSlotKind.helper:
          final helper = manifest.helpers[slot.helper];
          if (helper != null && onPath.add(helper.className)) {
            walk(kind, type, helper.slots, at, onPath);
            onPath.remove(helper.className);
          }
        default:
      }
    }
  }

  for (final entry in manifest.entries) {
    walk(entry.kind, entry.tfType, entry.slots, const [], {});
  }
  return out;
}

/// The validated sets in [schemaDir]'s hint files: `(kind, type, path)` →
/// values.
Map<(CatalogKind, String, String), List<String>> validatedSets(
  String schemaDir,
) {
  final out = <(CatalogKind, String, String), List<String>>{};
  for (final (kind, dir) in [
    (CatalogKind.resource, p.join(schemaDir, 'hints')),
    (CatalogKind.dataSource, p.join(schemaDir, 'hints', 'data')),
  ]) {
    final d = Directory(dir);
    if (!d.existsSync()) continue;
    for (final f in d.listSync().whereType<File>()) {
      if (!f.path.endsWith('.yaml')) continue;
      final type = p.basenameWithoutExtension(f.path);
      final parsed = const MmYamlParser().parseString(f.readAsStringSync());
      for (final e in parsed.fieldOverrides.entries) {
        final values = e.value.enumValues;
        if (values != null) out[(kind, type, e.key)] = values;
      }
    }
  }
  return out;
}

/// Inputs whose every value is the input's PascalCase name plus a suffix.
List<String> goConstantShaped(
  Map<(CatalogKind, String, String), List<String>> enums,
) => [
  for (final MapEntry(key: (_, type, path), value: values) in enums.entries)
    if (_allPrefixed(path.split('.').last, values)) '$type.$path: $values',
];

bool _allPrefixed(String leaf, List<String> values) {
  final prefix = snakeToPascal(leaf);
  return values.length > 1 &&
      values.every((v) => v.length > prefix.length && v.startsWith(prefix));
}

void main() {
  final lanes = (loadYaml(_providersYaml) as YamlMap)['providers'] as YamlMap;
  final hinted = [
    for (final MapEntry(:key, :value) in lanes.entries)
      if ((value as YamlMap)['providerEnums'] == true) key as String,
  ];

  test('lanes with provider hints are read from tool/providers.yaml', () {
    expect(hinted, containsAll(['aws', 'azure', 'cloudflare', 'appwrite']));
  });

  for (final lane in hinted) {
    test('$lane enums emit only values the provider validates', () {
      final schemaDir = p.join(
        _root,
        (lanes[lane] as YamlMap)['schemaDir'] as String,
      );
      final manifest = laneManifests(_providersYaml, [lane]).single;
      final validated = validatedSets(schemaDir);
      final fold = manifest.caseInsensitiveEnums
          ? (String v) => v.toLowerCase()
          : (String v) => v;
      final mismatches = [
        for (final MapEntry(:key, value: emitted) in emittedEnums(
          manifest,
        ).entries)
          if (validated[key] case final allowed?)
            for (final v in emitted)
              if (!allowed.map(fold).contains(fold(v)))
                '${key.$2}.${key.$3}: emits "$v", provider validates $allowed',
      ];
      expect(
        mismatches,
        isEmpty,
        reason:
            'an emitted value the provider rejects: the wrapper trusted a '
            'description over the validator. Make the hint extractor reach '
            'the validator (tool/extract_provider_hints.dart) and re-wrap.',
      );
    });
  }

  test('no enum emits Go constant names instead of wire values', () {
    final shaped = <String>[];
    final seen = <String>{};
    for (final MapEntry(:key) in lanes.entries) {
      final manifest = laneManifests(_providersYaml, [key as String]).single;
      final enums = emittedEnums(manifest);
      for (final line in goConstantShaped(enums)) {
        final input = line.split(':').first;
        seen.add(input);
        if (!_goConstantLike.containsKey(input)) shaped.add(line);
      }
    }
    expect(shaped, isEmpty);
    expect(
      _goConstantLike.keys.where((k) => !seen.contains(k)),
      isEmpty,
      reason: 'a stale _goConstantLike entry',
    );
  });

  test('no enum emits a full-width dollar for an ASCII one', () {
    final rewritten = [
      for (final MapEntry(:key) in lanes.entries)
        for (final e in laneManifests(_providersYaml, [
          key as String,
        ]).single.enums.values)
          for (final v in e.members.keys)
            if (v.contains('\uFF04')) '${e.name}: $v',
    ];
    expect(rewritten, isEmpty);
  });

  test('the Go-constant shape catches the forward-proxy leak', () {
    expect(
      goConstantShaped({
        (
          CatalogKind.resource,
          'azurerm_linux_web_app',
          'auth_settings_v2.forward_proxy_convention',
        ): [
          'ForwardProxyConventionNoProxy',
          'ForwardProxyConventionStandard',
          'ForwardProxyConventionCustom',
        ],
        (
          CatalogKind.resource,
          'azurerm_linux_web_app',
          'auth_settings_v2.other_convention',
        ): [
          'NoProxy',
          'Standard',
          'Custom',
        ],
      }),
      hasLength(1),
    );
  });
}
