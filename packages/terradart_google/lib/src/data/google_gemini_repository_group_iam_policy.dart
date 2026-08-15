// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_repository_group_iam_policy`.
const Set<String> _googleGeminiRepositoryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gemini_repository_group_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleGeminiRepositoryGroupIamPolicy extends Data {
  static const String tfType = 'google_gemini_repository_group_iam_policy';

  DataGoogleGeminiRepositoryGroupIamPolicy({
    required super.localName,
    required TfArg<String> codeRepositoryIndex,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> repositoryGroupId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_repository_index': codeRepositoryIndex,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           'repository_group_id': repositoryGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
