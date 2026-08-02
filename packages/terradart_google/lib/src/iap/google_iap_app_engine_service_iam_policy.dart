// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_app_engine_service_iam_policy`.
const Set<String> _googleIapAppEngineServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_app_engine_service_iam_policy`.
///
/// Authoritative IAM policy for an IAP App Engine service.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapAppEngineServiceIamMember] for single-principal grants.
final class GoogleIapAppEngineServiceIamPolicy extends Resource {
  static const String tfType = 'google_iap_app_engine_service_iam_policy';

  GoogleIapAppEngineServiceIamPolicy({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> service,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'service': service,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapAppEngineServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
