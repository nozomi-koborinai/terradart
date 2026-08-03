// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_policy_iam_binding`.
const Set<String> _googleAccessContextManagerAccessPolicyIamBindingSensitive =
    <String>{};

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
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessPolicyIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
