// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_secrets`.
const Set<String> _azurermKeyVaultSecretsSensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault_secrets`.
final class DataAzurermKeyVaultSecrets extends Data {
  static const String tfType = 'azurerm_key_vault_secrets';

  DataAzurermKeyVaultSecrets(
    super.localName, {
    required RefTo<AzurermKeyVault> keyVaultId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'key_vault_id': keyVaultId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultSecretsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');

  /// Reference to `secrets` attribute.
  TfRef<List<Map<String, Object?>>> get secrets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secrets');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');
}
