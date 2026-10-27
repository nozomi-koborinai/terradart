// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_express_route_gateway`.
const Set<String> _azurermExpressRouteGatewaySensitive = <String>{};

/// Factory wrapper for `azurerm_express_route_gateway`.
final class AzurermExpressRouteGateway extends Resource {
  static const String tfType = 'azurerm_express_route_gateway';

  AzurermExpressRouteGateway(
    super.localName, {
    TfArg<bool>? allowNonVirtualWanTraffic,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<num> scaleUnits,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualHubId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_non_virtual_wan_traffic': ?allowNonVirtualWanTraffic,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scale_units': scaleUnits,
           'tags': ?tags,
           'virtual_hub_id': virtualHubId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermExpressRouteGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermExpressRouteGateway>`.
  RefTo<AzurermExpressRouteGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_non_virtual_wan_traffic` attribute.
  TfRef<bool> get allowNonVirtualWanTraffic =>
      TfRef.attribute<bool>(this, 'allow_non_virtual_wan_traffic');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scale_units` attribute.
  TfRef<num> get scaleUnits => TfRef.attribute<num>(this, 'scale_units');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
