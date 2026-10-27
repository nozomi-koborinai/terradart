// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_configuration_keys`.
const Set<String> _azurermAppConfigurationKeysSensitive = <String>{};

/// Factory wrapper for `azurerm_app_configuration_keys`.
final class DataAzurermAppConfigurationKeys extends Data {
  static const String tfType = 'azurerm_app_configuration_keys';

  DataAzurermAppConfigurationKeys(
    super.localName, {
    required TfArg<String> configurationStoreId,
    TfArg<String>? key,
    TfArg<String>? label,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_store_id': configurationStoreId,
           'key': ?key,
           'label': ?label,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppConfigurationKeysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `items` attribute.
  TfRef<List<Map<String, Object?>>> get items =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'items');

  /// Reference to `configuration_store_id` attribute.
  TfRef<String> get configurationStoreId =>
      TfRef.attribute<String>(this, 'configuration_store_id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');
}
