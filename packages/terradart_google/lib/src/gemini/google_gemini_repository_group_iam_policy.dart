// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_repository_group_iam_policy`.
const Set<String> _googleGeminiRepositoryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gemini_repository_group_iam_policy`.
///
/// Authoritative IAM policy for a Gemini Code Assist repository group.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleGeminiRepositoryGroupIamMember] for single-principal grants.
final class GoogleGeminiRepositoryGroupIamPolicy extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_policy';

  GoogleGeminiRepositoryGroupIamPolicy({
    required super.localName,
    required TfArg<String> repositoryGroupId,
    required TfArg<String> codeRepositoryIndex,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_group_id': repositoryGroupId,
           'code_repository_index': codeRepositoryIndex,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
