// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_flagship_flag`.
const Set<String> _cloudflareFlagshipFlagSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRules {
  const FlagshipFlagRules({
    required this.priority,
    required this.serveVariation,
    required this.conditions,
    this.rollout,
  });

  final TfArg<num> priority;

  final TfArg<String> serveVariation;

  final List<FlagshipFlagRulesConditions> conditions;

  final FlagshipFlagRulesRollout? rollout;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'serve_variation': serveVariation.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
    if (rollout != null) 'rollout': rollout!.encode(),
  };
}

/// Typed helper for the `rules.conditions` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesConditions {
  const FlagshipFlagRulesConditions({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final TfArg<String>? logicalOperator;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagRulesConditionsClauses>? clauses;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesConditionsClauses {
  const FlagshipFlagRulesConditionsClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final TfArg<String>? logicalOperator;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagRulesConditionsClausesClauses>? clauses;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesConditionsClausesClauses {
  const FlagshipFlagRulesConditionsClausesClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final TfArg<String>? logicalOperator;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagRulesConditionsClausesClausesClauses>? clauses;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesConditionsClausesClausesClauses {
  const FlagshipFlagRulesConditionsClausesClausesClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final TfArg<String>? logicalOperator;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagRulesConditionsClausesClausesClausesClauses>? clauses;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesConditionsClausesClausesClausesClauses {
  const FlagshipFlagRulesConditionsClausesClausesClausesClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final TfArg<String>? logicalOperator;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagRulesConditionsClausesClausesClausesClausesClauses>?
  clauses;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses.clauses.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesConditionsClausesClausesClausesClausesClauses {
  const FlagshipFlagRulesConditionsClausesClausesClausesClausesClauses({
    this.attribute,
    this.clauses,
    this.logicalOperator,
    this.operator,
    this.value,
  });

  final TfArg<String>? attribute;

  final TfArg<List<Object?>>? clauses;

  final TfArg<String>? logicalOperator;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (clauses != null) 'clauses': clauses!.toTfJson(),
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `rules.rollout` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesRollout {
  const FlagshipFlagRulesRollout({this.attribute, required this.percentage});

  final TfArg<String>? attribute;

  final TfArg<num> percentage;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    'percentage': percentage.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_flagship_flag`.
///
/// Accepted Permissions
///
/// - `Flagship Read` - `Flagship Write`
final class CloudflareFlagshipFlag extends Resource {
  static const String tfType = 'cloudflare_flagship_flag';

  CloudflareFlagshipFlag({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> appId,
    required TfArg<String> defaultVariation,
    TfArg<String>? description,
    required TfArg<bool> enabled,
    TfArg<String>? flagKey,
    required TfArg<String> key,
    TfArg<String>? type,
    required TfArg<Map<String, String>> variations,
    required List<FlagshipFlagRules> rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'app_id': appId,
           'default_variation': defaultVariation,
           if (description != null) 'description': description,
           'enabled': enabled,
           if (flagKey != null) 'flag_key': flagKey,
           'key': key,
           if (type != null) 'type': type,
           'variations': variations,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipFlagSensitive;

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `updated_by` attribute.
  TfRef<String> get updatedBy => TfRef.attribute<String>(this, 'updated_by');
}
