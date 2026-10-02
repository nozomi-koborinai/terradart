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

  final List<IamProjectAccessPolicyRules> rules;

  @internal
  Map<String, Object?> encode() => {
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `details.rules` block of
/// `google_iam_project_access_policy` (derived from provider schema).
@immutable
final class IamProjectAccessPolicyRules {
  const IamProjectAccessPolicyRules({
    this.description,
    required this.effect,
    this.excludedPrincipals,
    required this.principals,
    this.conditions,
    required this.operation,
  });

  final TfArg<String>? description;

  final IamProjectAccessPolicyEffect effect;

  final TfArg<List<String>>? excludedPrincipals;

  final TfArg<List<String>> principals;

  final List<IamProjectAccessPolicyConditions>? conditions;

  final IamProjectAccessPolicyOperation operation;

  @internal
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
extension type const IamProjectAccessPolicyEffect._(TfArg<String> _)
    implements TfArg<String> {
  IamProjectAccessPolicyEffect.variable(String name)
    : this._(TfArg.variable(name));
  IamProjectAccessPolicyEffect.expression(String template)
    : this._(TfArg.expression(template));
  const IamProjectAccessPolicyEffect.arg(TfArg<String> arg) : this._(arg);

  static const deny = IamProjectAccessPolicyEffect._(TfArgLiteral('DENY'));
  static const allow = IamProjectAccessPolicyEffect._(TfArgLiteral('ALLOW'));

  static const List<IamProjectAccessPolicyEffect> values = [deny, allow];
}

/// Typed helper for the `details.rules.conditions` block of
/// `google_iam_project_access_policy` (derived from provider schema).
@immutable
final class IamProjectAccessPolicyConditions {
  const IamProjectAccessPolicyConditions({
    this.expression,
    required this.service,
  });

  final TfArg<String>? expression;

  final TfArg<String> service;

  @internal
  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `details.rules.operation` block of
/// `google_iam_project_access_policy` (derived from provider schema).
@immutable
final class IamProjectAccessPolicyOperation {
  const IamProjectAccessPolicyOperation({
    this.excludedPermissions,
    required this.permissions,
  });

  final TfArg<List<String>>? excludedPermissions;

  final TfArg<List<String>> permissions;

  @internal
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

  GoogleIamProjectAccessPolicy(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
