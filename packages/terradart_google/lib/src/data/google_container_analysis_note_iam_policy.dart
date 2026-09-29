// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_analysis/google_container_analysis_note_iam_policy.dart';

/// Sensitive field paths for `google_container_analysis_note_iam_policy`.
const Set<String> _googleContainerAnalysisNoteIamPolicySensitive = <String>{};

/// Factory wrapper for `google_container_analysis_note_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerAnalysisNoteIamPolicy extends Data {
  static const String tfType = 'google_container_analysis_note_iam_policy';

  DataGoogleContainerAnalysisNoteIamPolicy({
    required super.localName,
    required TfArg<String> note,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'note': note, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAnalysisNoteIamPolicySensitive;

  /// A reference to the `google_container_analysis_note_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleContainerAnalysisNoteIamPolicy>`.
  RefTo<GoogleContainerAnalysisNoteIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
