// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_autoscaling_policy_iam_policy`.
const Set<String> _googleDataprocAutoscalingPolicyIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_autoscaling_policy_iam_policy`.
///
/// Authoritative IAM policy for a Dataproc autoscaling policy.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocAutoscalingPolicyIamMember] for single-principal grants.
final class GoogleDataprocAutoscalingPolicyIamPolicy extends Resource {
  static const String tfType = 'google_dataproc_autoscaling_policy_iam_policy';

  GoogleDataprocAutoscalingPolicyIamPolicy({
    required super.localName,
    required TfArg<String> policyId,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_id': policyId,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocAutoscalingPolicyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
