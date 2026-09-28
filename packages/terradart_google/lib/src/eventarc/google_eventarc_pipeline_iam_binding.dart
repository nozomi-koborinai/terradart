// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline_iam_binding`.
const Set<String> _googleEventarcPipelineIamBindingSensitive = <String>{};

/// Factory wrapper for `google_eventarc_pipeline_iam_binding`.
///
/// Authoritative IAM binding for a single `role`.
///
/// Replaces the entire member list for that role, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_eventarc_pipeline_iam_member` for single grants.
final class GoogleEventarcPipelineIamBinding extends Resource {
  static const String tfType = 'google_eventarc_pipeline_iam_binding';

  GoogleEventarcPipelineIamBinding({
    required super.localName,
    TfArg<String>? location,
    required TfArg<List<String>> members,
    required TfArg<String> pipelineId,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'members': members,
           'pipeline_id': pipelineId,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineIamBindingSensitive;
}
