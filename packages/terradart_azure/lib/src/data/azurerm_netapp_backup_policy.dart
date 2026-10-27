// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_backup_policy.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_backup_policy`.
const Set<String> _azurermNetappBackupPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_backup_policy`.
final class DataAzurermNetappBackupPolicy extends Data {
  static const String tfType = 'azurerm_netapp_backup_policy';

  DataAzurermNetappBackupPolicy(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappBackupPolicySensitive;

  /// A reference to the `azurerm_netapp_backup_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappBackupPolicy>`.
  RefTo<AzurermNetappBackupPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `daily_backups_to_keep` attribute.
  TfRef<num> get dailyBackupsToKeep =>
      TfRef.attribute<num>(this, 'daily_backups_to_keep');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `monthly_backups_to_keep` attribute.
  TfRef<num> get monthlyBackupsToKeep =>
      TfRef.attribute<num>(this, 'monthly_backups_to_keep');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `weekly_backups_to_keep` attribute.
  TfRef<num> get weeklyBackupsToKeep =>
      TfRef.attribute<num>(this, 'weekly_backups_to_keep');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
