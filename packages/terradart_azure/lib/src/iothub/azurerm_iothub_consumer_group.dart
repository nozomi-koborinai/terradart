// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_consumer_group`.
const Set<String> _azurermIothubConsumerGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_iothub_consumer_group`.
final class AzurermIothubConsumerGroup extends Resource {
  static const String tfType = 'azurerm_iothub_consumer_group';

  AzurermIothubConsumerGroup(
    super.localName, {
    required TfArg<String> eventhubEndpointName,
    required TfArg<String> iothubName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'eventhub_endpoint_name': eventhubEndpointName,
           'iothub_name': iothubName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubConsumerGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubConsumerGroup>`.
  RefTo<AzurermIothubConsumerGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `eventhub_endpoint_name` attribute.
  TfRef<String> get eventhubEndpointName =>
      TfRef.attribute<String>(this, 'eventhub_endpoint_name');

  /// Reference to `iothub_name` attribute.
  TfRef<String> get iothubName => TfRef.attribute<String>(this, 'iothub_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
