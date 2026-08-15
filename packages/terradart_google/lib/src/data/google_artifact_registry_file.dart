// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_file`.
const Set<String> _googleArtifactRegistryFileSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_file`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryFile extends Data {
  static const String tfType = 'google_artifact_registry_file';

  DataGoogleArtifactRegistryFile({
    required super.localName,
    required TfArg<String> fileId,
    required TfArg<String> location,
    required TfArg<String> outputPath,
    TfArg<bool>? overwrite,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_id': fileId,
           'location': location,
           'output_path': outputPath,
           if (overwrite != null) 'overwrite': overwrite,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryFileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `hashes` attribute.
  TfRef<Map<String, String>> get hashes =>
      TfRef.attribute<Map<String, String>>(this, 'hashes');

  /// Reference to `output_base64sha256` attribute.
  TfRef<String> get outputBase64sha256 =>
      TfRef.attribute<String>(this, 'output_base64sha256');

  /// Reference to `output_sha256` attribute.
  TfRef<String> get outputSha256 =>
      TfRef.attribute<String>(this, 'output_sha256');

  /// Reference to `size_bytes` attribute.
  TfRef<num> get sizeBytes => TfRef.attribute<num>(this, 'size_bytes');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
