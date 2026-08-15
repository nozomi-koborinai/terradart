// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
