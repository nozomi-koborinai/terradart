// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_policy_iam_policy`.
const Set<String> _googleAccessContextManagerAccessPolicyIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_access_context_manager_access_policy_iam_policy`.
///
/// Authoritative IAM policy for an Access Context Manager access policy.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleAccessContextManagerAccessPolicyIamMember] for single-principal
/// grants.
final class GoogleAccessContextManagerAccessPolicyIamPolicy extends Resource {
  static const String tfType =
      'google_access_context_manager_access_policy_iam_policy';

  GoogleAccessContextManagerAccessPolicyIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessPolicyIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
