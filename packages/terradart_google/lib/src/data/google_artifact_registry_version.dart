// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> repositoryId,
    required TfArg<String> versionName,
    TfArg<String>? view,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'package_name': packageName,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
           'version_name': versionName,
           if (view != null) 'view': view,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryVersionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
