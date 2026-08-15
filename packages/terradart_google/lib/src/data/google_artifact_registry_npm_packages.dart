// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_npm_packages`.
const Set<String> _googleArtifactRegistryNpmPackagesSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_npm_packages`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryNpmPackages extends Data {
  static const String tfType = 'google_artifact_registry_npm_packages';

  DataGoogleArtifactRegistryNpmPackages({
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
      _googleArtifactRegistryNpmPackagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `npm_packages` attribute.
  TfRef<List<Map<String, Object?>>> get npmPackages =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'npm_packages');
}
