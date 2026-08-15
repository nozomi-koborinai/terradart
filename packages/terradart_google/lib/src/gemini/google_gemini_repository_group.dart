// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gemini_repository_group`.
const Set<String> _googleGeminiRepositoryGroupSensitive = <String>{};

/// Typed helper for the `repositories` block of
/// `google_gemini_repository_group` (derived from provider schema).
@immutable
final class GeminiRepositoryGroupRepositories {
  const GeminiRepositoryGroupRepositories({
    required this.branchPattern,
    required this.resource,
  });

  final TfArg<String> branchPattern;

  final TfArg<String> resource;

  Map<String, Object?> encode() => {
    'branch_pattern': branchPattern.toTfJson(),
    'resource': resource.toTfJson(),
  };
}

/// Factory wrapper for `google_gemini_repository_group`.
///
/// The resource for managing Repository Group for Gemini Code Assist.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleGeminiRepositoryGroup extends Resource {
  static const String tfType = 'google_gemini_repository_group';

  GoogleGeminiRepositoryGroup({
    required super.localName,
    required TfArg<String> codeRepositoryIndex,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> repositoryGroupId,
    required List<GeminiRepositoryGroupRepositories> repositories,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_repository_index': codeRepositoryIndex,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'repository_group_id': repositoryGroupId,
           'repositories': TfArg.literal([
             for (final e in repositories) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGeminiRepositoryGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
