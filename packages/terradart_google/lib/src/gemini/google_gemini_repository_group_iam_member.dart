// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_repository_group.dart'
    show GoogleGeminiRepositoryGroup;
import '../iam/iam_principal.dart' show IamPrincipal;

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

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_gemini_repository_group_iam_member`.
final class GoogleGeminiRepositoryGroupIamMember extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_member';

  GoogleGeminiRepositoryGroupIamMember(
    super.localName, {
    required RefTo<GoogleGeminiRepositoryGroup> repositoryGroup,
    TfArg<String>? codeRepositoryIndex,
    required TfArg<String> role,
    required IamPrincipal member,
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
           'repository_group_id': repositoryGroup.encodeAs(
             'repository_group_id',
           ),
           'code_repository_index':
               ?(codeRepositoryIndex ??
               repositoryGroup.alsoAs('code_repository_index')),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? repositoryGroup.alsoAs('location')),
           'project': ?(project ?? repositoryGroup.alsoAs('project')),
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
  TfRef<String> get codeRepositoryIndex =>
      TfRef.attribute<String>(this, 'code_repository_index');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_group_id` attribute.
  TfRef<String> get repositoryGroupId =>
      TfRef.attribute<String>(this, 'repository_group_id');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
