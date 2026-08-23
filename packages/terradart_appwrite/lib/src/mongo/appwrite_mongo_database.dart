// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_mongo_database`.
const Set<String> _appwriteMongoDatabaseSensitive = <String>{
  'connection_password',
  'connection_string',
};

/// Factory wrapper for `appwrite_mongo_database`.
///
/// Manages a dedicated Appwrite MongoDB database. A dedicated database runs on
/// infrastructure reserved for one project, so creating, resizing or upgrading
/// one takes several minutes; Terraform waits for the database to settle before
/// continuing.
///
/// Dedicated MongoDB database (reserved compute, billed while it exists).
/// Provisioning takes several minutes; apply waits for settle.
final class AppwriteMongoDatabase extends Resource {
  static const String tfType = 'appwrite_mongo_database';

  AppwriteMongoDatabase({
    required super.localName,
    TfArg<num>? idleTimeoutMinutes,
    TfArg<String>? maintenanceWindowDay,
    TfArg<num>? maintenanceWindowHourUtc,
    required TfArg<String> name,
    TfArg<num>? networkIdleTimeoutSeconds,
    TfArg<List<String>>? networkIpAllowlist,
    TfArg<bool>? pitr,
    TfArg<num>? pitrRetentionDays,
    TfArg<String>? projectId,
    TfArg<num>? replicas,
    TfArg<String>? specification,
    TfArg<List<String>>? sqlApiAllowedStatements,
    TfArg<bool>? sqlApiEnabled,
    TfArg<num>? sqlApiMaxBytes,
    TfArg<num>? sqlApiMaxRows,
    TfArg<num>? sqlApiTimeoutSeconds,
    TfArg<String>? status,
    TfArg<bool>? storageAutoscaling,
    TfArg<num>? storageAutoscalingMaxGb,
    TfArg<num>? storageAutoscalingThresholdPercent,
    TfArg<String>? syncMode,
    TfArg<String>? version,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (idleTimeoutMinutes != null)
             'idle_timeout_minutes': idleTimeoutMinutes,
           if (maintenanceWindowDay != null)
             'maintenance_window_day': maintenanceWindowDay,
           if (maintenanceWindowHourUtc != null)
             'maintenance_window_hour_utc': maintenanceWindowHourUtc,
           'name': name,
           if (networkIdleTimeoutSeconds != null)
             'network_idle_timeout_seconds': networkIdleTimeoutSeconds,
           if (networkIpAllowlist != null)
             'network_ip_allowlist': networkIpAllowlist,
           if (pitr != null) 'pitr': pitr,
           if (pitrRetentionDays != null)
             'pitr_retention_days': pitrRetentionDays,
           if (projectId != null) 'project_id': projectId,
           if (replicas != null) 'replicas': replicas,
           if (specification != null) 'specification': specification,
           if (sqlApiAllowedStatements != null)
             'sql_api_allowed_statements': sqlApiAllowedStatements,
           if (sqlApiEnabled != null) 'sql_api_enabled': sqlApiEnabled,
           if (sqlApiMaxBytes != null) 'sql_api_max_bytes': sqlApiMaxBytes,
           if (sqlApiMaxRows != null) 'sql_api_max_rows': sqlApiMaxRows,
           if (sqlApiTimeoutSeconds != null)
             'sql_api_timeout_seconds': sqlApiTimeoutSeconds,
           if (status != null) 'status': status,
           if (storageAutoscaling != null)
             'storage_autoscaling': storageAutoscaling,
           if (storageAutoscalingMaxGb != null)
             'storage_autoscaling_max_gb': storageAutoscalingMaxGb,
           if (storageAutoscalingThresholdPercent != null)
             'storage_autoscaling_threshold_percent':
                 storageAutoscalingThresholdPercent,
           if (syncMode != null) 'sync_mode': syncMode,
           if (version != null) 'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMongoDatabaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api` attribute.
  TfRef<String> get api => TfRef.attribute<String>(this, 'api');

  /// Reference to `backend` attribute.
  TfRef<String> get backend => TfRef.attribute<String>(this, 'backend');

  /// Reference to `backup_enabled` attribute.
  TfRef<bool> get backupEnabled =>
      TfRef.attribute<bool>(this, 'backup_enabled');

  /// Reference to `connection_password` attribute.
  TfRef<String> get connectionPassword =>
      TfRef.attribute<String>(this, 'connection_password');

  /// Reference to `connection_port` attribute.
  TfRef<num> get connectionPort =>
      TfRef.attribute<num>(this, 'connection_port');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `connection_user` attribute.
  TfRef<String> get connectionUser =>
      TfRef.attribute<String>(this, 'connection_user');

  /// Reference to `container_status` attribute.
  TfRef<String> get containerStatus =>
      TfRef.attribute<String>(this, 'container_status');

  /// Reference to `cpu` attribute.
  TfRef<num> get cpu => TfRef.attribute<num>(this, 'cpu');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `error` attribute.
  TfRef<String> get error => TfRef.attribute<String>(this, 'error');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `idle_until` attribute.
  TfRef<String> get idleUntil => TfRef.attribute<String>(this, 'idle_until');

  /// Reference to `last_accessed_at` attribute.
  TfRef<String> get lastAccessedAt =>
      TfRef.attribute<String>(this, 'last_accessed_at');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `memory` attribute.
  TfRef<num> get memory => TfRef.attribute<num>(this, 'memory');

  /// Reference to `metrics_enabled` attribute.
  TfRef<bool> get metricsEnabled =>
      TfRef.attribute<bool>(this, 'metrics_enabled');

  /// Reference to `network_max_connections` attribute.
  TfRef<num> get networkMaxConnections =>
      TfRef.attribute<num>(this, 'network_max_connections');

  /// Reference to `node_pool` attribute.
  TfRef<String> get nodePool => TfRef.attribute<String>(this, 'node_pool');

  /// Reference to `ssl` attribute.
  TfRef<bool> get ssl => TfRef.attribute<bool>(this, 'ssl');

  /// Reference to `storage` attribute.
  TfRef<num> get storage => TfRef.attribute<num>(this, 'storage');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `storage_max_gb` attribute.
  TfRef<num> get storageMaxGb => TfRef.attribute<num>(this, 'storage_max_gb');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
