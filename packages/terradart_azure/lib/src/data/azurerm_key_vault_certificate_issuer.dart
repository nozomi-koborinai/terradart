// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_certificate_issuer.dart';
import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_certificate_issuer`.
const Set<String> _azurermKeyVaultCertificateIssuerSensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault_certificate_issuer`.
final class DataAzurermKeyVaultCertificateIssuer extends Data {
  static const String tfType = 'azurerm_key_vault_certificate_issuer';

  DataAzurermKeyVaultCertificateIssuer(
    super.localName, {
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'key_vault_id': keyVaultId.encodeAs('id'), 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultCertificateIssuerSensitive;

  /// A reference to the `azurerm_key_vault_certificate_issuer` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultCertificateIssuer>`.
  RefTo<AzurermKeyVaultCertificateIssuer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `admin` attribute.
  TfRef<List<Map<String, Object?>>> get admin =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'admin');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');
}
