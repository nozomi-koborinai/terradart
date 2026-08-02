// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_type_app_engine_iam_policy`.
const Set<String> _googleIapWebTypeAppEngineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_web_type_app_engine_iam_policy`.
///
/// Authoritative IAM policy for IAP App Engine at project scope.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapWebTypeAppEngineIamMember] for single-principal grants.
final class GoogleIapWebTypeAppEngineIamPolicy extends Resource {
  static const String tfType = 'google_iap_web_type_app_engine_iam_policy';

  GoogleIapWebTypeAppEngineIamPolicy({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebTypeAppEngineIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
