// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container_analysis/google_container_analysis_note.dart'
    show GoogleContainerAnalysisNote;
import '../iam/iam_principal.dart' show IamPrincipal;

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
    'description': ?description?.toTfJson(),
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
///   note: note.ref,
///   role: TfArg.literal('roles/containeranalysis.notes.occurrences.viewer'),
///   member: .serviceAccount('ci@$projectId.iam.gserviceaccount.com'),
/// );
/// ```
final class GoogleContainerAnalysisNoteIamMember extends Resource {
  static const String tfType = 'google_container_analysis_note_iam_member';

  GoogleContainerAnalysisNoteIamMember({
    required super.localName,
    required RefTo<GoogleContainerAnalysisNote> note,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    ContainerAnalysisNoteIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'note': note.encodeAs('name'),
           'role': role,
           'member': member,
           'project': ?(project ?? note.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAnalysisNoteIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAnalysisNoteIamMember>`.
  RefTo<GoogleContainerAnalysisNoteIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `note` attribute.
  TfRef<String> get note => TfRef.attribute<String>(this, 'note');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
