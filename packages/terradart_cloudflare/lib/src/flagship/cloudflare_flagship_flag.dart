// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_flagship_flag`.
const Set<String> _cloudflareFlagshipFlagSensitive = <String>{};

/// Flagship Flag enum for `type`.
extension type const FlagshipFlagType._(TfArg<String> _)
    implements TfArg<String> {
  FlagshipFlagType.variable(String name) : this._(TfArg.variable(name));
  FlagshipFlagType.expression(String template)
    : this._(TfArg.expression(template));
  const FlagshipFlagType.arg(TfArg<String> arg) : this._(arg);

  static const boolean = FlagshipFlagType._(TfArgLiteral('boolean'));
  static const string = FlagshipFlagType._(TfArgLiteral('string'));
  static const number = FlagshipFlagType._(TfArgLiteral('number'));
  static const json = FlagshipFlagType._(TfArgLiteral('json'));

  static const List<FlagshipFlagType> values = [boolean, string, number, json];
}

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

  final List<FlagshipFlagConditions> conditions;

  final FlagshipFlagRollout? rollout;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'serve_variation': serveVariation.toTfJson(),
    'conditions': [for (final e in conditions) e.encode()],
    'rollout': ?rollout?.encode(),
  };
}

/// Typed helper for the `rules.conditions` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagConditions {
  const FlagshipFlagConditions({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final FlagshipFlagLogicalOperator? logicalOperator;

  final FlagshipFlagOperator? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagClauses>? clauses;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// `logical_operator` — derived from the provider schema description.
extension type const FlagshipFlagLogicalOperator._(TfArg<String> _)
    implements TfArg<String> {
  FlagshipFlagLogicalOperator.variable(String name)
    : this._(TfArg.variable(name));
  FlagshipFlagLogicalOperator.expression(String template)
    : this._(TfArg.expression(template));
  const FlagshipFlagLogicalOperator.arg(TfArg<String> arg) : this._(arg);

  static const and = FlagshipFlagLogicalOperator._(TfArgLiteral('AND'));
  static const or = FlagshipFlagLogicalOperator._(TfArgLiteral('OR'));

  static const List<FlagshipFlagLogicalOperator> values = [and, or];
}

/// `operator` — derived from the provider schema description.
extension type const FlagshipFlagOperator._(TfArg<String> _)
    implements TfArg<String> {
  FlagshipFlagOperator.variable(String name) : this._(TfArg.variable(name));
  FlagshipFlagOperator.expression(String template)
    : this._(TfArg.expression(template));
  const FlagshipFlagOperator.arg(TfArg<String> arg) : this._(arg);

  static const equals = FlagshipFlagOperator._(TfArgLiteral('equals'));
  static const notEquals = FlagshipFlagOperator._(TfArgLiteral('not_equals'));
  static const greaterThan = FlagshipFlagOperator._(
    TfArgLiteral('greater_than'),
  );
  static const lessThan = FlagshipFlagOperator._(TfArgLiteral('less_than'));
  static const greaterThanOrEquals = FlagshipFlagOperator._(
    TfArgLiteral('greater_than_or_equals'),
  );
  static const lessThanOrEquals = FlagshipFlagOperator._(
    TfArgLiteral('less_than_or_equals'),
  );
  static const contains = FlagshipFlagOperator._(TfArgLiteral('contains'));
  static const startsWith = FlagshipFlagOperator._(TfArgLiteral('starts_with'));
  static const endsWith = FlagshipFlagOperator._(TfArgLiteral('ends_with'));
  static const inCase = FlagshipFlagOperator._(TfArgLiteral('in'));
  static const notIn = FlagshipFlagOperator._(TfArgLiteral('not_in'));

  static const List<FlagshipFlagOperator> values = [
    equals,
    notEquals,
    greaterThan,
    lessThan,
    greaterThanOrEquals,
    lessThanOrEquals,
    contains,
    startsWith,
    endsWith,
    inCase,
    notIn,
  ];
}

/// Typed helper for the `rules.conditions.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagClauses {
  const FlagshipFlagClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final FlagshipFlagLogicalOperator? logicalOperator;

  final FlagshipFlagOperator? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagClausesClauses>? clauses;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagClausesClauses {
  const FlagshipFlagClausesClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final FlagshipFlagLogicalOperator? logicalOperator;

  final FlagshipFlagOperator? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagConditionsClauses>? clauses;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagConditionsClauses {
  const FlagshipFlagConditionsClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final FlagshipFlagLogicalOperator? logicalOperator;

  final FlagshipFlagOperator? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagRulesClauses>? clauses;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRulesClauses {
  const FlagshipFlagRulesClauses({
    this.attribute,
    this.logicalOperator,
    this.operator,
    this.value,
    this.clauses,
  });

  final TfArg<String>? attribute;

  final FlagshipFlagLogicalOperator? logicalOperator;

  final FlagshipFlagOperator? operator;

  final TfArg<String>? value;

  final List<FlagshipFlagClausesClausesClauses>? clauses;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
    if (clauses != null) 'clauses': [for (final e in clauses!) e.encode()],
  };
}

/// Typed helper for the `rules.conditions.clauses.clauses.clauses.clauses.clauses` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagClausesClausesClauses {
  const FlagshipFlagClausesClausesClauses({
    this.attribute,
    this.clauses,
    this.logicalOperator,
    this.operator,
    this.value,
  });

  final TfArg<String>? attribute;

  final TfArg<List<String>>? clauses;

  final FlagshipFlagLogicalOperator? logicalOperator;

  final FlagshipFlagOperator? operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'clauses': ?clauses?.toTfJson(),
    'logical_operator': ?logicalOperator?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rules.rollout` block of
/// `cloudflare_flagship_flag` (derived from provider schema).
@immutable
final class FlagshipFlagRollout {
  const FlagshipFlagRollout({this.attribute, required this.percentage});

  final TfArg<String>? attribute;

  final TfArg<num> percentage;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
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

  CloudflareFlagshipFlag(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> appId,
    required TfArg<String> defaultVariation,
    TfArg<String>? description,
    required TfArg<bool> enabled,
    required TfArg<String> key,
    FlagshipFlagType? type,
    required TfArg<Map<String, String>> variations,
    required List<FlagshipFlagRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'app_id': appId,
           'default_variation': defaultVariation,
           'description': ?description,
           'enabled': enabled,
           'key': key,
           'type': ?type,
           'variations': variations,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipFlagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareFlagshipFlag>`.
  RefTo<CloudflareFlagshipFlag> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `updated_by` attribute.
  TfRef<String> get updatedBy => TfRef.attribute<String>(this, 'updated_by');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `default_variation` attribute.
  TfRef<String> get defaultVariation =>
      TfRef.attribute<String>(this, 'default_variation');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `variations` attribute.
  TfRef<Map<String, String>> get variations =>
      TfRef.attribute<Map<String, String>>(this, 'variations');
}
