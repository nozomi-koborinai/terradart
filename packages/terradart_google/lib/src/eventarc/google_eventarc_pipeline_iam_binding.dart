// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline_iam_binding`.
const Set<String> _googleEventarcPipelineIamBindingSensitive = <String>{};

/// Factory wrapper for `google_eventarc_pipeline_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an Eventarc pipeline.
///
/// Replaces the entire member list for that role, overwriting grants
/// made outside this stack. Prefer [GoogleEventarcPipelineIamMember] for
/// additive grants.
final class GoogleEventarcPipelineIamBinding extends Resource {
  static const String tfType = 'google_eventarc_pipeline_iam_binding';

  GoogleEventarcPipelineIamBinding({
    required super.localName,
    required TfArg<String> pipelineId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
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
           'role': role,
           'members': members,
           'condition': ?condition,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcPipelineIamBinding>`.
  RefTo<GoogleEventarcPipelineIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
