// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_mysql_database`.
const Set<String> _appwriteMysqlDatabaseSensitive = <String>{
  'connection_password',
  'connection_string',
};

/// Mysql Database Maintenance Window enum for `maintenance_window_day`.
extension type const MysqlDatabaseMaintenanceWindowDay._(TfArg<String> _)
    implements TfArg<String> {
  MysqlDatabaseMaintenanceWindowDay.variable(String name)
    : this._(TfArg.variable(name));
  MysqlDatabaseMaintenanceWindowDay.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlDatabaseMaintenanceWindowDay.arg(TfArg<String> arg) : this._(arg);

  static const sun = MysqlDatabaseMaintenanceWindowDay._(TfArgLiteral('sun'));
  static const mon = MysqlDatabaseMaintenanceWindowDay._(TfArgLiteral('mon'));
  static const tue = MysqlDatabaseMaintenanceWindowDay._(TfArgLiteral('tue'));
  static const wed = MysqlDatabaseMaintenanceWindowDay._(TfArgLiteral('wed'));
  static const thu = MysqlDatabaseMaintenanceWindowDay._(TfArgLiteral('thu'));
  static const fri = MysqlDatabaseMaintenanceWindowDay._(TfArgLiteral('fri'));
  static const sat = MysqlDatabaseMaintenanceWindowDay._(TfArgLiteral('sat'));

  static const List<MysqlDatabaseMaintenanceWindowDay> values = [
    sun,
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
  ];
}

/// Mysql Database enum for `status`.
extension type const MysqlDatabaseStatus._(TfArg<String> _)
    implements TfArg<String> {
  MysqlDatabaseStatus.variable(String name) : this._(TfArg.variable(name));
  MysqlDatabaseStatus.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlDatabaseStatus.arg(TfArg<String> arg) : this._(arg);

  static const ready = MysqlDatabaseStatus._(TfArgLiteral('ready'));
  static const paused = MysqlDatabaseStatus._(TfArgLiteral('paused'));
  static const inactive = MysqlDatabaseStatus._(TfArgLiteral('inactive'));

  static const List<MysqlDatabaseStatus> values = [ready, paused, inactive];
}

/// Mysql Database Sync enum for `sync_mode`.
extension type const MysqlDatabaseSyncMode._(TfArg<String> _)
    implements TfArg<String> {
  MysqlDatabaseSyncMode.variable(String name) : this._(TfArg.variable(name));
  MysqlDatabaseSyncMode.expression(String template)
    : this._(TfArg.expression(template));
  const MysqlDatabaseSyncMode.arg(TfArg<String> arg) : this._(arg);

  static const async = MysqlDatabaseSyncMode._(TfArgLiteral('async'));
  static const sync = MysqlDatabaseSyncMode._(TfArgLiteral('sync'));
  static const quorum = MysqlDatabaseSyncMode._(TfArgLiteral('quorum'));

  static const List<MysqlDatabaseSyncMode> values = [async, sync, quorum];
}

/// Factory wrapper for `appwrite_mysql_database`.
///
/// Manages a dedicated Appwrite MySQL database. A dedicated database runs on
/// infrastructure reserved for one project, so creating, resizing or upgrading
/// one takes several minutes; Terraform waits for the database to settle before
/// continuing.
///
/// Dedicated MySQL database (reserved compute, billed while it exists).
/// Provisioning takes several minutes; apply waits for settle.
final class AppwriteMysqlDatabase extends Resource {
  static const String tfType = 'appwrite_mysql_database';

