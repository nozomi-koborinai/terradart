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
    TfArg<String>? location,
    required TfArg<String> member,
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
           'location': ?location,
           'member': member,
           'pipeline_id': pipelineId,
           'project': ?project,
           'role': role,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEventarcPipelineIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEventarcPipelineIamMember>`.
  RefTo<GoogleEventarcPipelineIamMember> get ref => RefTo.of(this);
}
