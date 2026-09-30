// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloud_run/google_cloud_run_service_iam_policy.dart';

/// Sensitive field paths for `google_cloud_run_service_iam_policy`.
const Set<String> _googleCloudRunServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_run_service_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudRunServiceIamPolicy extends Data {
  static const String tfType = 'google_cloud_run_service_iam_policy';

  DataGoogleCloudRunServiceIamPolicy({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> service,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?location,
           'project': ?project,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceIamPolicySensitive;

  /// A reference to the `google_cloud_run_service_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleCloudRunServiceIamPolicy>`.
  RefTo<GoogleCloudRunServiceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get serviceRef => TfRef.attribute<String>(this, 'service');
}
