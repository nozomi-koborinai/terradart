// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_certificate_data`.
const Set<String> _azurermKeyVaultCertificateDataSensitive = <String>{'key'};

/// Factory wrapper for `azurerm_key_vault_certificate_data`.
final class DataAzurermKeyVaultCertificateData extends Data {
  static const String tfType = 'azurerm_key_vault_certificate_data';

  DataAzurermKeyVaultCertificateData(
    super.localName, {
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_vault_id': keyVaultId.encodeAs('id'),
           'name': name,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultCertificateDataSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificates_count` attribute.
  TfRef<num> get certificatesCount =>
      TfRef.attribute<num>(this, 'certificates_count');

  /// Reference to `expires` attribute.
  TfRef<String> get expires => TfRef.attribute<String>(this, 'expires');

  /// Reference to `hex` attribute.
  TfRef<String> get hex => TfRef.attribute<String>(this, 'hex');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `pem` attribute.
  TfRef<String> get pem => TfRef.attribute<String>(this, 'pem');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
