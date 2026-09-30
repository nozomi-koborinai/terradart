// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_organization_access_policy`.
const Set<String> _googleIamOrganizationAccessPolicySensitive = <String>{};

/// Typed helper for the `details` block of
/// `google_iam_organization_access_policy` (derived from provider schema).
@immutable
final class IamOrganizationAccessPolicyDetails {
  const IamOrganizationAccessPolicyDetails({required this.rules});

  final List<IamOrganizationAccessPolicyDetailsRules> rules;

  Map<String, Object?> encode() => {
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `details.rules` block of
/// `google_iam_organization_access_policy` (derived from provider schema).
@immutable
final class IamOrganizationAccessPolicyDetailsRules {
  const IamOrganizationAccessPolicyDetailsRules({
    this.description,
    required this.effect,
    this.excludedPrincipals,
    required this.principals,
    this.conditions,
    required this.operation,
  });

  final TfArg<String>? description;

  final TfArg<IamOrganizationAccessPolicyDetailsRulesEffect> effect;

  final TfArg<List<String>>? excludedPrincipals;

  final TfArg<List<String>> principals;

  final List<IamOrganizationAccessPolicyDetailsRulesConditions>? conditions;

  final IamOrganizationAccessPolicyDetailsRulesOperation operation;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'effect': effect.toTfJson(),
    'excluded_principals': ?excludedPrincipals?.toTfJson(),
    'principals': principals.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
    'operation': operation.encode(),
  };
}

/// `effect` — derived from the provider schema description.
enum IamOrganizationAccessPolicyDetailsRulesEffect implements TerraformEnum {
  deny('DENY'),
  allow('ALLOW');

  const IamOrganizationAccessPolicyDetailsRulesEffect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `details.rules.conditions` block of
/// `google_iam_organization_access_policy` (derived from provider schema).
@immutable
final class IamOrganizationAccessPolicyDetailsRulesConditions {
  const IamOrganizationAccessPolicyDetailsRulesConditions({
    this.expression,
    required this.service,
  });

  final TfArg<String>? expression;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `details.rules.operation` block of
/// `google_iam_organization_access_policy` (derived from provider schema).
@immutable
final class IamOrganizationAccessPolicyDetailsRulesOperation {
  const IamOrganizationAccessPolicyDetailsRulesOperation({
    this.excludedPermissions,
    required this.permissions,
  });

  final TfArg<List<String>>? excludedPermissions;

  final TfArg<List<String>> permissions;

  Map<String, Object?> encode() => {
    'excluded_permissions': ?excludedPermissions?.toTfJson(),
    'permissions': permissions.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_organization_access_policy`.
///
/// Represents an IAM v3 Access Policy parented by a Google Cloud Organization.
/// This policy defines rules that allow or deny access to resources within the
/// specified organization based on principals and conditions. See the Cloud IAM
/// documentation for more details on Access Policies.
final class GoogleIamOrganizationAccessPolicy extends Resource {
  static const String tfType = 'google_iam_organization_access_policy';

  GoogleIamOrganizationAccessPolicy({
    required super.localName,
    required TfArg<String> accessPolicyId,
    required TfArg<String> location,
    required TfArg<String> organization,
    TfArg<String>? displayName,
    IamOrganizationAccessPolicyDetails? details,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policy_id': accessPolicyId,
           'location': location,
           'organization': organization,
           'display_name': ?displayName,
           if (details != null) 'details': TfArg.literal(details.encode()),
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamOrganizationAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamOrganizationAccessPolicy>`.
  RefTo<GoogleIamOrganizationAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyIdRef =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organizationRef =>
      TfRef.attribute<String>(this, 'organization');
}
