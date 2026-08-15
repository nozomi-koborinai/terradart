// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_memorystore_instance`.
const Set<String> _googleMemorystoreInstanceSensitive = <String>{};

/// Factory wrapper for `google_memorystore_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMemorystoreInstance extends Data {
  static const String tfType = 'google_memorystore_instance';

  DataGoogleMemorystoreInstance({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMemorystoreInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_mode` attribute.
  TfRef<String> get authorizationMode =>
      TfRef.attribute<String>(this, 'authorization_mode');

  /// Reference to `automated_backup_config` attribute.
  TfRef<List<Map<String, Object?>>> get automatedBackupConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'automated_backup_config',
      );

  /// Reference to `available_maintenance_versions` attribute.
  TfRef<List<String>> get availableMaintenanceVersions =>
      TfRef.attribute<List<String>>(this, 'available_maintenance_versions');

  /// Reference to `backup_collection` attribute.
  TfRef<String> get backupCollection =>
      TfRef.attribute<String>(this, 'backup_collection');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `cross_instance_replication_config` attribute.
  TfRef<List<Map<String, Object?>>> get crossInstanceReplicationConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cross_instance_replication_config',
      );

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `desired_auto_created_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get desiredAutoCreatedEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'desired_auto_created_endpoints',
      );

  /// Reference to `desired_psc_auto_connections` attribute.
  TfRef<List<Map<String, Object?>>> get desiredPscAutoConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'desired_psc_auto_connections',
      );

  /// Reference to `discovery_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get discoveryEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'discovery_endpoints');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_maintenance_version` attribute.
  TfRef<String> get effectiveMaintenanceVersion =>
      TfRef.attribute<String>(this, 'effective_maintenance_version');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');

  /// Reference to `engine_configs` attribute.
  TfRef<Map<String, String>> get engineConfigs =>
      TfRef.attribute<Map<String, String>>(this, 'engine_configs');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `gcs_source` attribute.
  TfRef<List<Map<String, Object?>>> get gcsSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gcs_source');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `maintenance_policy` attribute.
  TfRef<List<Map<String, Object?>>> get maintenancePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_policy');

  /// Reference to `maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_schedule');

  /// Reference to `maintenance_version` attribute.
  TfRef<String> get maintenanceVersion =>
      TfRef.attribute<String>(this, 'maintenance_version');

  /// Reference to `managed_backup_source` attribute.
  TfRef<List<Map<String, Object?>>> get managedBackupSource =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'managed_backup_source',
      );

  /// Reference to `managed_server_ca` attribute.
  TfRef<List<Map<String, Object?>>> get managedServerCa =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_server_ca');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `node_config` attribute.
  TfRef<List<Map<String, Object?>>> get nodeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_config');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `persistence_config` attribute.
  TfRef<List<Map<String, Object?>>> get persistenceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'persistence_config');

  /// Reference to `psc_attachment_details` attribute.
  TfRef<List<Map<String, Object?>>> get pscAttachmentDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'psc_attachment_details',
      );

  /// Reference to `psc_auto_connections` attribute.
  TfRef<List<Map<String, Object?>>> get pscAutoConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_auto_connections');

  /// Reference to `replica_count` attribute.
  TfRef<num> get replicaCount => TfRef.attribute<num>(this, 'replica_count');

  /// Reference to `server_ca_mode` attribute.
  TfRef<String> get serverCaMode =>
      TfRef.attribute<String>(this, 'server_ca_mode');

  /// Reference to `server_ca_pool` attribute.
  TfRef<String> get serverCaPool =>
      TfRef.attribute<String>(this, 'server_ca_pool');

  /// Reference to `shard_count` attribute.
  TfRef<num> get shardCount => TfRef.attribute<num>(this, 'shard_count');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_info` attribute.
  TfRef<List<Map<String, Object?>>> get stateInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state_info');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `transit_encryption_mode` attribute.
  TfRef<String> get transitEncryptionMode =>
      TfRef.attribute<String>(this, 'transit_encryption_mode');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `zone_distribution_config` attribute.
  TfRef<List<Map<String, Object?>>> get zoneDistributionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'zone_distribution_config',
      );
}
