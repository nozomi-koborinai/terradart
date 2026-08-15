// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_service`.
const Set<String> _googleDataprocMetastoreServiceSensitive = <String>{};

/// Factory wrapper for `google_dataproc_metastore_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataprocMetastoreService extends Data {
  static const String tfType = 'google_dataproc_metastore_service';

  DataGoogleDataprocMetastoreService({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> serviceId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           'service_id': serviceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocMetastoreServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `artifact_gcs_uri` attribute.
  TfRef<String> get artifactGcsUri =>
      TfRef.attribute<String>(this, 'artifact_gcs_uri');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `database_type` attribute.
  TfRef<String> get databaseType =>
      TfRef.attribute<String>(this, 'database_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_config` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_config');

  /// Reference to `endpoint_uri` attribute.
  TfRef<String> get endpointUri =>
      TfRef.attribute<String>(this, 'endpoint_uri');

  /// Reference to `hive_metastore_config` attribute.
  TfRef<List<Map<String, Object?>>> get hiveMetastoreConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'hive_metastore_config',
      );

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `maintenance_window` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceWindow =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_window');

  /// Reference to `metadata_integration` attribute.
  TfRef<List<Map<String, Object?>>> get metadataIntegration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata_integration');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_config` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_config');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `release_channel` attribute.
  TfRef<String> get releaseChannel =>
      TfRef.attribute<String>(this, 'release_channel');

  /// Reference to `scaling_config` attribute.
  TfRef<List<Map<String, Object?>>> get scalingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scaling_config');

  /// Reference to `scheduled_backup` attribute.
  TfRef<List<Map<String, Object?>>> get scheduledBackup =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scheduled_backup');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `telemetry_config` attribute.
  TfRef<List<Map<String, Object?>>> get telemetryConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'telemetry_config');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