  AppwriteMysqlDatabase(
    super.localName, {
    TfArg<num>? idleTimeoutMinutes,
    MysqlDatabaseMaintenanceWindowDay? maintenanceWindowDay,
    TfArg<num>? maintenanceWindowHourUtc,
    required TfArg<String> name,
    TfArg<num>? networkIdleTimeoutSeconds,
    TfArg<List<String>>? networkIpAllowlist,
    TfArg<bool>? pitr,
    TfArg<num>? pitrRetentionDays,
    RefTo<AppwriteProject>? projectId,
    TfArg<num>? replicas,
    TfArg<String>? specification,
    TfArg<List<String>>? sqlApiAllowedStatements,
    TfArg<bool>? sqlApiEnabled,
    TfArg<num>? sqlApiMaxBytes,
    TfArg<num>? sqlApiMaxRows,
    TfArg<num>? sqlApiTimeoutSeconds,
    MysqlDatabaseStatus? status,
    TfArg<bool>? storageAutoscaling,
    TfArg<num>? storageAutoscalingMaxGb,
    TfArg<num>? storageAutoscalingThresholdPercent,
    MysqlDatabaseSyncMode? syncMode,
    TfArg<String>? version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'idle_timeout_minutes': ?idleTimeoutMinutes,
           'maintenance_window_day': ?maintenanceWindowDay,
           'maintenance_window_hour_utc': ?maintenanceWindowHourUtc,
           'name': name,
           'network_idle_timeout_seconds': ?networkIdleTimeoutSeconds,
           'network_ip_allowlist': ?networkIpAllowlist,
           'pitr': ?pitr,
           'pitr_retention_days': ?pitrRetentionDays,
           'project_id': ?projectId?.encodeAs('id'),
           'replicas': ?replicas,
           'specification': ?specification,
           'sql_api_allowed_statements': ?sqlApiAllowedStatements,
           'sql_api_enabled': ?sqlApiEnabled,
           'sql_api_max_bytes': ?sqlApiMaxBytes,
           'sql_api_max_rows': ?sqlApiMaxRows,
           'sql_api_timeout_seconds': ?sqlApiTimeoutSeconds,
           'status': ?status,
           'storage_autoscaling': ?storageAutoscaling,
           'storage_autoscaling_max_gb': ?storageAutoscalingMaxGb,
           'storage_autoscaling_threshold_percent':
               ?storageAutoscalingThresholdPercent,
           'sync_mode': ?syncMode,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMysqlDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMysqlDatabase>`.
  RefTo<AppwriteMysqlDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `idle_timeout_minutes` attribute.
  TfRef<num> get idleTimeoutMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_minutes');

  /// Reference to `maintenance_window_day` attribute.
  TfRef<String> get maintenanceWindowDay =>
      TfRef.attribute<String>(this, 'maintenance_window_day');

  /// Reference to `maintenance_window_hour_utc` attribute.
  TfRef<num> get maintenanceWindowHourUtc =>
      TfRef.attribute<num>(this, 'maintenance_window_hour_utc');

  /// Reference to `network_idle_timeout_seconds` attribute.
  TfRef<num> get networkIdleTimeoutSeconds =>
      TfRef.attribute<num>(this, 'network_idle_timeout_seconds');

  /// Reference to `network_ip_allowlist` attribute.
  TfRef<List<String>> get networkIpAllowlist =>
      TfRef.attribute<List<String>>(this, 'network_ip_allowlist');

  /// Reference to `pitr` attribute.
  TfRef<bool> get pitr => TfRef.attribute<bool>(this, 'pitr');

  /// Reference to `pitr_retention_days` attribute.
  TfRef<num> get pitrRetentionDays =>
      TfRef.attribute<num>(this, 'pitr_retention_days');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `replicas` attribute.
  TfRef<num> get replicas => TfRef.attribute<num>(this, 'replicas');

  /// Reference to `specification` attribute.
  TfRef<String> get specification =>
      TfRef.attribute<String>(this, 'specification');

  /// Reference to `sql_api_allowed_statements` attribute.
  TfRef<List<String>> get sqlApiAllowedStatements =>
      TfRef.attribute<List<String>>(this, 'sql_api_allowed_statements');

  /// Reference to `sql_api_enabled` attribute.
  TfRef<bool> get sqlApiEnabled =>
      TfRef.attribute<bool>(this, 'sql_api_enabled');

  /// Reference to `sql_api_max_bytes` attribute.
  TfRef<num> get sqlApiMaxBytes =>
      TfRef.attribute<num>(this, 'sql_api_max_bytes');

  /// Reference to `sql_api_max_rows` attribute.
  TfRef<num> get sqlApiMaxRows =>
      TfRef.attribute<num>(this, 'sql_api_max_rows');

  /// Reference to `sql_api_timeout_seconds` attribute.
  TfRef<num> get sqlApiTimeoutSeconds =>
      TfRef.attribute<num>(this, 'sql_api_timeout_seconds');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `storage_autoscaling` attribute.
  TfRef<bool> get storageAutoscaling =>
      TfRef.attribute<bool>(this, 'storage_autoscaling');

  /// Reference to `storage_autoscaling_max_gb` attribute.
  TfRef<num> get storageAutoscalingMaxGb =>
      TfRef.attribute<num>(this, 'storage_autoscaling_max_gb');

  /// Reference to `storage_autoscaling_threshold_percent` attribute.
  TfRef<num> get storageAutoscalingThresholdPercent =>
      TfRef.attribute<num>(this, 'storage_autoscaling_threshold_percent');

  /// Reference to `sync_mode` attribute.
  TfRef<String> get syncMode => TfRef.attribute<String>(this, 'sync_mode');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
