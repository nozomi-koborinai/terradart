// tool/enum_validated_values_test.dart
//
// The wire value a generated enum member emits must be one the provider
// accepts. The migration manifests record every emitted value; a lane's
// hint files (tool/extract_provider_hints.dart) record the provider's own
// validated sets. A description can be stale where the validator is not
// (azurerm's `forward_proxy_convention` lists the Go constant names
// `ForwardProxyConventionNoProxy`, ... while the provider accepts `NoProxy`),
// so an emitted value outside the validated set of its input fails here.
// The comparison is exact: a validator may ignore case, but some do not
// (`forward_proxy_convention` uses `StringInSlice(..., false)`), and the
// spelling a hint lists is accepted by either kind.
//
// Where no hint covers an input, a value set whose every value is the
// input's own PascalCase name plus a suffix is the shape of a Go constant
// leaking from a description, and fails unless [_goConstantLike] gives the
// reason the provider really accepts it, and its exact values.

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

/// `type.path` → the Go-constant-shaped values that are the wire values,
/// and why.
const _goConstantLike = {
  'google_bigtable_instance.cluster.node_scaling_factor': (
    values: ['NodeScalingFactor1X', 'NodeScalingFactor2X'],
    reason:
        'the Bigtable API enum values are NodeScalingFactor1X / '
        'NodeScalingFactor2X, and the provider sends them unchanged',
  ),
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
      final at = [...path, if (slot.tfName.isNotEmpty) slot.tfName];
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
        case MigrateSlotKind.sealed:
          for (final MapEntry(key: key, value: name)
              in (slot.variants ?? const <String, String>{}).entries) {
            final variant = manifest.helpers[name];
            if (variant == null || !onPath.add(name)) continue;
            final selfKeyed = variant.slots.any(
              (s) => s.tfName == key || s.tfName.startsWith('$key.'),
            );
            walk(kind, type, variant.slots, [
              ...at,
              if (!selfKeyed) key,
            ], onPath);
            onPath.remove(name);
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

/// Each emitted value [validated] does not list exactly for its input.
List<String> wireMismatches(
  Map<(CatalogKind, String, String), List<String>> emitted,
  Map<(CatalogKind, String, String), List<String>> validated,
) => [
  for (final MapEntry(:key, value: values) in emitted.entries)
    if (validated[key] case final allowed?)
      for (final v in values)
        if (!allowed.contains(v))
          '${key.$2}.${key.$3}: emits "$v", provider validates $allowed',
];

/// Inputs whose every value is the input's PascalCase name plus a suffix,
/// unless [allowed] gives exactly those values for the input.
List<String> goConstantShaped(
  Map<(CatalogKind, String, String), List<String>> enums, {
  Map<String, ({List<String> values, String reason})> allowed = const {},
}) => [
  for (final MapEntry(key: (_, type, path), value: values) in enums.entries)
    if (_allPrefixed(path.split('.').last, values) &&
        !_sameValues(allowed['$type.$path']?.values, values))
      '$type.$path: $values',
];

bool _sameValues(List<String>? a, List<String> b) =>
    a != null && a.length == b.length && a.toSet().containsAll(b);

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
      final mismatches = wireMismatches(
        emittedEnums(manifest),
        validatedSets(schemaDir),
      );
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
      for (final (_, type, path) in enums.keys) {
        seen.add('$type.$path');
      }
      shaped.addAll(goConstantShaped(enums, allowed: _goConstantLike));
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

  const forwardProxy = (
    CatalogKind.resource,
    'azurerm_linux_web_app',
    'auth_settings_v2.forward_proxy_convention',
  );
  final validatedProxy = {
    forwardProxy: ['Custom', 'NoProxy', 'Standard'],
  };

  test('a case-only wire error fails', () {
    expect(
      wireMismatches({
        forwardProxy: ['Custom', 'noproxy', 'Standard'],
      }, validatedProxy),
      [contains('emits "noproxy"')],
    );
    expect(
      wireMismatches({
        forwardProxy: ['Custom', 'NoProxy', 'Standard'],
      }, validatedProxy),
      isEmpty,
    );
  });

  test('the Bigtable allowance admits only its two values', () {
    const bigtable = (
      CatalogKind.resource,
      'google_bigtable_instance',
      'cluster.node_scaling_factor',
    );
    expect(
      goConstantShaped({
        bigtable: ['NodeScalingFactor1X', 'NodeScalingFactor2X'],
      }, allowed: _goConstantLike),
      isEmpty,
    );
    expect(
      goConstantShaped({
        bigtable: ['NodeScalingFactorBogus', 'NodeScalingFactorWrong'],
      }, allowed: _goConstantLike),
      hasLength(1),
    );
  });
}
