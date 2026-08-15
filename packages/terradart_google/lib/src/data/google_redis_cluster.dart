// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_redis_cluster`.
const Set<String> _googleRedisClusterSensitive = <String>{};

/// Factory wrapper for `google_redis_cluster`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleRedisCluster extends Data {
  static const String tfType = 'google_redis_cluster';

  DataGoogleRedisCluster({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisClusterSensitive;

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

  /// Reference to `cross_cluster_replication_config` attribute.
  TfRef<List<Map<String, Object?>>> get crossClusterReplicationConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cross_cluster_replication_config',
      );

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `discovery_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get discoveryEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'discovery_endpoints');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_maintenance_version` attribute.
  TfRef<String> get effectiveMaintenanceVersion =>
      TfRef.attribute<String>(this, 'effective_maintenance_version');

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

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeType => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `persistence_config` attribute.
  TfRef<List<Map<String, Object?>>> get persistenceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'persistence_config');

  /// Reference to `precise_size_gb` attribute.
  TfRef<num> get preciseSizeGb => TfRef.attribute<num>(this, 'precise_size_gb');

  /// Reference to `psc_configs` attribute.
  TfRef<List<Map<String, Object?>>> get pscConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_configs');

  /// Reference to `psc_connections` attribute.
  TfRef<List<Map<String, Object?>>> get pscConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_connections');

  /// Reference to `psc_service_attachments` attribute.
  TfRef<List<Map<String, Object?>>> get pscServiceAttachments =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'psc_service_attachments',
      );

  /// Reference to `redis_configs` attribute.
  TfRef<Map<String, String>> get redisConfigs =>
      TfRef.attribute<Map<String, String>>(this, 'redis_configs');

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

  /// Reference to `size_gb` attribute.
  TfRef<num> get sizeGb => TfRef.attribute<num>(this, 'size_gb');

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

  /// Reference to `zone_distribution_config` attribute.
  TfRef<List<Map<String, Object?>>> get zoneDistributionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'zone_distribution_config',
      );
}
