// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/azurerm_oracle_autonomous_database_backup.dart';

/// Sensitive field paths for `azurerm_oracle_autonomous_database_backup`.
const Set<String> _azurermOracleAutonomousDatabaseBackupSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_autonomous_database_backup`.
final class DataAzurermOracleAutonomousDatabaseBackup extends Data {
  static const String tfType = 'azurerm_oracle_autonomous_database_backup';

  DataAzurermOracleAutonomousDatabaseBackup(
    super.localName, {
    required TfArg<String> autonomousDatabaseId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'autonomous_database_id': autonomousDatabaseId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleAutonomousDatabaseBackupSensitive;

  /// A reference to the `azurerm_oracle_autonomous_database_backup` this data source reads, for
  /// arguments typed `RefTo<AzurermOracleAutonomousDatabaseBackup>`.
  RefTo<AzurermOracleAutonomousDatabaseBackup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automatic` attribute.
  TfRef<bool> get automatic => TfRef.attribute<bool>(this, 'automatic');

  /// Reference to `autonomous_database_backup_ocid` attribute.
  TfRef<String> get autonomousDatabaseBackupOcid =>
      TfRef.attribute<String>(this, 'autonomous_database_backup_ocid');

  /// Reference to `autonomous_database_ocid` attribute.
  TfRef<String> get autonomousDatabaseOcid =>
      TfRef.attribute<String>(this, 'autonomous_database_ocid');

  /// Reference to `database_backup_size_in_tbs` attribute.
  TfRef<num> get databaseBackupSizeInTbs =>
      TfRef.attribute<num>(this, 'database_backup_size_in_tbs');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `lifecycle_details` attribute.
  TfRef<String> get lifecycleDetails =>
      TfRef.attribute<String>(this, 'lifecycle_details');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `provisioning_state` attribute.
  TfRef<String> get provisioningState =>
      TfRef.attribute<String>(this, 'provisioning_state');

  /// Reference to `restorable` attribute.
  TfRef<bool> get restorable => TfRef.attribute<bool>(this, 'restorable');

  /// Reference to `retention_period_in_days` attribute.
  TfRef<num> get retentionPeriodInDays =>
      TfRef.attribute<num>(this, 'retention_period_in_days');

  /// Reference to `time_available_til` attribute.
  TfRef<String> get timeAvailableTil =>
      TfRef.attribute<String>(this, 'time_available_til');

  /// Reference to `time_ended` attribute.
  TfRef<String> get timeEnded => TfRef.attribute<String>(this, 'time_ended');

  /// Reference to `time_started` attribute.
  TfRef<String> get timeStarted =>
      TfRef.attribute<String>(this, 'time_started');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `autonomous_database_id` attribute.
  TfRef<String> get autonomousDatabaseId =>
      TfRef.attribute<String>(this, 'autonomous_database_id');
}
