// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_npm_package`.
const Set<String> _googleArtifactRegistryNpmPackageSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_npm_package`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryNpmPackage extends Data {
  static const String tfType = 'google_artifact_registry_npm_package';

  DataGoogleArtifactRegistryNpmPackage({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> packageName,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'package_name': packageName,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryNpmPackageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
