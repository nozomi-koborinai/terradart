// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container_analysis/google_container_analysis_note.dart'
    show GoogleContainerAnalysisNote;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_container_analysis_note_iam_binding`.
const Set<String> _googleContainerAnalysisNoteIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_container_analysis_note_iam_binding` (derived from provider schema).
@immutable
final class ContainerAnalysisNoteIamBindingCondition {
  const ContainerAnalysisNoteIamBindingCondition({
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

/// Factory wrapper for `google_container_analysis_note_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Container Analysis
/// note.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleContainerAnalysisNoteIamMember] for additive grants.
final class GoogleContainerAnalysisNoteIamBinding extends Resource {
  static const String tfType = 'google_container_analysis_note_iam_binding';

  GoogleContainerAnalysisNoteIamBinding({
    required super.localName,
    required RefTo<GoogleContainerAnalysisNote> note,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ContainerAnalysisNoteIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'note': note.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? note.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAnalysisNoteIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAnalysisNoteIamBinding>`.
  RefTo<GoogleContainerAnalysisNoteIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `note` attribute.
  TfRef<String> get note => TfRef.attribute<String>(this, 'note');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
