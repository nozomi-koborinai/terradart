// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline_iam_policy`.
const Set<String> _googleEventarcPipelineIamPolicySensitive = <String>{};

/// Factory wrapper for `google_eventarc_pipeline_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleEventarcPipelineIamPolicy extends Data {
  static const String tfType = 'google_eventarc_pipeline_iam_policy';

  DataGoogleEventarcPipelineIamPolicy({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> pipelineId,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'pipeline_id': pipelineId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
