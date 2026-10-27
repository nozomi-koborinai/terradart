// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_backup_policy`.
const Set<String> _azurermNetappBackupPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_backup_policy`.
final class AzurermNetappBackupPolicy extends Resource {
  static const String tfType = 'azurerm_netapp_backup_policy';

  AzurermNetappBackupPolicy(
    super.localName, {
    required TfArg<String> accountName,
    TfArg<num>? dailyBackupsToKeep,
    TfArg<bool>? enabled,
    required TfArg<String> location,
    TfArg<num>? monthlyBackupsToKeep,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? weeklyBackupsToKeep,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'daily_backups_to_keep': ?dailyBackupsToKeep,
           'enabled': ?enabled,
           'location': location,
           'monthly_backups_to_keep': ?monthlyBackupsToKeep,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'weekly_backups_to_keep': ?weeklyBackupsToKeep,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappBackupPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappBackupPolicy>`.
  RefTo<AzurermNetappBackupPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

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

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `weekly_backups_to_keep` attribute.
  TfRef<num> get weeklyBackupsToKeep =>
      TfRef.attribute<num>(this, 'weekly_backups_to_keep');
}
