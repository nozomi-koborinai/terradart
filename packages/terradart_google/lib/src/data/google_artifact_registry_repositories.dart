// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_repositories`.
const Set<String> _googleArtifactRegistryRepositoriesSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_repositories`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryRepositories extends Data {
  static const String tfType = 'google_artifact_registry_repositories';

  DataGoogleArtifactRegistryRepositories({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? nameFilter,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (nameFilter != null) 'name_filter': nameFilter,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryRepositoriesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `repositories` attribute.
  TfRef<List<Map<String, Object?>>> get repositories =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'repositories');
}
