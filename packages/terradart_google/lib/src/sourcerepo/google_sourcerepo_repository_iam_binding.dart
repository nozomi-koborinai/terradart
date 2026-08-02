// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sourcerepo_repository_iam_binding`.
const Set<String> _googleSourcerepoRepositoryIamBindingSensitive = <String>{};

/// Factory wrapper for `google_sourcerepo_repository_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Source
/// Repository.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleSourcerepoRepositoryIamMember] for additive grants.
final class GoogleSourcerepoRepositoryIamBinding extends Resource {
  static const String tfType = 'google_sourcerepo_repository_iam_binding';

  GoogleSourcerepoRepositoryIamBinding({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSourcerepoRepositoryIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
