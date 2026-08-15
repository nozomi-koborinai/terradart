// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_tags`.
const Set<String> _googleArtifactRegistryTagsSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_tags`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryTags extends Data {
  static const String tfType = 'google_artifact_registry_tags';

  DataGoogleArtifactRegistryTags({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> location,
    required TfArg<String> packageName,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           'location': location,
           'package_name': packageName,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryTagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tags` attribute.
  TfRef<List<Map<String, Object?>>> get tags =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tags');
}
