// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_secret.dart';
import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_secret`.
const Set<String> _azurermKeyVaultSecretSensitive = <String>{'value'};

/// Factory wrapper for `azurerm_key_vault_secret`.
final class DataAzurermKeyVaultSecret extends Data {
  static const String tfType = 'azurerm_key_vault_secret';

  DataAzurermKeyVaultSecret(
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
  Set<String> get sensitiveFields => _azurermKeyVaultSecretSensitive;

  /// A reference to the `azurerm_key_vault_secret` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultSecret>`.
  RefTo<AzurermKeyVaultSecret> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `not_before_date` attribute.
  TfRef<String> get notBeforeDate =>
      TfRef.attribute<String>(this, 'not_before_date');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_versionless_id` attribute.
  TfRef<String> get resourceVersionlessId =>
      TfRef.attribute<String>(this, 'resource_versionless_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `versionless_id` attribute.
  TfRef<String> get versionlessId =>
      TfRef.attribute<String>(this, 'versionless_id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
