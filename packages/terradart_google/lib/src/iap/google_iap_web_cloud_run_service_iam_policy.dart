// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_cloud_run_service_iam_policy`.
const Set<String> _googleIapWebCloudRunServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_web_cloud_run_service_iam_policy`.
///
/// Authoritative IAM policy for an IAP-protected Cloud Run service
/// (`iap.web.services.<service>`).
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebCloudRunServiceIamMember] for single-principal grants.
final class GoogleIapWebCloudRunServiceIamPolicy extends Resource {
  static const String tfType = 'google_iap_web_cloud_run_service_iam_policy';

  GoogleIapWebCloudRunServiceIamPolicy({
    required super.localName,
    required TfArg<String> cloudRunServiceName,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_run_service_name': cloudRunServiceName,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebCloudRunServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
