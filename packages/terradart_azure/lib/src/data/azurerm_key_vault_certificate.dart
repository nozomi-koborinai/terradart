// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_certificate.dart';
import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_certificate`.
const Set<String> _azurermKeyVaultCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault_certificate`.
final class DataAzurermKeyVaultCertificate extends Data {
  static const String tfType = 'azurerm_key_vault_certificate';

  DataAzurermKeyVaultCertificate(
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
  Set<String> get sensitiveFields => _azurermKeyVaultCertificateSensitive;

  /// A reference to the `azurerm_key_vault_certificate` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultCertificate>`.
  RefTo<AzurermKeyVaultCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_data` attribute.
  TfRef<String> get certificateData =>
      TfRef.attribute<String>(this, 'certificate_data');

  /// Reference to `certificate_data_base64` attribute.
  TfRef<String> get certificateDataBase64 =>
      TfRef.attribute<String>(this, 'certificate_data_base64');

  /// Reference to `certificate_policy` attribute.
  TfRef<List<Map<String, Object?>>> get certificatePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certificate_policy');

  /// Reference to `expires` attribute.
  TfRef<String> get expires => TfRef.attribute<String>(this, 'expires');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `resource_manager_versionless_id` attribute.
  TfRef<String> get resourceManagerVersionlessId =>
      TfRef.attribute<String>(this, 'resource_manager_versionless_id');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `versionless_id` attribute.
  TfRef<String> get versionlessId =>
      TfRef.attribute<String>(this, 'versionless_id');

  /// Reference to `versionless_secret_id` attribute.
  TfRef<String> get versionlessSecretId =>
      TfRef.attribute<String>(this, 'versionless_secret_id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
