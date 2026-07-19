// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_analysis_note_iam_member`.
const Set<String> _googleContainerAnalysisNoteIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_container_analysis_note_iam_member` (derived from provider schema).
@immutable
final class ContainerAnalysisNoteIamMemberCondition {
  const ContainerAnalysisNoteIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_container_analysis_note_iam_member`.
///
/// IAM member on a Container Analysis note (for example
/// `roles/containeranalysis.notes.occurrences.viewer`).
///
/// Example:
/// ```dart
/// GoogleContainerAnalysisNoteIamMember(
///   localName: 'note_viewer',
///   note: TfArg.ref(note.nameRef),
///   role: TfArg.literal('roles/containeranalysis.notes.occurrences.viewer'),
///   member: TfArg.literal('serviceAccount:ci@$projectId.iam.gserviceaccount.com'),
/// );
/// ```
final class GoogleContainerAnalysisNoteIamMember extends Resource {
  static const String tfType = 'google_container_analysis_note_iam_member';

  GoogleContainerAnalysisNoteIamMember({
    required super.localName,
    required TfArg<String> note,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    ContainerAnalysisNoteIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'note': note,
           'role': role,
           'member': member,
           if (project != null) 'project': project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAnalysisNoteIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
