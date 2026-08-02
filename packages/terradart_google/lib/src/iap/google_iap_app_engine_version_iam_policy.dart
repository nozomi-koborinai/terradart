// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_app_engine_version_iam_policy`.
const Set<String> _googleIapAppEngineVersionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_app_engine_version_iam_policy`.
///
/// Authoritative IAM policy for an IAP App Engine version.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAppEngineVersionIamMember] for single-principal grants.
final class GoogleIapAppEngineVersionIamPolicy extends Resource {
  static const String tfType = 'google_iap_app_engine_version_iam_policy';

  GoogleIapAppEngineVersionIamPolicy({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> service,
    required TfArg<String> versionId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'service': service,
           'version_id': versionId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineVersionIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
