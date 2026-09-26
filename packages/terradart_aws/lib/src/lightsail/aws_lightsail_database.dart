// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_database`.
const Set<String> _awsLightsailDatabaseSensitive = <String>{'master_password'};

/// Factory wrapper for `aws_lightsail_database`.
final class AwsLightsailDatabase extends Resource {
  static const String tfType = 'aws_lightsail_database';

  AwsLightsailDatabase({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<String>? availabilityZone,
    TfArg<bool>? backupRetentionEnabled,
    required TfArg<String> blueprintId,
    required TfArg<String> bundleId,
    TfArg<String>? finalSnapshotName,
    required TfArg<String> masterDatabaseName,
    required TfArg<String> masterPassword,
    required TfArg<String> masterUsername,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    required TfArg<String> relationalDatabaseName,
    TfArg<bool>? skipFinalSnapshot,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (backupRetentionEnabled != null)
             'backup_retention_enabled': backupRetentionEnabled,
           'blueprint_id': blueprintId,
           'bundle_id': bundleId,
           if (finalSnapshotName != null)
             'final_snapshot_name': finalSnapshotName,
           'master_database_name': masterDatabaseName,
           'master_password': masterPassword,
           'master_username': masterUsername,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           'relational_database_name': relationalDatabaseName,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDatabaseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ca_certificate_identifier` attribute.
  TfRef<String> get caCertificateIdentifier =>
      TfRef.attribute<String>(this, 'ca_certificate_identifier');

  /// Reference to `cpu_count` attribute.
  TfRef<num> get cpuCount => TfRef.attribute<num>(this, 'cpu_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `disk_size` attribute.
  TfRef<num> get diskSize => TfRef.attribute<num>(this, 'disk_size');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `master_endpoint_address` attribute.
  TfRef<String> get masterEndpointAddress =>
      TfRef.attribute<String>(this, 'master_endpoint_address');

  /// Reference to `master_endpoint_port` attribute.
  TfRef<num> get masterEndpointPort =>
      TfRef.attribute<num>(this, 'master_endpoint_port');

  /// Reference to `ram_size` attribute.
  TfRef<num> get ramSize => TfRef.attribute<num>(this, 'ram_size');

  /// Reference to `secondary_availability_zone` attribute.
  TfRef<String> get secondaryAvailabilityZone =>
      TfRef.attribute<String>(this, 'secondary_availability_zone');

  /// Reference to `support_code` attribute.
  TfRef<String> get supportCode =>
      TfRef.attribute<String>(this, 'support_code');
}
