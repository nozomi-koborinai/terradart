// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_maven_artifacts`.
const Set<String> _googleArtifactRegistryMavenArtifactsSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_maven_artifacts`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryMavenArtifacts extends Data {
  static const String tfType = 'google_artifact_registry_maven_artifacts';

  DataGoogleArtifactRegistryMavenArtifacts({
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
      _googleArtifactRegistryMavenArtifactsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `maven_artifacts` attribute.
  TfRef<List<Map<String, Object?>>> get mavenArtifacts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maven_artifacts');
}
