// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../container_analysis/google_container_analysis_note.dart'
    show GoogleContainerAnalysisNote;

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

  GoogleContainerAnalysisNoteIamPolicy(
    super.localName, {
    required RefTo<GoogleContainerAnalysisNote> note,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'note': note.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? note.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAnalysisNoteIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAnalysisNoteIamPolicy>`.
  RefTo<GoogleContainerAnalysisNoteIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `note` attribute.
  TfRef<String> get note => TfRef.attribute<String>(this, 'note');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
