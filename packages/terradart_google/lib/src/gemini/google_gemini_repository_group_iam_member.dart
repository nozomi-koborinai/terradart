// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_code_repository_index.dart'
    show GoogleGeminiCodeRepositoryIndex;
import '../gemini/google_gemini_repository_group.dart'
    show GoogleGeminiRepositoryGroup;

/// Sensitive field paths for `google_gemini_repository_group_iam_member`.
const Set<String> _googleGeminiRepositoryGroupIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gemini_repository_group_iam_member` (derived from provider schema).
@immutable
final class GeminiRepositoryGroupIamMemberCondition {
  const GeminiRepositoryGroupIamMemberCondition({
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

/// Factory wrapper for `google_gemini_repository_group_iam_member`.
final class GoogleGeminiRepositoryGroupIamMember extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_member';

  GoogleGeminiRepositoryGroupIamMember({
    required super.localName,
    required RefTo<GoogleGeminiRepositoryGroup> repositoryGroupId,
    required RefTo<GoogleGeminiCodeRepositoryIndex> codeRepositoryIndex,
    required TfArg<String> role,
    required TfArg<String> member,
    GeminiRepositoryGroupIamMemberCondition? condition,
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
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
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
}
