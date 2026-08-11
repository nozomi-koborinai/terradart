// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_region_backend_service_iam_policy`.
const Set<String> _googleIapWebRegionBackendServiceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_region_backend_service_iam_policy`.
///
/// Authoritative IAM policy for an IAP-protected regional backend service.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebRegionBackendServiceIamMember] for single-principal grants.
final class GoogleIapWebRegionBackendServiceIamPolicy extends Resource {
  static const String tfType =
      'google_iap_web_region_backend_service_iam_policy';

  GoogleIapWebRegionBackendServiceIamPolicy({
    required super.localName,
    required TfArg<String> webRegionBackendService,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'web_region_backend_service': webRegionBackendService,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionBackendServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
