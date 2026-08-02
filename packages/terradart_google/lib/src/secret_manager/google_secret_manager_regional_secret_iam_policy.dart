// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_regional_secret_iam_policy`.
const Set<String> _googleSecretManagerRegionalSecretIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_secret_manager_regional_secret_iam_policy`.
///
/// Authoritative IAM policy for a regional Secret Manager secret.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleSecretManagerRegionalSecretIamMember] for single-principal
/// grants.
final class GoogleSecretManagerRegionalSecretIamPolicy extends Resource {
  static const String tfType =
      'google_secret_manager_regional_secret_iam_policy';

  GoogleSecretManagerRegionalSecretIamPolicy({
    required super.localName,
    required TfArg<String> secretId,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secretId,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
