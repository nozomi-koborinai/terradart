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
           'apply_immediately': ?applyImmediately,
           'availability_zone': ?availabilityZone,
           'backup_retention_enabled': ?backupRetentionEnabled,
           'blueprint_id': blueprintId,
           'bundle_id': bundleId,
           'final_snapshot_name': ?finalSnapshotName,
           'master_database_name': masterDatabaseName,
           'master_password': masterPassword,
           'master_username': masterUsername,
           'preferred_backup_window': ?preferredBackupWindow,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'relational_database_name': relationalDatabaseName,
           'skip_final_snapshot': ?skipFinalSnapshot,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailDatabase>`.
  RefTo<AwsLightsailDatabase> get ref => RefTo.of(this);

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

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediately =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `backup_retention_enabled` attribute.
  TfRef<bool> get backupRetentionEnabled =>
      TfRef.attribute<bool>(this, 'backup_retention_enabled');

  /// Reference to `blueprint_id` attribute.
  TfRef<String> get blueprintId =>
      TfRef.attribute<String>(this, 'blueprint_id');

  /// Reference to `bundle_id` attribute.
  TfRef<String> get bundleId => TfRef.attribute<String>(this, 'bundle_id');

  /// Reference to `final_snapshot_name` attribute.
  TfRef<String> get finalSnapshotName =>
      TfRef.attribute<String>(this, 'final_snapshot_name');

  /// Reference to `master_database_name` attribute.
  TfRef<String> get masterDatabaseName =>
      TfRef.attribute<String>(this, 'master_database_name');

  /// Reference to `master_password` attribute.
  TfRef<String> get masterPassword =>
      TfRef.attribute<String>(this, 'master_password');

  /// Reference to `master_username` attribute.
  TfRef<String> get masterUsername =>
      TfRef.attribute<String>(this, 'master_username');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindow =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `relational_database_name` attribute.
  TfRef<String> get relationalDatabaseName =>
      TfRef.attribute<String>(this, 'relational_database_name');

  /// Reference to `skip_final_snapshot` attribute.
  TfRef<bool> get skipFinalSnapshot =>
      TfRef.attribute<bool>(this, 'skip_final_snapshot');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
