// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_virtual_hub_ip`.
const Set<String> _azurermVirtualHubIpSensitive = <String>{};

/// Virtual Hub Ip Private Ip Allocation enum for `private_ip_allocation_method`.
extension type const VirtualHubIpPrivateIpAllocationMethod._(TfArg<String> _)
    implements TfArg<String> {
  VirtualHubIpPrivateIpAllocationMethod.variable(String name)
    : this._(TfArg.variable(name));
  VirtualHubIpPrivateIpAllocationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualHubIpPrivateIpAllocationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const dynamic = VirtualHubIpPrivateIpAllocationMethod._(
    TfArgLiteral('Dynamic'),
  );
  static const static = VirtualHubIpPrivateIpAllocationMethod._(
    TfArgLiteral('Static'),
  );

  static const List<VirtualHubIpPrivateIpAllocationMethod> values = [
    dynamic,
    static,
  ];
}

/// Factory wrapper for `azurerm_virtual_hub_ip`.
final class AzurermVirtualHubIp extends Resource {
  static const String tfType = 'azurerm_virtual_hub_ip';

  AzurermVirtualHubIp(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? privateIpAddress,
    VirtualHubIpPrivateIpAllocationMethod? privateIpAllocationMethod,
    required TfArg<String> publicIpAddressId,
    required RefTo<AzurermSubnet> subnetId,
    required TfArg<String> virtualHubId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'private_ip_address': ?privateIpAddress,
           'private_ip_allocation_method': ?privateIpAllocationMethod,
           'public_ip_address_id': publicIpAddressId,
           'subnet_id': subnetId.encodeAs('id'),
           'virtual_hub_id': virtualHubId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualHubIpSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualHubIp>`.
  RefTo<AzurermVirtualHubIp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `private_ip_allocation_method` attribute.
  TfRef<String> get privateIpAllocationMethod =>
      TfRef.attribute<String>(this, 'private_ip_allocation_method');

  /// Reference to `public_ip_address_id` attribute.
  TfRef<String> get publicIpAddressId =>
      TfRef.attribute<String>(this, 'public_ip_address_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
