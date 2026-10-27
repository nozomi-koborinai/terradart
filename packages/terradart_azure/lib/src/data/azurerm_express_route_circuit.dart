// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../express/azurerm_express_route_circuit.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_circuit`.
const Set<String> _azurermExpressRouteCircuitSensitive = <String>{};

/// Factory wrapper for `azurerm_express_route_circuit`.
final class DataAzurermExpressRouteCircuit extends Data {
  static const String tfType = 'azurerm_express_route_circuit';

  DataAzurermExpressRouteCircuit(
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
  Set<String> get sensitiveFields => _azurermExpressRouteCircuitSensitive;

  /// A reference to the `azurerm_express_route_circuit` this data source reads, for
  /// arguments typed `RefTo<AzurermExpressRouteCircuit>`.
  RefTo<AzurermExpressRouteCircuit> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `peerings` attribute.
  TfRef<List<Map<String, Object?>>> get peerings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'peerings');

  /// Reference to `service_key` attribute.
  TfRef<String> get serviceKey => TfRef.attribute<String>(this, 'service_key');

  /// Reference to `service_provider_properties` attribute.
  TfRef<List<Map<String, Object?>>> get serviceProviderProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'service_provider_properties',
      );

  /// Reference to `service_provider_provisioning_state` attribute.
  TfRef<String> get serviceProviderProvisioningState =>
      TfRef.attribute<String>(this, 'service_provider_provisioning_state');

  /// Reference to `sku` attribute.
  TfRef<List<Map<String, Object?>>> get sku =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sku');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
