// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iap/google_iap_web_cloud_run_service_iam_policy.dart';

/// Sensitive field paths for `google_iap_web_cloud_run_service_iam_policy`.
const Set<String> _googleIapWebCloudRunServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_web_cloud_run_service_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapWebCloudRunServiceIamPolicy extends Data {
  static const String tfType = 'google_iap_web_cloud_run_service_iam_policy';

  DataGoogleIapWebCloudRunServiceIamPolicy({
    required super.localName,
    required TfArg<String> cloudRunServiceName,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_run_service_name': cloudRunServiceName,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebCloudRunServiceIamPolicySensitive;

  /// A reference to the `google_iap_web_cloud_run_service_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleIapWebCloudRunServiceIamPolicy>`.
  RefTo<GoogleIapWebCloudRunServiceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `cloud_run_service_name` attribute.
  TfRef<String> get cloudRunServiceName =>
      TfRef.attribute<String>(this, 'cloud_run_service_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
