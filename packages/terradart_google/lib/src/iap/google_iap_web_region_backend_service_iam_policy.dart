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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'web_region_backend_service': webRegionBackendService,
           'policy_data': policyData,
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionBackendServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebRegionBackendServiceIamPolicy>`.
  RefTo<GoogleIapWebRegionBackendServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `web_region_backend_service` attribute.
  TfRef<String> get webRegionBackendServiceRef =>
      TfRef.attribute<String>(this, 'web_region_backend_service');
}
