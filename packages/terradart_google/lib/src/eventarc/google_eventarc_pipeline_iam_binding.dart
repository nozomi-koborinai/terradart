// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_eventarc_pipeline_iam_binding`.
const Set<String> _googleEventarcPipelineIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_eventarc_pipeline_iam_binding` (derived from provider schema).
@immutable
final class EventarcPipelineIamBindingCondition {
  const EventarcPipelineIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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
    EventarcPipelineIamBindingCondition? condition,
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
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
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

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `pipeline_id` attribute.
  TfRef<String> get pipelineIdRef =>
      TfRef.attribute<String>(this, 'pipeline_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
