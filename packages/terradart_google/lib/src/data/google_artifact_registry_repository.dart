// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_repository`.
const Set<String> _googleArtifactRegistryRepositorySensitive = <String>{};

/// Factory wrapper for `google_artifact_registry_repository`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleArtifactRegistryRepository extends Data {
  static const String tfType = 'google_artifact_registry_repository';

  DataGoogleArtifactRegistryRepository({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> repositoryId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           'repository_id': repositoryId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryRepositorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cleanup_policies` attribute.
  TfRef<List<Map<String, Object?>>> get cleanupPolicies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cleanup_policies');

  /// Reference to `cleanup_policy_dry_run` attribute.
  TfRef<bool> get cleanupPolicyDryRun =>
      TfRef.attribute<bool>(this, 'cleanup_policy_dry_run');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `docker_config` attribute.
  TfRef<List<Map<String, Object?>>> get dockerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'docker_config');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `maven_config` attribute.
  TfRef<List<Map<String, Object?>>> get mavenConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maven_config');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `registry_uri` attribute.
  TfRef<String> get registryUri =>
      TfRef.attribute<String>(this, 'registry_uri');

  /// Reference to `remote_repository_config` attribute.
  TfRef<List<Map<String, Object?>>> get remoteRepositoryConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'remote_repository_config',
      );

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `virtual_repository_config` attribute.
  TfRef<List<Map<String, Object?>>> get virtualRepositoryConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'virtual_repository_config',
      );

  /// Reference to `vulnerability_scanning_config` attribute.
  TfRef<List<Map<String, Object?>>> get vulnerabilityScanningConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'vulnerability_scanning_config',
      );
}
