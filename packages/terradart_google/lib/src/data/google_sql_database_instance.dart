// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_database_instance`.
const Set<String> _googleSqlDatabaseInstanceSensitive = <String>{};

/// Factory wrapper for `google_sql_database_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlDatabaseInstance extends Data {
  static const String tfType = 'google_sql_database_instance';

  DataGoogleSqlDatabaseInstance({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabaseInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_maintenance_versions` attribute.
  TfRef<List<String>> get availableMaintenanceVersions =>
      TfRef.attribute<List<String>>(this, 'available_maintenance_versions');

  /// Reference to `backupdr_backup` attribute.
  TfRef<String> get backupdrBackup =>
      TfRef.attribute<String>(this, 'backupdr_backup');

  /// Reference to `clone` attribute.
  TfRef<List<Map<String, Object?>>> get clone =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'clone');

  /// Reference to `connection_name` attribute.
  TfRef<String> get connectionName =>
      TfRef.attribute<String>(this, 'connection_name');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `dns_names` attribute.
  TfRef<List<Map<String, Object?>>> get dnsNames =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_names');

  /// Reference to `encryption_key_name` attribute.
  TfRef<String> get encryptionKeyName =>
      TfRef.attribute<String>(this, 'encryption_key_name');

  /// Reference to `enforce_new_sql_network_architecture` attribute.
  TfRef<bool> get enforceNewSqlNetworkArchitecture =>
      TfRef.attribute<bool>(this, 'enforce_new_sql_network_architecture');

  /// Reference to `final_backup_description` attribute.
  TfRef<String> get finalBackupDescription =>
      TfRef.attribute<String>(this, 'final_backup_description');

  /// Reference to `first_ip_address` attribute.
  TfRef<String> get firstIpAddress =>
      TfRef.attribute<String>(this, 'first_ip_address');

  /// Reference to `include_replicas_for_major_version_upgrade` attribute.
  TfRef<bool> get includeReplicasForMajorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'include_replicas_for_major_version_upgrade');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `ip_address` attribute.
  TfRef<List<Map<String, Object?>>> get ipAddress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_address');

  /// Reference to `maintenance_version` attribute.
  TfRef<String> get maintenanceVersion =>
      TfRef.attribute<String>(this, 'maintenance_version');

  /// Reference to `master_instance_name` attribute.
  TfRef<String> get masterInstanceName =>
      TfRef.attribute<String>(this, 'master_instance_name');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `point_in_time_restore_context` attribute.
  TfRef<List<Map<String, Object?>>> get pointInTimeRestoreContext =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'point_in_time_restore_context',
      );

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `psc_service_attachment_link` attribute.
  TfRef<String> get pscServiceAttachmentLink =>
      TfRef.attribute<String>(this, 'psc_service_attachment_link');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replica_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get replicaConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'replica_configuration',
      );

  /// Reference to `replica_names` attribute.
  TfRef<List<String>> get replicaNames =>
      TfRef.attribute<List<String>>(this, 'replica_names');

  /// Reference to `replication_cluster` attribute.
  TfRef<List<Map<String, Object?>>> get replicationCluster =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'replication_cluster');

  /// Reference to `restore_backup_context` attribute.
  TfRef<List<Map<String, Object?>>> get restoreBackupContext =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'restore_backup_context',
      );

  /// Reference to `root_password` attribute.
  TfRef<String> get rootPassword =>
      TfRef.attribute<String>(this, 'root_password');

  /// Reference to `root_password_wo` attribute.
  TfRef<String> get rootPasswordWo =>
      TfRef.attribute<String>(this, 'root_password_wo');

  /// Reference to `root_password_wo_version` attribute.
  TfRef<String> get rootPasswordWoVersion =>
      TfRef.attribute<String>(this, 'root_password_wo_version');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `server_ca_cert` attribute.
  TfRef<List<Map<String, Object?>>> get serverCaCert =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'server_ca_cert');

  /// Reference to `service_account_email_address` attribute.
  TfRef<String> get serviceAccountEmailAddress =>
      TfRef.attribute<String>(this, 'service_account_email_address');

  /// Reference to `settings` attribute.
  TfRef<List<Map<String, Object?>>> get settings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'settings');

  /// Reference to `switch_transaction_logs_to_cloud_storage_enabled` attribute.
  TfRef<bool> get switchTransactionLogsToCloudStorageEnabled =>
      TfRef.attribute<bool>(
        this,
        'switch_transaction_logs_to_cloud_storage_enabled',
      );
}
