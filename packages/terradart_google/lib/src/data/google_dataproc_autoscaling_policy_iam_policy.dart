// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataproc/google_dataproc_autoscaling_policy_iam_policy.dart';

/// Sensitive field paths for `google_dataproc_autoscaling_policy_iam_policy`.
const Set<String> _googleDataprocAutoscalingPolicyIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_autoscaling_policy_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataprocAutoscalingPolicyIamPolicy extends Data {
  static const String tfType = 'google_dataproc_autoscaling_policy_iam_policy';

  DataGoogleDataprocAutoscalingPolicyIamPolicy({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> policyId,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'policy_id': policyId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocAutoscalingPolicyIamPolicySensitive;

  /// A reference to the `google_dataproc_autoscaling_policy_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataprocAutoscalingPolicyIamPolicy>`.
  RefTo<GoogleDataprocAutoscalingPolicyIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
