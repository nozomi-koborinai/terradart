// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;

/// Sensitive field paths for `google_artifact_registry_packages`.
const Set<String> _googleArtifactRegistryPackagesSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_packages`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryPackages extends Data {
  static const String tfType = 'google_artifact_registry_packages';

  DataGoogleArtifactRegistryPackages({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> location,
    TfArg<String>? project,
    required RefTo<GoogleArtifactRegistryRepository> repositoryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filter': ?filter,
           'location': location,
           'project': ?project,
           'repository_id': repositoryId.encodeAs('repository_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryPackagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `packages` attribute.
  TfRef<List<Map<String, Object?>>> get packages =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'packages');

  /// Reference to `filter` attribute.
  TfRef<String> get filterRef => TfRef.attribute<String>(this, 'filter');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryIdRef =>
      TfRef.attribute<String>(this, 'repository_id');
}
