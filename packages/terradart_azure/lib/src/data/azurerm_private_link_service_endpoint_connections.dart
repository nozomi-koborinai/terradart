// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_link_service_endpoint_connections`.
const Set<String> _azurermPrivateLinkServiceEndpointConnectionsSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_link_service_endpoint_connections`.
final class DataAzurermPrivateLinkServiceEndpointConnections extends Data {
  static const String tfType =
      'azurerm_private_link_service_endpoint_connections';

  DataAzurermPrivateLinkServiceEndpointConnections(
    super.localName, {
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serviceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_id': serviceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateLinkServiceEndpointConnectionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_endpoint_connections` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpointConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_endpoint_connections',
      );

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
