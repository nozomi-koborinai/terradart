// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_account_iam_policy`.
const Set<String> _googleServiceAccountIamPolicySensitive = <String>{};

/// Factory wrapper for `google_service_account_iam_policy`.
///
/// Authoritative IAM policy for a service account resource.
///
/// `policy_data` replaces the entire SA IAM policy. Prefer
/// [GoogleServiceAccountIamMember] for single-principal grants.
final class GoogleServiceAccountIamPolicy extends Resource {
  static const String tfType = 'google_service_account_iam_policy';

  GoogleServiceAccountIamPolicy({
    required super.localName,
    required TfArg<String> serviceAccountId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_account_id': serviceAccountId,
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
