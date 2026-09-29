// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline_iam_member`.
const Set<String> _googleEventarcPipelineIamMemberSensitive = <String>{};

/// Factory wrapper for `google_eventarc_pipeline_iam_member`.
final class GoogleEventarcPipelineIamMember extends Resource {
  static const String tfType = 'google_eventarc_pipeline_iam_member';

  GoogleEventarcPipelineIamMember({
    required super.localName,
    required TfArg<String> pipelineId,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           'condition': ?condition,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcPipelineIamMember>`.
  RefTo<GoogleEventarcPipelineIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
