// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_docker_images`.
const Set<String> _googleArtifactRegistryDockerImagesSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_docker_images`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryDockerImages extends Data {
  static const String tfType = 'google_artifact_registry_docker_images';

  DataGoogleArtifactRegistryDockerImages({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryDockerImagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `docker_images` attribute.
  TfRef<List<Map<String, Object?>>> get dockerImages =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'docker_images');
}
