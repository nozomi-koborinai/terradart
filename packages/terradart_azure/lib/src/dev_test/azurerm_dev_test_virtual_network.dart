// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_test_virtual_network`.
const Set<String> _azurermDevTestVirtualNetworkSensitive = <String>{};

/// Typed helper for the `subnet` block of
/// `azurerm_dev_test_virtual_network` (derived from provider schema).
@immutable
final class DevTestVirtualNetworkSubnet {
  const DevTestVirtualNetworkSubnet({
    this.useInVirtualMachineCreation,
    this.usePublicIpAddress,
    this.sharedPublicIpAddress,
  });

  final TfArg<String>? useInVirtualMachineCreation;

  final TfArg<String>? usePublicIpAddress;

  final DevTestVirtualNetworkSharedPublicIpAddress? sharedPublicIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'use_in_virtual_machine_creation': ?useInVirtualMachineCreation?.toTfJson(),
    'use_public_ip_address': ?usePublicIpAddress?.toTfJson(),
    'shared_public_ip_address': ?sharedPublicIpAddress?.encode(),
  };
}

/// Typed helper for the `subnet.shared_public_ip_address` block of
/// `azurerm_dev_test_virtual_network` (derived from provider schema).
@immutable
final class DevTestVirtualNetworkSharedPublicIpAddress {
  const DevTestVirtualNetworkSharedPublicIpAddress({this.allowedPorts});

  final List<DevTestVirtualNetworkAllowedPorts>? allowedPorts;

  @internal
  Map<String, Object?> encode() => {
    if (allowedPorts != null)
      'allowed_ports': [for (final e in allowedPorts!) e.encode()],
  };
}

/// Typed helper for the `subnet.shared_public_ip_address.allowed_ports` block of
/// `azurerm_dev_test_virtual_network` (derived from provider schema).
@immutable
final class DevTestVirtualNetworkAllowedPorts {
  const DevTestVirtualNetworkAllowedPorts({
    this.backendPort,
    this.transportProtocol,
  });

  final TfArg<num>? backendPort;

  final DevTestVirtualNetworkTransportProtocol? transportProtocol;

  @internal
  Map<String, Object?> encode() => {
    'backend_port': ?backendPort?.toTfJson(),
    'transport_protocol': ?transportProtocol?.toTfJson(),
  };
}

/// `transport_protocol` — derived from the provider schema description.
extension type const DevTestVirtualNetworkTransportProtocol._(TfArg<String> _)
    implements TfArg<String> {
  DevTestVirtualNetworkTransportProtocol.variable(String name)
    : this._(TfArg.variable(name));
  DevTestVirtualNetworkTransportProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const DevTestVirtualNetworkTransportProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = DevTestVirtualNetworkTransportProtocol._(
    TfArgLiteral('Tcp'),
  );
  static const udp = DevTestVirtualNetworkTransportProtocol._(
    TfArgLiteral('Udp'),
  );

  static const List<DevTestVirtualNetworkTransportProtocol> values = [tcp, udp];
}

/// Factory wrapper for `azurerm_dev_test_virtual_network`.
final class AzurermDevTestVirtualNetwork extends Resource {
  static const String tfType = 'azurerm_dev_test_virtual_network';

  AzurermDevTestVirtualNetwork(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> labName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    DevTestVirtualNetworkSubnet? subnet,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'lab_name': labName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (subnet != null) 'subnet': TfArg.literal(subnet.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevTestVirtualNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevTestVirtualNetwork>`.
  RefTo<AzurermDevTestVirtualNetwork> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `unique_identifier` attribute.
  TfRef<String> get uniqueIdentifier =>
      TfRef.attribute<String>(this, 'unique_identifier');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `lab_name` attribute.
  TfRef<String> get labName => TfRef.attribute<String>(this, 'lab_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
