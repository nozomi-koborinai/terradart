// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../eventhub/azurerm_eventhub_namespace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventhub_namespace`.
const Set<String> _azurermEventhubNamespaceSensitive = <String>{
  'default_primary_connection_string',
  'default_primary_connection_string_alias',
  'default_primary_key',
  'default_secondary_connection_string',
  'default_secondary_connection_string_alias',
  'default_secondary_key',
};

/// Factory wrapper for `azurerm_eventhub_namespace`.
final class DataAzurermEventhubNamespace extends Data {
  static const String tfType = 'azurerm_eventhub_namespace';

  DataAzurermEventhubNamespace(
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
  Set<String> get sensitiveFields => _azurermEventhubNamespaceSensitive;

  /// A reference to the `azurerm_eventhub_namespace` this data source reads, for
  /// arguments typed `RefTo<AzurermEventhubNamespace>`.
  RefTo<AzurermEventhubNamespace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_inflate_enabled` attribute.
  TfRef<bool> get autoInflateEnabled =>
      TfRef.attribute<bool>(this, 'auto_inflate_enabled');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `dedicated_cluster_id` attribute.
  TfRef<String> get dedicatedClusterId =>
      TfRef.attribute<String>(this, 'dedicated_cluster_id');

  /// Reference to `default_primary_connection_string` attribute.
  TfRef<String> get defaultPrimaryConnectionString =>
      TfRef.attribute<String>(this, 'default_primary_connection_string');

  /// Reference to `default_primary_connection_string_alias` attribute.
  TfRef<String> get defaultPrimaryConnectionStringAlias =>
      TfRef.attribute<String>(this, 'default_primary_connection_string_alias');

  /// Reference to `default_primary_key` attribute.
  TfRef<String> get defaultPrimaryKey =>
      TfRef.attribute<String>(this, 'default_primary_key');

  /// Reference to `default_secondary_connection_string` attribute.
  TfRef<String> get defaultSecondaryConnectionString =>
      TfRef.attribute<String>(this, 'default_secondary_connection_string');

  /// Reference to `default_secondary_connection_string_alias` attribute.
  TfRef<String> get defaultSecondaryConnectionStringAlias =>
      TfRef.attribute<String>(
        this,
        'default_secondary_connection_string_alias',
      );

  /// Reference to `default_secondary_key` attribute.
  TfRef<String> get defaultSecondaryKey =>
      TfRef.attribute<String>(this, 'default_secondary_key');

  /// Reference to `kafka_enabled` attribute.
  TfRef<bool> get kafkaEnabled => TfRef.attribute<bool>(this, 'kafka_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_throughput_units` attribute.
  TfRef<num> get maximumThroughputUnits =>
      TfRef.attribute<num>(this, 'maximum_throughput_units');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
