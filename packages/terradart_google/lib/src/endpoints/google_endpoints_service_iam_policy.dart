// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_endpoints_service_iam_policy`.
const Set<String> _googleEndpointsServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_endpoints_service_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Endpoints service.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleEndpointsServiceIamMember] for single-principal grants.
final class GoogleEndpointsServiceIamPolicy extends Resource {
  static const String tfType = 'google_endpoints_service_iam_policy';

  GoogleEndpointsServiceIamPolicy({
    required super.localName,
    required TfArg<String> serviceName,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'service_name': serviceName, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleEndpointsServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
