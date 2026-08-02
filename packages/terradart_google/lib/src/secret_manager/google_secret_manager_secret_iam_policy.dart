// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret_iam_policy`.
const Set<String> _googleSecretManagerSecretIamPolicySensitive = <String>{};

/// Factory wrapper for `google_secret_manager_secret_iam_policy`.
///
/// Authoritative IAM policy for a Secret Manager secret.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleSecretManagerSecretIamMember] for single-principal grants.
final class GoogleSecretManagerSecretIamPolicy extends Resource {
  static const String tfType = 'google_secret_manager_secret_iam_policy';

  GoogleSecretManagerSecretIamPolicy({
    required super.localName,
    required TfArg<String> secretId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secretId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerSecretIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
