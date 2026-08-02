// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_analysis_note_iam_policy`.
const Set<String> _googleContainerAnalysisNoteIamPolicySensitive = <String>{};

/// Factory wrapper for `google_container_analysis_note_iam_policy`.
///
/// Authoritative IAM policy for a Container Analysis note.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleContainerAnalysisNoteIamMember] for single-principal grants.
final class GoogleContainerAnalysisNoteIamPolicy extends Resource {
  static const String tfType = 'google_container_analysis_note_iam_policy';

  GoogleContainerAnalysisNoteIamPolicy({
    required super.localName,
    required TfArg<String> note,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'note': note,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAnalysisNoteIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
