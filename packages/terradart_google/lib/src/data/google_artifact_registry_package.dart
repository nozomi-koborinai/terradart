// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;

/// Sensitive field paths for `google_artifact_registry_package`.
const Set<String> _googleArtifactRegistryPackageSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_package`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryPackage extends Data {
  static const String tfType = 'google_artifact_registry_package';

  DataGoogleArtifactRegistryPackage(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    required RefTo<GoogleArtifactRegistryRepository> repositoryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'project': ?project,
           'repository_id': repositoryId.encodeAs('repository_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryPackageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');
}
