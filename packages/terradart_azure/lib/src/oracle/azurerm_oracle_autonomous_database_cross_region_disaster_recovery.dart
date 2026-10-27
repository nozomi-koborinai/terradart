// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_oracle_autonomous_database_cross_region_disaster_recovery`.
const Set<String>
_azurermOracleAutonomousDatabaseCrossRegionDisasterRecoverySensitive =
    <String>{};

/// Factory wrapper for `azurerm_oracle_autonomous_database_cross_region_disaster_recovery`.
final class AzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery
    extends Resource {
  static const String tfType =
      'azurerm_oracle_autonomous_database_cross_region_disaster_recovery';

  AzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? replicateAutomaticBackupsEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sourceAutonomousDatabaseId,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           'name': name,
           'replicate_automatic_backups_enabled':
               ?replicateAutomaticBackupsEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_autonomous_database_id': sourceAutonomousDatabaseId,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleAutonomousDatabaseCrossRegionDisasterRecoverySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery>`.
  RefTo<AzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_scaling_enabled` attribute.
  TfRef<bool> get autoScalingEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_enabled');

  /// Reference to `auto_scaling_for_storage_enabled` attribute.
  TfRef<bool> get autoScalingForStorageEnabled =>
      TfRef.attribute<bool>(this, 'auto_scaling_for_storage_enabled');

  /// Reference to `backup_retention_period_in_days` attribute.
  TfRef<num> get backupRetentionPeriodInDays =>
      TfRef.attribute<num>(this, 'backup_retention_period_in_days');

  /// Reference to `character_set` attribute.
  TfRef<String> get characterSet =>
      TfRef.attribute<String>(this, 'character_set');

  /// Reference to `compute_count` attribute.
  TfRef<num> get computeCount => TfRef.attribute<num>(this, 'compute_count');

  /// Reference to `compute_model` attribute.
  TfRef<String> get computeModel =>
      TfRef.attribute<String>(this, 'compute_model');

  /// Reference to `customer_contacts` attribute.
  TfRef<List<String>> get customerContacts =>
      TfRef.attribute<List<String>>(this, 'customer_contacts');

  /// Reference to `data_storage_size_in_tb` attribute.
  TfRef<num> get dataStorageSizeInTb =>
      TfRef.attribute<num>(this, 'data_storage_size_in_tb');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `database_workload` attribute.
  TfRef<String> get databaseWorkload =>
      TfRef.attribute<String>(this, 'database_workload');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `mtls_connection_required` attribute.
  TfRef<bool> get mtlsConnectionRequired =>
      TfRef.attribute<bool>(this, 'mtls_connection_required');

  /// Reference to `national_character_set` attribute.
  TfRef<String> get nationalCharacterSet =>
      TfRef.attribute<String>(this, 'national_character_set');

  /// Reference to `remote_disaster_recovery_type` attribute.
  TfRef<String> get remoteDisasterRecoveryType =>
      TfRef.attribute<String>(this, 'remote_disaster_recovery_type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `replicate_automatic_backups_enabled` attribute.
  TfRef<bool> get replicateAutomaticBackupsEnabled =>
      TfRef.attribute<bool>(this, 'replicate_automatic_backups_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_autonomous_database_id` attribute.
  TfRef<String> get sourceAutonomousDatabaseId =>
      TfRef.attribute<String>(this, 'source_autonomous_database_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
