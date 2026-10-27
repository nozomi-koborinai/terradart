// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../backup/azurerm_backup_policy_vm.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_backup_policy_vm`.
const Set<String> _azurermBackupPolicyVmSensitive = <String>{};

/// Factory wrapper for `azurerm_backup_policy_vm`.
final class DataAzurermBackupPolicyVm extends Data {
  static const String tfType = 'azurerm_backup_policy_vm';

  DataAzurermBackupPolicyVm(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBackupPolicyVmSensitive;

  /// A reference to the `azurerm_backup_policy_vm` this data source reads, for
  /// arguments typed `RefTo<AzurermBackupPolicyVm>`.
  RefTo<AzurermBackupPolicyVm> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
