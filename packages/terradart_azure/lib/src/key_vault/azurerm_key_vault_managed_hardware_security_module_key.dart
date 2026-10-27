// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_key`.
const Set<String> _azurermKeyVaultManagedHardwareSecurityModuleKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_key`.
final class AzurermKeyVaultManagedHardwareSecurityModuleKey extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_key';

  AzurermKeyVaultManagedHardwareSecurityModuleKey(
    super.localName, {
    TfArg<String>? curve,
    TfArg<String>? expirationDate,
    required TfArg<List<String>> keyOpts,
    TfArg<num>? keySize,
    required TfArg<String> keyType,
    required TfArg<String> managedHsmId,
    required TfArg<String> name,
    TfArg<String>? notBeforeDate,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'curve': ?curve,
           'expiration_date': ?expirationDate,
           'key_opts': keyOpts,
           'key_size': ?keySize,
           'key_type': keyType,
           'managed_hsm_id': managedHsmId,
           'name': name,
           'not_before_date': ?notBeforeDate,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKey>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKey> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `versioned_id` attribute.
  TfRef<String> get versionedId =>
      TfRef.attribute<String>(this, 'versioned_id');

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

  /// Reference to `managed_hsm_id` attribute.
  TfRef<String> get managedHsmId =>
      TfRef.attribute<String>(this, 'managed_hsm_id');

  /// Reference to `not_before_date` attribute.
  TfRef<String> get notBeforeDate =>
      TfRef.attribute<String>(this, 'not_before_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
