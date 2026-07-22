// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secure_source_manager_repository_iam_member`.
const Set<String> _googleSecureSourceManagerRepositoryIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_secure_source_manager_repository_iam_member`.
///
/// Non-authoritative IAM member on a Secure Source Manager repository.
///
/// [repositoryId] is the short repository id (path segment). Location and
/// project identify the parent when not taken from the provider default.
final class GoogleSecureSourceManagerRepositoryIamMember extends Resource {
  static const String tfType =
      'google_secure_source_manager_repository_iam_member';

  GoogleSecureSourceManagerRepositoryIamMember({
    required super.localName,
    required TfArg<String> repositoryId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repositoryId,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerRepositoryIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
