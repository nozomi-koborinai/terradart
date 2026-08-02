// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_attestor_iam_policy`.
const Set<String> _googleBinaryAuthorizationAttestorIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_binary_authorization_attestor_iam_policy`.
///
/// Authoritative IAM policy for a Binary Authorization attestor.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBinaryAuthorizationAttestorIamMember] for single-principal grants.
final class GoogleBinaryAuthorizationAttestorIamPolicy extends Resource {
  static const String tfType =
      'google_binary_authorization_attestor_iam_policy';

  GoogleBinaryAuthorizationAttestorIamPolicy({
    required super.localName,
    required TfArg<String> attestor,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attestor': attestor,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
