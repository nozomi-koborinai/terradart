// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_instance_disk`.
const Set<String> _azurermDataProtectionBackupInstanceDiskSensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_instance_disk`.
final class AzurermDataProtectionBackupInstanceDisk extends Resource {
  static const String tfType = 'azurerm_data_protection_backup_instance_disk';

  AzurermDataProtectionBackupInstanceDisk(
    super.localName, {
    required TfArg<String> backupPolicyId,
    required TfArg<String> diskId,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> snapshotResourceGroupName,
    TfArg<String>? snapshotSubscriptionId,
    required TfArg<String> vaultId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_policy_id': backupPolicyId,
           'disk_id': diskId,
           'location': location,
           'name': name,
           'snapshot_resource_group_name': snapshotResourceGroupName,
           'snapshot_subscription_id': ?snapshotSubscriptionId,
           'vault_id': vaultId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupInstanceDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupInstanceDisk>`.
  RefTo<AzurermDataProtectionBackupInstanceDisk> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_state` attribute.
  TfRef<String> get protectionState =>
      TfRef.attribute<String>(this, 'protection_state');

  /// Reference to `backup_policy_id` attribute.
  TfRef<String> get backupPolicyId =>
      TfRef.attribute<String>(this, 'backup_policy_id');

  /// Reference to `disk_id` attribute.
  TfRef<String> get diskId => TfRef.attribute<String>(this, 'disk_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `snapshot_resource_group_name` attribute.
  TfRef<String> get snapshotResourceGroupName =>
      TfRef.attribute<String>(this, 'snapshot_resource_group_name');

  /// Reference to `snapshot_subscription_id` attribute.
  TfRef<String> get snapshotSubscriptionId =>
      TfRef.attribute<String>(this, 'snapshot_subscription_id');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
