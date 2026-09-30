// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_project_access_policy`.
const Set<String> _googleIamProjectAccessPolicySensitive = <String>{};

/// Typed helper for the `details` block of
/// `google_iam_project_access_policy` (derived from provider schema).
@immutable
final class IamProjectAccessPolicyDetails {
  const IamProjectAccessPolicyDetails({required this.rules});

  final List<IamProjectAccessPolicyDetailsRules> rules;

  Map<String, Object?> encode() => {
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `details.rules` block of
/// `google_iam_project_access_policy` (derived from provider schema).
@immutable
final class IamProjectAccessPolicyDetailsRules {
  const IamProjectAccessPolicyDetailsRules({
    this.description,
    required this.effect,
    this.excludedPrincipals,
    required this.principals,
    this.conditions,
    required this.operation,
  });

  final TfArg<String>? description;

  final TfArg<IamProjectAccessPolicyDetailsRulesEffect> effect;

  final TfArg<List<String>>? excludedPrincipals;

  final TfArg<List<String>> principals;

  final List<IamProjectAccessPolicyDetailsRulesConditions>? conditions;

  final IamProjectAccessPolicyDetailsRulesOperation operation;

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
enum IamProjectAccessPolicyDetailsRulesEffect implements TerraformEnum {
  deny('DENY'),
  allow('ALLOW');

  const IamProjectAccessPolicyDetailsRulesEffect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `details.rules.conditions` block of
/// `google_iam_project_access_policy` (derived from provider schema).
@immutable
final class IamProjectAccessPolicyDetailsRulesConditions {
  const IamProjectAccessPolicyDetailsRulesConditions({
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
/// `google_iam_project_access_policy` (derived from provider schema).
@immutable
final class IamProjectAccessPolicyDetailsRulesOperation {
  const IamProjectAccessPolicyDetailsRulesOperation({
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

/// Factory wrapper for `google_iam_project_access_policy`.
///
/// Represents an IAM v3 Access Policy parented by a Project. This policy
/// defines rules that allow or deny access to resources within the specified
/// project based on principals and conditions. See the Cloud IAM documentation
/// for more details on Access Policies.
final class GoogleIamProjectAccessPolicy extends Resource {
  static const String tfType = 'google_iam_project_access_policy';

  GoogleIamProjectAccessPolicy({
    required super.localName,
    required TfArg<String> accessPolicyId,
    required TfArg<String> location,
    TfArg<String>? displayName,
    IamProjectAccessPolicyDetails? details,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policy_id': accessPolicyId,
           'location': location,
           'display_name': ?displayName,
           if (details != null) 'details': TfArg.literal(details.encode()),
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamProjectAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamProjectAccessPolicy>`.
  RefTo<GoogleIamProjectAccessPolicy> get ref => RefTo.of(this);

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
}
