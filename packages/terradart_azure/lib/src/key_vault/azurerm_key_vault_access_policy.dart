// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_access_policy`.
const Set<String> _azurermKeyVaultAccessPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault_access_policy`.
final class AzurermKeyVaultAccessPolicy extends Resource {
  static const String tfType = 'azurerm_key_vault_access_policy';

  AzurermKeyVaultAccessPolicy(
    super.localName, {
    TfArg<String>? applicationId,
    TfArg<List<String>>? certificatePermissions,
    TfArg<List<String>>? keyPermissions,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> objectId,
    TfArg<List<String>>? secretPermissions,
    TfArg<List<String>>? storagePermissions,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': ?applicationId,
           'certificate_permissions': ?certificatePermissions,
           'key_permissions': ?keyPermissions,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'object_id': objectId,
           'secret_permissions': ?secretPermissions,
           'storage_permissions': ?storagePermissions,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultAccessPolicy>`.
  RefTo<AzurermKeyVaultAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `certificate_permissions` attribute.
  TfRef<List<String>> get certificatePermissions =>
      TfRef.attribute<List<String>>(this, 'certificate_permissions');

  /// Reference to `key_permissions` attribute.
  TfRef<List<String>> get keyPermissions =>
      TfRef.attribute<List<String>>(this, 'key_permissions');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `secret_permissions` attribute.
  TfRef<List<String>> get secretPermissions =>
      TfRef.attribute<List<String>>(this, 'secret_permissions');

  /// Reference to `storage_permissions` attribute.
  TfRef<List<String>> get storagePermissions =>
      TfRef.attribute<List<String>>(this, 'storage_permissions');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
