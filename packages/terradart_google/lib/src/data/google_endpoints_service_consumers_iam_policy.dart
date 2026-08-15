// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_endpoints_service_consumers_iam_policy`.
const Set<String> _googleEndpointsServiceConsumersIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_endpoints_service_consumers_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleEndpointsServiceConsumersIamPolicy extends Data {
  static const String tfType = 'google_endpoints_service_consumers_iam_policy';

  DataGoogleEndpointsServiceConsumersIamPolicy({
    required super.localName,
    required TfArg<String> consumerProject,
    required TfArg<String> serviceName,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consumer_project': consumerProject,
           'service_name': serviceName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleEndpointsServiceConsumersIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
