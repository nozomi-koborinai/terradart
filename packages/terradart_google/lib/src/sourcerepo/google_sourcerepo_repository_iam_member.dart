// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sourcerepo_repository_iam_member`.
const Set<String> _googleSourcerepoRepositoryIamMemberSensitive = <String>{};

/// Factory wrapper for `google_sourcerepo_repository_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a
/// [GoogleSourcerepoRepository]. Prefer an in-stack service account for
/// apply-smoke (placeholder identities fail at apply).
final class GoogleSourcerepoRepositoryIamMember extends Resource {
  static const String tfType = 'google_sourcerepo_repository_iam_member';

  GoogleSourcerepoRepositoryIamMember({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSourcerepoRepositoryIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
