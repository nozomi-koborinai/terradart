// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataproc/google_dataproc_job_iam_policy.dart';

/// Sensitive field paths for `google_dataproc_job_iam_policy`.
const Set<String> _googleDataprocJobIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataproc_job_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataprocJobIamPolicy extends Data {
  static const String tfType = 'google_dataproc_job_iam_policy';

  DataGoogleDataprocJobIamPolicy(
    super.localName, {
    required TfArg<String> jobId,
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'job_id': jobId, 'project': ?project, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocJobIamPolicySensitive;

  /// A reference to the `google_dataproc_job_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataprocJobIamPolicy>`.
  RefTo<GoogleDataprocJobIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
