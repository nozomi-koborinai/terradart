// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_versions`.
const Set<String> _googleArtifactRegistryVersionsSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_versions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryVersions extends Data {
  static const String tfType = 'google_artifact_registry_versions';

  DataGoogleArtifactRegistryVersions({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> location,
    required TfArg<String> packageName,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
    TfArg<String>? view,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           'location': location,
           'package_name': packageName,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
           if (view != null) 'view': view,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `versions` attribute.
  TfRef<List<Map<String, Object?>>> get versions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'versions');
}
