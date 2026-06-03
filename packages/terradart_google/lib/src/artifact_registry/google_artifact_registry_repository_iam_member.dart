// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_repository_iam_member`.
const Set<String> _googleArtifactRegistryRepositoryIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_artifact_registry_repository_iam_member`.
final class GoogleArtifactRegistryRepositoryIamMember extends Resource {
  static const String tfType = 'google_artifact_registry_repository_iam_member';

  GoogleArtifactRegistryRepositoryIamMember({
    required super.localName,
    required TfArg<String> repository,
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
           'repository': repository,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryRepositoryIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
