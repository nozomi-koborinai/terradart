// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_tag`.
const Set<String> _googleArtifactRegistryTagSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_tag`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryTag extends Data {
  static const String tfType = 'google_artifact_registry_tag';

  DataGoogleArtifactRegistryTag({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> packageName,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
    required TfArg<String> tagName,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'package_name': packageName,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
           'tag_name': tagName,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryTagSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
