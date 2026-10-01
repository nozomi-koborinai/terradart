// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_repository_group.dart'
    show GoogleGeminiRepositoryGroup;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gemini_repository_group_iam_binding`.
const Set<String> _googleGeminiRepositoryGroupIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gemini_repository_group_iam_binding` (derived from provider schema).
@immutable
final class GeminiRepositoryGroupIamBindingCondition {
  const GeminiRepositoryGroupIamBindingCondition({
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

/// Factory wrapper for `google_gemini_repository_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Gemini Code Assist repository group.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleGeminiRepositoryGroupIamMember] for additive grants.
final class GoogleGeminiRepositoryGroupIamBinding extends Resource {
  static const String tfType = 'google_gemini_repository_group_iam_binding';

  GoogleGeminiRepositoryGroupIamBinding(
    super.localName, {
    required RefTo<GoogleGeminiRepositoryGroup> repositoryGroup,
    TfArg<String>? codeRepositoryIndex,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    GeminiRepositoryGroupIamBindingCondition? condition,
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
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? repositoryGroup.alsoAs('location')),
           'project': ?(project ?? repositoryGroup.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiRepositoryGroupIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiRepositoryGroupIamBinding>`.
  RefTo<GoogleGeminiRepositoryGroupIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `code_repository_index` attribute.
  TfRef<String> get codeRepositoryIndex =>
      TfRef.attribute<String>(this, 'code_repository_index');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_group_id` attribute.
  TfRef<String> get repositoryGroupId =>
      TfRef.attribute<String>(this, 'repository_group_id');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
