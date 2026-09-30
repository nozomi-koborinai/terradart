// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleAccessContextManagerAccessPolicyIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    AccessContextManagerAccessPolicyIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
