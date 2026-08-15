// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_docker_image`.
const Set<String> _googleArtifactRegistryDockerImageSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_docker_image`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryDockerImage extends Data {
  static const String tfType = 'google_artifact_registry_docker_image';

  DataGoogleArtifactRegistryDockerImage({
    required super.localName,
    required TfArg<String> imageName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'image_name': imageName,
           'location': location,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryDockerImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `build_time` attribute.
  TfRef<String> get buildTime => TfRef.attribute<String>(this, 'build_time');

  /// Reference to `image_size_bytes` attribute.
  TfRef<String> get imageSizeBytes =>
      TfRef.attribute<String>(this, 'image_size_bytes');

  /// Reference to `media_type` attribute.
  TfRef<String> get mediaType => TfRef.attribute<String>(this, 'media_type');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `upload_time` attribute.
  TfRef<String> get uploadTime => TfRef.attribute<String>(this, 'upload_time');
}
