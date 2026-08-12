// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_repository_group_iam_binding`.
const Set<String> _googleGeminiRepositoryGroupIamBindingSensitive = <String>{};

/// Factory wrapper for `google_gemini_repository_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Gemini Code Assist repository group.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleGeminiRepositoryGroupIamMember] for additive grants.
final class GoogleGeminiRepositoryGroupIamBinding extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_binding';

  GoogleGeminiRepositoryGroupIamBinding({
    required super.localName,
    required TfArg<String> repositoryGroupId,
    required TfArg<String> codeRepositoryIndex,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_group_id': repositoryGroupId,
           'code_repository_index': codeRepositoryIndex,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
