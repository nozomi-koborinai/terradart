// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_key.dart';
import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_key`.
const Set<String> _azurermKeyVaultKeySensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault_key`.
final class DataAzurermKeyVaultKey extends Data {
  static const String tfType = 'azurerm_key_vault_key';

  DataAzurermKeyVaultKey(
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
  Set<String> get sensitiveFields => _azurermKeyVaultKeySensitive;

  /// A reference to the `azurerm_key_vault_key` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultKey>`.
  RefTo<AzurermKeyVaultKey> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `curve` attribute.
  TfRef<String> get curve => TfRef.attribute<String>(this, 'curve');

  /// Reference to `e` attribute.
  TfRef<String> get e => TfRef.attribute<String>(this, 'e');

  /// Reference to `key_opts` attribute.
  TfRef<List<String>> get keyOpts =>
      TfRef.attribute<List<String>>(this, 'key_opts');

  /// Reference to `key_size` attribute.
  TfRef<num> get keySize => TfRef.attribute<num>(this, 'key_size');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `n` attribute.
  TfRef<String> get n => TfRef.attribute<String>(this, 'n');

  /// Reference to `public_key_openssh` attribute.
  TfRef<String> get publicKeyOpenssh =>
      TfRef.attribute<String>(this, 'public_key_openssh');

  /// Reference to `public_key_pem` attribute.
  TfRef<String> get publicKeyPem =>
      TfRef.attribute<String>(this, 'public_key_pem');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_versionless_id` attribute.
  TfRef<String> get resourceVersionlessId =>
      TfRef.attribute<String>(this, 'resource_versionless_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `versionless_id` attribute.
  TfRef<String> get versionlessId =>
      TfRef.attribute<String>(this, 'versionless_id');

  /// Reference to `x` attribute.
  TfRef<String> get x => TfRef.attribute<String>(this, 'x');

  /// Reference to `y` attribute.
  TfRef<String> get y => TfRef.attribute<String>(this, 'y');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');
}
