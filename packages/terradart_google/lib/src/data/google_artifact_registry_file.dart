// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;

/// Sensitive field paths for `google_artifact_registry_file`.
const Set<String> _googleArtifactRegistryFileSensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_file`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryFile extends Data {
  static const String tfType = 'google_artifact_registry_file';

  DataGoogleArtifactRegistryFile(
    super.localName, {
    required TfArg<String> fileId,
    required TfArg<String> location,
    required TfArg<String> outputPath,
    TfArg<bool>? overwrite,
    TfArg<String>? project,
    required RefTo<GoogleArtifactRegistryRepository> repositoryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_id': fileId,
           'location': location,
           'output_path': outputPath,
           'overwrite': ?overwrite,
           'project': ?project,
           'repository_id': repositoryId.encodeAs('repository_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryFileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `file_id` attribute.
  TfRef<String> get fileId => TfRef.attribute<String>(this, 'file_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `output_path` attribute.
  TfRef<String> get outputPath => TfRef.attribute<String>(this, 'output_path');

  /// Reference to `overwrite` attribute.
  TfRef<bool> get overwrite => TfRef.attribute<bool>(this, 'overwrite');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');
}
