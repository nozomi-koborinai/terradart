// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../endpoints/google_endpoints_service.dart' show GoogleEndpointsService;

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
    required RefTo<GoogleEndpointsService> service,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_name': service.encodeAs('service_name'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEndpointsServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEndpointsServiceIamPolicy>`.
  RefTo<GoogleEndpointsServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');
}
