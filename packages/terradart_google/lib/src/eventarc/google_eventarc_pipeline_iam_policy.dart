// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline_iam_policy`.
const Set<String> _googleEventarcPipelineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_eventarc_pipeline_iam_policy`.
///
/// Authoritative IAM policy for an Eventarc pipeline.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside this stack. Prefer [GoogleEventarcPipelineIamMember] for
/// single-principal grants.
final class GoogleEventarcPipelineIamPolicy extends Resource {
  static const String tfType = 'google_eventarc_pipeline_iam_policy';

  GoogleEventarcPipelineIamPolicy({
    required super.localName,
    required TfArg<String> pipelineId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pipeline_id': pipelineId,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcPipelineIamPolicy>`.
  RefTo<GoogleEventarcPipelineIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
