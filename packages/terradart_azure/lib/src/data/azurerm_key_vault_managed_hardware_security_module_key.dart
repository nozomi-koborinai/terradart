// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_managed_hardware_security_module_key.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_key`.
const Set<String> _azurermKeyVaultManagedHardwareSecurityModuleKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_key`.
final class DataAzurermKeyVaultManagedHardwareSecurityModuleKey extends Data {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_key';

  DataAzurermKeyVaultManagedHardwareSecurityModuleKey(
    super.localName, {
    required TfArg<String> managedHsmId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'managed_hsm_id': managedHsmId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleKeySensitive;

  /// A reference to the `azurerm_key_vault_managed_hardware_security_module_key` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKey>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKey> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `curve` attribute.
  TfRef<String> get curve => TfRef.attribute<String>(this, 'curve');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `key_opts` attribute.
  TfRef<List<String>> get keyOpts =>
      TfRef.attribute<List<String>>(this, 'key_opts');

  /// Reference to `key_size` attribute.
  TfRef<num> get keySize => TfRef.attribute<num>(this, 'key_size');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `not_before_date` attribute.
  TfRef<String> get notBeforeDate =>
      TfRef.attribute<String>(this, 'not_before_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `versioned_id` attribute.
  TfRef<String> get versionedId =>
      TfRef.attribute<String>(this, 'versioned_id');

  /// Reference to `managed_hsm_id` attribute.
  TfRef<String> get managedHsmId =>
      TfRef.attribute<String>(this, 'managed_hsm_id');
}
