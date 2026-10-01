// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;

/// Sensitive field paths for `google_artifact_registry_npm_packages`.
const Set<String> _googleArtifactRegistryNpmPackagesSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_npm_packages`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryNpmPackages extends Data {
  static const String tfType = 'google_artifact_registry_npm_packages';

  DataGoogleArtifactRegistryNpmPackages(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? project,
    required RefTo<GoogleArtifactRegistryRepository> repositoryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'project': ?project,
           'repository_id': repositoryId.encodeAs('repository_id'),
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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');
}
