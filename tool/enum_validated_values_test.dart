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
// The other direction holds too: a value the validator lists and the enum
// lacks fails, and so does an input (top-level or nested) the validator
// covers that no enum types, unless the provider only computes it or
// [_untypedValidated] gives the reason it stays untyped.
//
// Where no hint covers an input, a value set whose every value is the
// input's own PascalCase name plus a suffix is the shape of a Go constant
// leaking from a description, and fails unless [_goConstantLike] gives the
// reason the provider really accepts it, and its exact values.

// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:convert';
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

const _rawRule =
    'aws_wafv2_web_acl takes its inline rule blocks as a raw map, because '
    'aws_wafv2_web_acl_rule owns the helper names (AGENTS.md)';
const _rawObjectLock =
    'the deprecated inline object_lock_configuration is a raw map variant of '
    'S3BucketObjectLock; aws_s3_bucket_object_lock_configuration types it';
const _rawEncryption =
    'the deprecated inline server_side_encryption_configuration is a raw map; '
    'aws_s3_bucket_server_side_encryption_configuration types it';

/// `lane` → `type.path` of an input a validator covers that no enum types,
/// and why.
const _untypedValidated = {
  'aws': {
    'aws_s3_bucket.object_lock_configuration.object_lock_enabled':
        _rawObjectLock,
    'aws_s3_bucket.object_lock_configuration.rule.default_retention.mode':
        _rawObjectLock,
    'aws_s3_bucket.server_side_encryption_configuration.rule.'
            'apply_server_side_encryption_by_default.sse_algorithm':
        _rawEncryption,
    'aws_wafv2_web_acl.rule.statement.managed_rule_group_statement.'
            'managed_rule_group_configs.aws_managed_rules_acfp_rule_set.'
            'request_inspection.payload_type':
        _rawRule,
    'aws_wafv2_web_acl.rule.statement.managed_rule_group_statement.'
            'managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.'
            'client_side_action_config.challenge.sensitivity':
        _rawRule,
    'aws_wafv2_web_acl.rule.statement.managed_rule_group_statement.'
            'managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.'
            'client_side_action_config.challenge.usage_of_action':
        _rawRule,
    'aws_wafv2_web_acl.rule.statement.managed_rule_group_statement.'
            'managed_rule_group_configs.aws_managed_rules_anti_ddos_rule_set.'
            'sensitivity_to_block':
        _rawRule,
    'aws_wafv2_web_acl.rule.statement.managed_rule_group_statement.'
            'managed_rule_group_configs.aws_managed_rules_atp_rule_set.'
            'request_inspection.payload_type':
        _rawRule,
    'aws_wafv2_web_acl.rule.statement.managed_rule_group_statement.'
            'managed_rule_group_configs.aws_managed_rules_bot_control_rule_set.'
            'inspection_level':
        _rawRule,
    'aws_wafv2_web_acl.rule.statement.managed_rule_group_statement.'
            'managed_rule_group_configs.payload_type':
        _rawRule,
    'aws_wafv2_web_acl.rule.statement.rate_based_statement.'
            'aggregate_key_type':
        _rawRule,
  },
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

/// Each value [validated] lists for an input that the input's enum lacks.
List<String> missingMembers(
  Map<(CatalogKind, String, String), List<String>> emitted,
  Map<(CatalogKind, String, String), List<String>> validated,
) => [
  for (final MapEntry(:key, value: allowed) in validated.entries)
    if (emitted[key] case final values?)
      for (final v in allowed)
        if (!values.contains(v))
          '${key.$2}.${key.$3}: provider validates "$v", the enum lacks it',
];

/// The attributes of a provider `schema.json` the provider only computes
/// (top-level and nested): `(kind, type, path)`.
Set<(CatalogKind, String, String)> computedOnly(String schemaJson) {
  final out = <(CatalogKind, String, String)>{};
  final doc = jsonDecode(schemaJson) as Map<String, dynamic>;
  for (final provider in (doc['provider_schemas'] as Map).values) {
    for (final (kind, section) in [
      (CatalogKind.resource, 'resource_schemas'),
      (CatalogKind.dataSource, 'data_source_schemas'),
    ]) {
      for (final MapEntry(key: type, value: schema)
          in ((provider as Map)[section] as Map? ?? const {}).entries) {
        void walk(Map<String, dynamic> block, String prefix) {
          for (final MapEntry(key: name, value: attr)
              in (block['attributes'] as Map? ?? const {}).entries) {
            final a = attr as Map;
            if (a['computed'] == true &&
                a['optional'] != true &&
                a['required'] != true) {
              out.add((kind, '$type', '$prefix$name'));
            }
            if (a['nested_type'] case final Map<String, dynamic> nested) {
              walk(nested, '$prefix$name.');
            }
          }
          for (final MapEntry(key: name, value: nested)
              in (block['block_types'] as Map? ?? const {}).entries) {
            walk(((nested as Map)['block'] as Map).cast(), '$prefix$name.');
          }
        }

        walk(((schema as Map)['block'] as Map).cast(), '');
      }
    }
  }
  return out;
}

/// Each input [validated] covers that [emitted] types with no enum, unless
/// the provider only computes it ([computed]) or [allowed] gives a reason;
/// plus each [allowed] entry that names no such input.
List<String> untypedValidatedInputs(
  Map<(CatalogKind, String, String), List<String>> emitted,
  Map<(CatalogKind, String, String), List<String>> validated,
  Set<(CatalogKind, String, String)> computed, {
  Map<String, String> allowed = const {},
}) {
  final untyped = {
    for (final MapEntry(:key, value: values) in validated.entries)
      if (!emitted.containsKey(key) && !computed.contains(key))
        '${key.$1 == CatalogKind.dataSource ? 'data.' : ''}${key.$2}.${key.$3}':
            values,
  };
  return [
    for (final MapEntry(:key, :value) in untyped.entries)
      if (!allowed.containsKey(key))
        '$key: the provider validates $value, but no enum types it',
    for (final key in allowed.keys)
      if (!untyped.containsKey(key)) '$key: stale _untypedValidated entry',
  ];
}

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

    test('$lane enums emit every value the provider validates', () {
      final schemaDir = (lanes[lane] as YamlMap)['schemaDir'] as String;
      final manifest = laneManifests(_providersYaml, [lane]).single;
      final emitted = emittedEnums(manifest);
      final validated = validatedSets(p.join(_root, schemaDir));
      expect(missingMembers(emitted, validated), isEmpty);
      expect(
        untypedValidatedInputs(
          emitted,
          validated,
          computedOnly(
            File(p.join(_root, schemaDir, 'schema.json')).readAsStringSync(),
          ),
          allowed: _untypedValidated[lane] ?? const {},
        ),
        isEmpty,
        reason:
            'a validated input without an enum: set deriveEnums on its '
            'override and re-wrap, or give the reason in _untypedValidated',
      );

      final seeded = emitted.entries.firstWhere(
        (e) => (validated[e.key]?.length ?? 0) > 1,
      );
      final dropped = seeded.value.last;
      expect(
        missingMembers({
          ...emitted,
          seeded.key: [...seeded.value]..remove(dropped),
        }, validated),
        [contains('${seeded.key.$3}: provider validates "$dropped"')],
        reason: 'a seeded missing member fails',
      );
      final nested = emitted.keys.firstWhere(
        (k) => k.$3.contains('.') && validated.containsKey(k),
        orElse: () => seeded.key,
      );
      for (final untyped in {seeded.key, nested}) {
        expect(
          untypedValidatedInputs(
            {...emitted}..remove(untyped),
            validated,
            const {},
            allowed: _untypedValidated[lane] ?? const {},
          ),
          contains(
            '${untyped.$2}.${untyped.$3}: the provider validates '
            '${validated[untyped]}, but no enum types it',
          ),
          reason: 'a seeded untyped input fails',
        );
      }
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

  test('a computed-only attribute needs no enum, a stale reason fails', () {
    const status = (CatalogKind.resource, 'aws_x', 'status');
    const mode = (CatalogKind.resource, 'aws_x', 'config.mode');
    final validated = {
      status: ['ON', 'OFF'],
      mode: ['A', 'B'],
    };
    expect(untypedValidatedInputs({}, validated, {status}), [
      'aws_x.config.mode: the provider validates [A, B], but no enum types it',
    ]);
    expect(
      untypedValidatedInputs(
        {},
        validated,
        {status},
        allowed: {'aws_x.config.mode': 'seeded'},
      ),
      isEmpty,
    );
    expect(
      untypedValidatedInputs(
        {
          mode: ['A', 'B'],
        },
        validated,
        {status},
        allowed: {'aws_x.config.mode': 'seeded'},
      ),
      ['aws_x.config.mode: stale _untypedValidated entry'],
    );
    expect(
      missingMembers({
        mode: ['A'],
      }, validated),
      ['aws_x.config.mode: provider validates "B", the enum lacks it'],
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
