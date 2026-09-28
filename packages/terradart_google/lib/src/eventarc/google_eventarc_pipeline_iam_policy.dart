// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline_iam_policy`.
const Set<String> _googleEventarcPipelineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_eventarc_pipeline_iam_policy`.
///
/// Authoritative IAM policy.
///
/// Replaces the entire IAM policy, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_eventarc_pipeline_iam_member` for single grants.
final class GoogleEventarcPipelineIamPolicy extends Resource {
  static const String tfType = 'google_eventarc_pipeline_iam_policy';

  GoogleEventarcPipelineIamPolicy({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> pipelineId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'pipeline_id': pipelineId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineIamPolicySensitive;
}
