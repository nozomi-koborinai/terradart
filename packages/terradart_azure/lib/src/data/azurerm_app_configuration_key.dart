// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../app_configuration/azurerm_app_configuration_key.dart';

/// Sensitive field paths for `azurerm_app_configuration_key`.
const Set<String> _azurermAppConfigurationKeySensitive = <String>{};

/// Factory wrapper for `azurerm_app_configuration_key`.
final class DataAzurermAppConfigurationKey extends Data {
  static const String tfType = 'azurerm_app_configuration_key';

  DataAzurermAppConfigurationKey(
    super.localName, {
    required TfArg<String> configurationStoreId,
    required TfArg<String> key,
    TfArg<String>? label,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_store_id': configurationStoreId,
           'key': key,
           'label': ?label,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppConfigurationKeySensitive;

  /// A reference to the `azurerm_app_configuration_key` this data source reads, for
  /// arguments typed `RefTo<AzurermAppConfigurationKey>`.
  RefTo<AzurermAppConfigurationKey> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `vault_key_reference` attribute.
  TfRef<String> get vaultKeyReference =>
      TfRef.attribute<String>(this, 'vault_key_reference');

  /// Reference to `configuration_store_id` attribute.
  TfRef<String> get configurationStoreId =>
      TfRef.attribute<String>(this, 'configuration_store_id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');
}
