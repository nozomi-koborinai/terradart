// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../eventarc/google_eventarc_pipeline.dart' show GoogleEventarcPipeline;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_eventarc_pipeline_iam_member`.
const Set<String> _googleEventarcPipelineIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_eventarc_pipeline_iam_member` (derived from provider schema).
@immutable
final class EventarcPipelineIamMemberCondition {
  const EventarcPipelineIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_eventarc_pipeline_iam_member`.
final class GoogleEventarcPipelineIamMember extends Resource {
  static const String tfType = 'google_eventarc_pipeline_iam_member';

  GoogleEventarcPipelineIamMember(
    super.localName, {
    required RefTo<GoogleEventarcPipeline> pipeline,
    required TfArg<String> role,
    required IamPrincipal member,
    EventarcPipelineIamMemberCondition? condition,
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
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? pipeline.alsoAs('location')),
           'project': ?(project ?? pipeline.alsoAs('project')),
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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `pipeline_id` attribute.
  TfRef<String> get pipelineId => TfRef.attribute<String>(this, 'pipeline_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
