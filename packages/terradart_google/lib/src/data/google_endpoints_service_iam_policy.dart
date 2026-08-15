// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_endpoints_service_iam_policy`.
const Set<String> _googleEndpointsServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_endpoints_service_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleEndpointsServiceIamPolicy extends Data {
  static const String tfType = 'google_endpoints_service_iam_policy';

  DataGoogleEndpointsServiceIamPolicy({
    required super.localName,
    required TfArg<String> serviceName,
  }) : super(terraformType: tfType, argMap: {'service_name': serviceName});

  @override
  Set<String> get sensitiveFields => _googleEndpointsServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
