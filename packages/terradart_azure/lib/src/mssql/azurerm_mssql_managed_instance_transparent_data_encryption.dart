// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_managed_instance_transparent_data_encryption`.
const Set<String>
_azurermMssqlManagedInstanceTransparentDataEncryptionSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_managed_instance_transparent_data_encryption`.
final class AzurermMssqlManagedInstanceTransparentDataEncryption
    extends Resource {
  static const String tfType =
      'azurerm_mssql_managed_instance_transparent_data_encryption';

  AzurermMssqlManagedInstanceTransparentDataEncryption(
    super.localName, {
    TfArg<bool>? autoRotationEnabled,
    TfArg<String>? keyVaultKeyId,
    required TfArg<String> managedInstanceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_rotation_enabled': ?autoRotationEnabled,
           'key_vault_key_id': ?keyVaultKeyId,
           'managed_instance_id': managedInstanceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlManagedInstanceTransparentDataEncryptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlManagedInstanceTransparentDataEncryption>`.
  RefTo<AzurermMssqlManagedInstanceTransparentDataEncryption> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_rotation_enabled` attribute.
  TfRef<bool> get autoRotationEnabled =>
      TfRef.attribute<bool>(this, 'auto_rotation_enabled');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `managed_instance_id` attribute.
  TfRef<String> get managedInstanceId =>
      TfRef.attribute<String>(this, 'managed_instance_id');
}
