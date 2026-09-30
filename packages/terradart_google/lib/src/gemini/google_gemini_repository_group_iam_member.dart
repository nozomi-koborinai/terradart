// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_code_repository_index.dart'
    show GoogleGeminiCodeRepositoryIndex;
import '../gemini/google_gemini_repository_group.dart'
    show GoogleGeminiRepositoryGroup;

/// Sensitive field paths for `google_gemini_repository_group_iam_member`.
const Set<String> _googleGeminiRepositoryGroupIamMemberSensitive = <String>{};

/// Factory wrapper for `google_gemini_repository_group_iam_member`.
final class GoogleGeminiRepositoryGroupIamMember extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_member';

  GoogleGeminiRepositoryGroupIamMember({
    required super.localName,
    required RefTo<GoogleGeminiRepositoryGroup> repositoryGroupId,
    required RefTo<GoogleGeminiCodeRepositoryIndex> codeRepositoryIndex,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_group_id': repositoryGroupId.encodeAs(
             'repository_group_id',
           ),
           'code_repository_index': codeRepositoryIndex.encodeAs(
             'code_repository_index_id',
           ),
           'role': role,
           'member': member,
           'condition': ?condition,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiRepositoryGroupIamMember>`.
  RefTo<GoogleGeminiRepositoryGroupIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `code_repository_index` attribute.
  TfRef<String> get codeRepositoryIndexRef =>
      TfRef.attribute<String>(this, 'code_repository_index');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_group_id` attribute.
  TfRef<String> get repositoryGroupIdRef =>
      TfRef.attribute<String>(this, 'repository_group_id');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
