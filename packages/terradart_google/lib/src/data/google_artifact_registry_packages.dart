// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           'location': location,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryPackagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `packages` attribute.
  TfRef<List<Map<String, Object?>>> get packages =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'packages');
}
