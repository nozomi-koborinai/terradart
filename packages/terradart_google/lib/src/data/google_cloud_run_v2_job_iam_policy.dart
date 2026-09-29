// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloud_run/google_cloud_run_v2_job_iam_policy.dart';

/// Sensitive field paths for `google_cloud_run_v2_job_iam_policy`.
const Set<String> _googleCloudRunV2JobIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_job_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudRunV2JobIamPolicy extends Data {
  static const String tfType = 'google_cloud_run_v2_job_iam_policy';

  DataGoogleCloudRunV2JobIamPolicy({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': ?location, 'name': name, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2JobIamPolicySensitive;

  /// A reference to the `google_cloud_run_v2_job_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleCloudRunV2JobIamPolicy>`.
  RefTo<GoogleCloudRunV2JobIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
