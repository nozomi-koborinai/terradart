// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;

/// Sensitive field paths for `google_artifact_registry_version`.
const Set<String> _googleArtifactRegistryVersionSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_version`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryVersion extends Data {
  static const String tfType = 'google_artifact_registry_version';

  DataGoogleArtifactRegistryVersion({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> packageName,
    TfArg<String>? project,
    required RefTo<GoogleArtifactRegistryRepository> repositoryId,
    required TfArg<String> versionName,
    TfArg<String>? view,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'package_name': packageName,
           'project': ?project,
           'repository_id': repositoryId.encodeAs('repository_id'),
           'version_name': versionName,
           'view': ?view,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `related_tags` attribute.
  TfRef<List<Map<String, Object?>>> get relatedTags =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'related_tags');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `package_name` attribute.
  TfRef<String> get packageName =>
      TfRef.attribute<String>(this, 'package_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `version_name` attribute.
  TfRef<String> get versionName =>
      TfRef.attribute<String>(this, 'version_name');

  /// Reference to `view` attribute.
  TfRef<String> get view => TfRef.attribute<String>(this, 'view');
}
