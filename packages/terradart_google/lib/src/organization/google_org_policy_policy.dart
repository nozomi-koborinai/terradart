// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_org_policy_policy`.
const Set<String> _googleOrgPolicyPolicySensitive = <String>{};

/// Typed helper for the `dry_run_spec` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicyDryRunSpec {
  const OrgPolicyPolicyDryRunSpec({
    this.inheritFromParent,
    this.reset,
    this.rules,
  });

  final TfArg<bool>? inheritFromParent;

  final TfArg<bool>? reset;

  final List<OrgPolicyPolicyDryRunSpecRules>? rules;

  Map<String, Object?> encode() => {
    if (inheritFromParent != null)
      'inherit_from_parent': inheritFromParent!.toTfJson(),
    if (reset != null) 'reset': reset!.toTfJson(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `dry_run_spec.rules` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicyDryRunSpecRules {
  const OrgPolicyPolicyDryRunSpecRules({
    this.allowAll,
    this.denyAll,
    this.enforce,
    this.parameters,
    this.condition,
    this.values,
  });

  final TfArg<String>? allowAll;

  final TfArg<String>? denyAll;

  final TfArg<String>? enforce;

  final TfArg<String>? parameters;

  final OrgPolicyPolicyDryRunSpecRulesCondition? condition;

  final OrgPolicyPolicyDryRunSpecRulesValues? values;

  Map<String, Object?> encode() => {
    if (allowAll != null) 'allow_all': allowAll!.toTfJson(),
    if (denyAll != null) 'deny_all': denyAll!.toTfJson(),
    if (enforce != null) 'enforce': enforce!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (condition != null) 'condition': condition!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `dry_run_spec.rules.condition` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicyDryRunSpecRulesCondition {
  const OrgPolicyPolicyDryRunSpecRulesCondition({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String>? expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `dry_run_spec.rules.values` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicyDryRunSpecRulesValues {
  const OrgPolicyPolicyDryRunSpecRulesValues({
    this.allowedValues,
    this.deniedValues,
  });

  final TfArg<List<Object?>>? allowedValues;

  final TfArg<List<Object?>>? deniedValues;

  Map<String, Object?> encode() => {
    if (allowedValues != null) 'allowed_values': allowedValues!.toTfJson(),
    if (deniedValues != null) 'denied_values': deniedValues!.toTfJson(),
  };
}

/// Typed helper for the `spec` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicySpec {
  const OrgPolicyPolicySpec({this.inheritFromParent, this.reset, this.rules});

  final TfArg<bool>? inheritFromParent;

  final TfArg<bool>? reset;

  final List<OrgPolicyPolicySpecRules>? rules;

  Map<String, Object?> encode() => {
    if (inheritFromParent != null)
      'inherit_from_parent': inheritFromParent!.toTfJson(),
    if (reset != null) 'reset': reset!.toTfJson(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `spec.rules` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicySpecRules {
  const OrgPolicyPolicySpecRules({
    this.allowAll,
    this.denyAll,
    this.enforce,
    this.parameters,
    this.condition,
    this.values,
  });

  final TfArg<String>? allowAll;

  final TfArg<String>? denyAll;

  final TfArg<String>? enforce;

  final TfArg<String>? parameters;

  final OrgPolicyPolicySpecRulesCondition? condition;

  final OrgPolicyPolicySpecRulesValues? values;

  Map<String, Object?> encode() => {
    if (allowAll != null) 'allow_all': allowAll!.toTfJson(),
    if (denyAll != null) 'deny_all': denyAll!.toTfJson(),
    if (enforce != null) 'enforce': enforce!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (condition != null) 'condition': condition!.encode(),
    if (values != null) 'values': values!.encode(),
  };
}

/// Typed helper for the `spec.rules.condition` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicySpecRulesCondition {
  const OrgPolicyPolicySpecRulesCondition({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String>? expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `spec.rules.values` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicySpecRulesValues {
  const OrgPolicyPolicySpecRulesValues({this.allowedValues, this.deniedValues});

  final TfArg<List<Object?>>? allowedValues;

  final TfArg<List<Object?>>? deniedValues;

  Map<String, Object?> encode() => {
    if (allowedValues != null) 'allowed_values': allowedValues!.toTfJson(),
    if (deniedValues != null) 'denied_values': deniedValues!.toTfJson(),
  };
}

/// Factory wrapper for `google_org_policy_policy`.
///
/// Defines an organization policy which is used to specify constraints for
/// configurations of Google Cloud resources.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleOrgPolicyPolicy extends Resource {
  static const String tfType = 'google_org_policy_policy';

  GoogleOrgPolicyPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    required TfArg<String> parent,
    OrgPolicyPolicyDryRunSpec? dryRunSpec,
    OrgPolicyPolicySpec? spec,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'name': name,
           'parent': parent,
           if (dryRunSpec != null)
             'dry_run_spec': TfArg.literal(dryRunSpec.encode()),
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrgPolicyPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
