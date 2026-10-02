// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../access_context_manager/google_access_context_manager_access_policy.dart'
    show GoogleAccessContextManagerAccessPolicy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_access_context_manager_access_policy_iam_binding`.
const Set<String> _googleAccessContextManagerAccessPolicyIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_access_context_manager_access_policy_iam_binding` (derived from provider schema).
@immutable
final class AccessContextManagerAccessPolicyIamBindingCondition {
  const AccessContextManagerAccessPolicyIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_access_context_manager_access_policy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an Access Context
/// Manager access policy.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleAccessContextManagerAccessPolicyIamMember] for additive grants.
final class GoogleAccessContextManagerAccessPolicyIamBinding extends Resource {
  static const String tfType =
      'google_access_context_manager_access_policy_iam_binding';

  GoogleAccessContextManagerAccessPolicyIamBinding(
    super.localName, {
    required RefTo<GoogleAccessContextManagerAccessPolicy> accessPolicy,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    AccessContextManagerAccessPolicyIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': accessPolicy.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessPolicyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerAccessPolicyIamBinding>`.
  RefTo<GoogleAccessContextManagerAccessPolicyIamBinding> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
