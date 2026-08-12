// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_repository_group_iam_member`.
const Set<String> _googleGeminiRepositoryGroupIamMemberSensitive = <String>{};

/// Factory wrapper for `google_gemini_repository_group_iam_member`.
final class GoogleGeminiRepositoryGroupIamMember extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_member';

  GoogleGeminiRepositoryGroupIamMember({
    required super.localName,
    required TfArg<String> repositoryGroupId,
    required TfArg<String> codeRepositoryIndex,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
