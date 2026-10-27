// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_certificates`.
const Set<String> _azurermKeyVaultCertificatesSensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault_certificates`.
final class DataAzurermKeyVaultCertificates extends Data {
  static const String tfType = 'azurerm_key_vault_certificates';

  DataAzurermKeyVaultCertificates(
    super.localName, {
    TfArg<bool>? includePending,
    required RefTo<AzurermKeyVault> keyVaultId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'include_pending': ?includePending,
           'key_vault_id': keyVaultId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultCertificatesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificates` attribute.
  TfRef<List<Map<String, Object?>>> get certificates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certificates');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');

  /// Reference to `include_pending` attribute.
  TfRef<bool> get includePending =>
      TfRef.attribute<bool>(this, 'include_pending');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');
}
