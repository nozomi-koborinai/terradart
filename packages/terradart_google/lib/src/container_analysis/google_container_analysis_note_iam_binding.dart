// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_analysis_note_iam_binding`.
const Set<String> _googleContainerAnalysisNoteIamBindingSensitive = <String>{};

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
    required TfArg<String> note,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'note': note,
           'role': role,
           'members': members,
           'condition': ?condition,
           'project': ?project,
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
}
