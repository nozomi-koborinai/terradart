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

  final List<OrgPolicyPolicyRules>? rules;

  Map<String, Object?> encode() => {
    'inherit_from_parent': ?inheritFromParent?.toTfJson(),
    'reset': ?reset?.toTfJson(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `dry_run_spec.rules` block of
/// `google_org_policy_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OrgPolicyPolicyRules {
  const OrgPolicyPolicyRules({
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

  final OrgPolicyPolicyCondition? condition;

  final OrgPolicyPolicyValues? values;

  Map<String, Object?> encode() => {
    'allow_all': ?allowAll?.toTfJson(),
    'deny_all': ?denyAll?.toTfJson(),
    'enforce': ?enforce?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'condition': ?condition?.encode(),
    'values': ?values?.encode(),
  };
}

/// Typed helper for the `dry_run_spec.rules.condition` block of
/// `google_org_policy_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OrgPolicyPolicyCondition {
  const OrgPolicyPolicyCondition({
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
    'description': ?description?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `dry_run_spec.rules.values` block of
/// `google_org_policy_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OrgPolicyPolicyValues {
  const OrgPolicyPolicyValues({this.allowedValues, this.deniedValues});

  final TfArg<List<String>>? allowedValues;

  final TfArg<List<String>>? deniedValues;

  Map<String, Object?> encode() => {
    'allowed_values': ?allowedValues?.toTfJson(),
    'denied_values': ?deniedValues?.toTfJson(),
  };
}

/// Typed helper for the `spec` block of
/// `google_org_policy_policy` (derived from provider schema).
@immutable
final class OrgPolicyPolicySpec {
  const OrgPolicyPolicySpec({this.inheritFromParent, this.reset, this.rules});

  final TfArg<bool>? inheritFromParent;

  final TfArg<bool>? reset;

  final List<OrgPolicyPolicyRules>? rules;

  Map<String, Object?> encode() => {
    'inherit_from_parent': ?inheritFromParent?.toTfJson(),
    'reset': ?reset?.toTfJson(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
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

  GoogleOrgPolicyPolicy(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    required TfArg<String> parent,
    OrgPolicyPolicyDryRunSpec? dryRunSpec,
    OrgPolicyPolicySpec? spec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'name': name,
           'parent': parent,
           if (dryRunSpec != null)
             'dry_run_spec': TfArg.literal(dryRunSpec.encode()),
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrgPolicyPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrgPolicyPolicy>`.
  RefTo<GoogleOrgPolicyPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
