// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_app_service_slot_virtual_network_swift_connection`.
const Set<String> _azurermAppServiceSlotVirtualNetworkSwiftConnectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_app_service_slot_virtual_network_swift_connection`.
final class AzurermAppServiceSlotVirtualNetworkSwiftConnection
    extends Resource {
  static const String tfType =
      'azurerm_app_service_slot_virtual_network_swift_connection';

  AzurermAppServiceSlotVirtualNetworkSwiftConnection(
    super.localName, {
    required TfArg<String> appServiceId,
    required TfArg<String> slotName,
    required RefTo<AzurermSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_id': appServiceId,
           'slot_name': slotName,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceSlotVirtualNetworkSwiftConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceSlotVirtualNetworkSwiftConnection>`.
  RefTo<AzurermAppServiceSlotVirtualNetworkSwiftConnection> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_id` attribute.
  TfRef<String> get appServiceId =>
      TfRef.attribute<String>(this, 'app_service_id');

  /// Reference to `slot_name` attribute.
  TfRef<String> get slotName => TfRef.attribute<String>(this, 'slot_name');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
