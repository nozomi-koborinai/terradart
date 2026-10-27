// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_container`.
const Set<String> _azurermStorageContainerSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_container`.
final class AzurermStorageContainer extends Resource {
  static const String tfType = 'azurerm_storage_container';

  AzurermStorageContainer(
    super.localName, {
    TfArg<String>? containerAccessType,
    TfArg<String>? defaultEncryptionScope,
    TfArg<bool>? encryptionScopeOverrideEnabled,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermStorageAccount> storageAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_access_type': ?containerAccessType,
           'default_encryption_scope': ?defaultEncryptionScope,
           'encryption_scope_override_enabled': ?encryptionScopeOverrideEnabled,
           'metadata': ?metadata,
           'name': name,
           'storage_account_id': storageAccountId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageContainerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageContainer>`.
  RefTo<AzurermStorageContainer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `has_immutability_policy` attribute.
  TfRef<bool> get hasImmutabilityPolicy =>
      TfRef.attribute<bool>(this, 'has_immutability_policy');

  /// Reference to `has_legal_hold` attribute.
  TfRef<bool> get hasLegalHold => TfRef.attribute<bool>(this, 'has_legal_hold');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `container_access_type` attribute.
  TfRef<String> get containerAccessType =>
      TfRef.attribute<String>(this, 'container_access_type');

  /// Reference to `default_encryption_scope` attribute.
  TfRef<String> get defaultEncryptionScope =>
      TfRef.attribute<String>(this, 'default_encryption_scope');

  /// Reference to `encryption_scope_override_enabled` attribute.
  TfRef<bool> get encryptionScopeOverrideEnabled =>
      TfRef.attribute<bool>(this, 'encryption_scope_override_enabled');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
