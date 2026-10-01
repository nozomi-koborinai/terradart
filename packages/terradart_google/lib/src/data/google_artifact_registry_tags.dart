// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;

/// Sensitive field paths for `google_artifact_registry_tags`.
const Set<String> _googleArtifactRegistryTagsSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_tags`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryTags extends Data {
  static const String tfType = 'google_artifact_registry_tags';

  DataGoogleArtifactRegistryTags(
    super.localName, {
    TfArg<String>? filter,
    required TfArg<String> location,
    required TfArg<String> packageName,
    TfArg<String>? project,
    required RefTo<GoogleArtifactRegistryRepository> repositoryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filter': ?filter,
           'location': location,
           'package_name': packageName,
           'project': ?project,
           'repository_id': repositoryId.encodeAs('repository_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryTagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tags` attribute.
  TfRef<List<Map<String, Object?>>> get tags =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tags');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `package_name` attribute.
  TfRef<String> get packageName =>
      TfRef.attribute<String>(this, 'package_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');
}
