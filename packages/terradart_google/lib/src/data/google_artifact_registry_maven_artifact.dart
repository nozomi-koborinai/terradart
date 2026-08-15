// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_maven_artifact`.
const Set<String> _googleArtifactRegistryMavenArtifactSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_maven_artifact`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryMavenArtifact extends Data {
  static const String tfType = 'google_artifact_registry_maven_artifact';

  DataGoogleArtifactRegistryMavenArtifact({
    required super.localName,
    required TfArg<String> artifactId,
    required TfArg<String> groupId,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'artifact_id': artifactId,
           'group_id': groupId,
           'location': location,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryMavenArtifactSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `pom_uri` attribute.
  TfRef<String> get pomUri => TfRef.attribute<String>(this, 'pom_uri');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
