// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_backend_service_iam_policy`.
const Set<String> _googleIapWebBackendServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_web_backend_service_iam_policy`.
///
/// Authoritative IAM policy for an **external HTTPS load balancer backend
/// service** protected by Identity-Aware Proxy (IAP).
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleIapWebBackendServiceIamMember] for single-principal grants.
final class GoogleIapWebBackendServiceIamPolicy extends Resource {
  static const String tfType = 'google_iap_web_backend_service_iam_policy';

  GoogleIapWebBackendServiceIamPolicy({
    required super.localName,
    required TfArg<String> webBackendService,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'web_backend_service': webBackendService,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebBackendServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
