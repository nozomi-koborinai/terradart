// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_instance_mysql_flexible_server`.
const Set<String>
_azurermDataProtectionBackupInstanceMysqlFlexibleServerSensitive = <String>{};

/// Factory wrapper for `azurerm_data_protection_backup_instance_mysql_flexible_server`.
final class AzurermDataProtectionBackupInstanceMysqlFlexibleServer
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_instance_mysql_flexible_server';

  AzurermDataProtectionBackupInstanceMysqlFlexibleServer(
    super.localName, {
    required TfArg<String> backupPolicyId,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> serverId,
    required TfArg<String> vaultId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_policy_id': backupPolicyId,
           'location': location,
           'name': name,
           'server_id': serverId,
           'vault_id': vaultId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupInstanceMysqlFlexibleServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupInstanceMysqlFlexibleServer>`.
  RefTo<AzurermDataProtectionBackupInstanceMysqlFlexibleServer> get ref =>
      RefTo.of(this);

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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
