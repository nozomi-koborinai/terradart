// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_app_service_virtual_network_swift_connection`.
const Set<String> _azurermAppServiceVirtualNetworkSwiftConnectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_app_service_virtual_network_swift_connection`.
final class AzurermAppServiceVirtualNetworkSwiftConnection extends Resource {
  static const String tfType =
      'azurerm_app_service_virtual_network_swift_connection';

  AzurermAppServiceVirtualNetworkSwiftConnection(
    super.localName, {
    required TfArg<String> appServiceId,
    required RefTo<AzurermSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_id': appServiceId,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAppServiceVirtualNetworkSwiftConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceVirtualNetworkSwiftConnection>`.
  RefTo<AzurermAppServiceVirtualNetworkSwiftConnection> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_id` attribute.
  TfRef<String> get appServiceId =>
      TfRef.attribute<String>(this, 'app_service_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
