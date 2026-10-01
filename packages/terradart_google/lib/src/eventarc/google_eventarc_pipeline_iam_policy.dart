// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../eventarc/google_eventarc_pipeline.dart' show GoogleEventarcPipeline;

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

  GoogleEventarcPipelineIamPolicy(
    super.localName, {
    required RefTo<GoogleEventarcPipeline> pipeline,
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
           'pipeline_id': pipeline.encodeAs('pipeline_id'),
           'policy_data': policyData,
           'location': ?(location ?? pipeline.alsoAs('location')),
           'project': ?(project ?? pipeline.alsoAs('project')),
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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `pipeline_id` attribute.
  TfRef<String> get pipelineId => TfRef.attribute<String>(this, 'pipeline_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
