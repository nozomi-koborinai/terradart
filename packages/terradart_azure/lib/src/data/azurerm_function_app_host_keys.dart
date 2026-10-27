// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_function_app_host_keys`.
const Set<String> _azurermFunctionAppHostKeysSensitive = <String>{
  'blobs_extension_key',
  'default_function_key',
  'durabletask_extension_key',
  'event_grid_extension_config_key',
  'event_grid_extension_key',
  'primary_key',
  'signalr_extension_key',
  'webpubsub_extension_key',
};

/// Factory wrapper for `azurerm_function_app_host_keys`.
final class DataAzurermFunctionAppHostKeys extends Data {
  static const String tfType = 'azurerm_function_app_host_keys';

  DataAzurermFunctionAppHostKeys(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFunctionAppHostKeysSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blobs_extension_key` attribute.
  TfRef<String> get blobsExtensionKey =>
      TfRef.attribute<String>(this, 'blobs_extension_key');

  /// Reference to `default_function_key` attribute.
  TfRef<String> get defaultFunctionKey =>
      TfRef.attribute<String>(this, 'default_function_key');

  /// Reference to `durabletask_extension_key` attribute.
  TfRef<String> get durabletaskExtensionKey =>
      TfRef.attribute<String>(this, 'durabletask_extension_key');

  /// Reference to `event_grid_extension_config_key` attribute.
  TfRef<String> get eventGridExtensionConfigKey =>
      TfRef.attribute<String>(this, 'event_grid_extension_config_key');

  /// Reference to `event_grid_extension_key` attribute.
  TfRef<String> get eventGridExtensionKey =>
      TfRef.attribute<String>(this, 'event_grid_extension_key');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `signalr_extension_key` attribute.
  TfRef<String> get signalrExtensionKey =>
      TfRef.attribute<String>(this, 'signalr_extension_key');

  /// Reference to `webpubsub_extension_key` attribute.
  TfRef<String> get webpubsubExtensionKey =>
      TfRef.attribute<String>(this, 'webpubsub_extension_key');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
