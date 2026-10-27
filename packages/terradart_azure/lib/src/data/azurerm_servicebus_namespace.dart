// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../servicebus/azurerm_servicebus_namespace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_servicebus_namespace`.
const Set<String> _azurermServicebusNamespaceSensitive = <String>{
  'default_primary_connection_string',
  'default_primary_key',
  'default_secondary_connection_string',
  'default_secondary_key',
};

/// Factory wrapper for `azurerm_servicebus_namespace`.
final class DataAzurermServicebusNamespace extends Data {
  static const String tfType = 'azurerm_servicebus_namespace';

  DataAzurermServicebusNamespace(
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
  Set<String> get sensitiveFields => _azurermServicebusNamespaceSensitive;

  /// A reference to the `azurerm_servicebus_namespace` this data source reads, for
  /// arguments typed `RefTo<AzurermServicebusNamespace>`.
  RefTo<AzurermServicebusNamespace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `default_primary_connection_string` attribute.
  TfRef<String> get defaultPrimaryConnectionString =>
      TfRef.attribute<String>(this, 'default_primary_connection_string');

  /// Reference to `default_primary_key` attribute.
  TfRef<String> get defaultPrimaryKey =>
      TfRef.attribute<String>(this, 'default_primary_key');

  /// Reference to `default_secondary_connection_string` attribute.
  TfRef<String> get defaultSecondaryConnectionString =>
      TfRef.attribute<String>(this, 'default_secondary_connection_string');

  /// Reference to `default_secondary_key` attribute.
  TfRef<String> get defaultSecondaryKey =>
      TfRef.attribute<String>(this, 'default_secondary_key');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `premium_messaging_partitions` attribute.
  TfRef<num> get premiumMessagingPartitions =>
      TfRef.attribute<num>(this, 'premium_messaging_partitions');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
