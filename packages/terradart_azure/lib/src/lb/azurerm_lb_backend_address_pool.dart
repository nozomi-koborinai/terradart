// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_virtual_network.dart' show AzurermVirtualNetwork;

/// Sensitive field paths for `azurerm_lb_backend_address_pool`.
const Set<String> _azurermLbBackendAddressPoolSensitive = <String>{};

/// Lb Backend Address Pool Synchronous enum for `synchronous_mode`.
extension type const LbBackendAddressPoolSynchronousMode._(TfArg<String> _)
    implements TfArg<String> {
  LbBackendAddressPoolSynchronousMode.variable(String name)
    : this._(TfArg.variable(name));
  LbBackendAddressPoolSynchronousMode.expression(String template)
    : this._(TfArg.expression(template));
  const LbBackendAddressPoolSynchronousMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automatic = LbBackendAddressPoolSynchronousMode._(
    TfArgLiteral('Automatic'),
  );
  static const manual = LbBackendAddressPoolSynchronousMode._(
    TfArgLiteral('Manual'),
  );

  static const List<LbBackendAddressPoolSynchronousMode> values = [
    automatic,
    manual,
  ];
}

/// Typed helper for the `tunnel_interface` block of
/// `azurerm_lb_backend_address_pool` (derived from provider schema).
@immutable
final class LbBackendAddressPoolTunnelInterface {
  const LbBackendAddressPoolTunnelInterface({
    required this.identifier,
    required this.port,
    required this.protocol,
    required this.type,
  });

  final TfArg<num> identifier;

  final TfArg<num> port;

  final LbBackendAddressPoolProtocol protocol;

  final LbBackendAddressPoolType type;

  @internal
  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const LbBackendAddressPoolProtocol._(TfArg<String> _)
    implements TfArg<String> {
  LbBackendAddressPoolProtocol.variable(String name)
    : this._(TfArg.variable(name));
  LbBackendAddressPoolProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const LbBackendAddressPoolProtocol.arg(TfArg<String> arg) : this._(arg);

  static const native = LbBackendAddressPoolProtocol._(TfArgLiteral('Native'));
  static const none = LbBackendAddressPoolProtocol._(TfArgLiteral('None'));
  static const vxlan = LbBackendAddressPoolProtocol._(TfArgLiteral('VXLAN'));

  static const List<LbBackendAddressPoolProtocol> values = [
    native,
    none,
    vxlan,
  ];
}

/// `type` — derived from the provider schema description.
extension type const LbBackendAddressPoolType._(TfArg<String> _)
    implements TfArg<String> {
  LbBackendAddressPoolType.variable(String name) : this._(TfArg.variable(name));
  LbBackendAddressPoolType.expression(String template)
    : this._(TfArg.expression(template));
  const LbBackendAddressPoolType.arg(TfArg<String> arg) : this._(arg);

  static const external = LbBackendAddressPoolType._(TfArgLiteral('External'));
  static const internal = LbBackendAddressPoolType._(TfArgLiteral('Internal'));
  static const none = LbBackendAddressPoolType._(TfArgLiteral('None'));

  static const List<LbBackendAddressPoolType> values = [
    external,
    internal,
    none,
  ];
}

/// Factory wrapper for `azurerm_lb_backend_address_pool`.
final class AzurermLbBackendAddressPool extends Resource {
  static const String tfType = 'azurerm_lb_backend_address_pool';

  AzurermLbBackendAddressPool(
    super.localName, {
    required TfArg<String> loadbalancerId,
    required TfArg<String> name,
    LbBackendAddressPoolSynchronousMode? synchronousMode,
    RefTo<AzurermVirtualNetwork>? virtualNetworkId,
    List<LbBackendAddressPoolTunnelInterface>? tunnelInterface,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'loadbalancer_id': loadbalancerId,
           'name': name,
           'synchronous_mode': ?synchronousMode,
           'virtual_network_id': ?virtualNetworkId?.encodeAs('id'),
           if (tunnelInterface != null)
             'tunnel_interface': TfArg.literal([
               for (final e in tunnelInterface) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLbBackendAddressPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLbBackendAddressPool>`.
  RefTo<AzurermLbBackendAddressPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_ip_configurations` attribute.
  TfRef<List<String>> get backendIpConfigurations =>
      TfRef.attribute<List<String>>(this, 'backend_ip_configurations');

  /// Reference to `inbound_nat_rules` attribute.
  TfRef<List<String>> get inboundNatRules =>
      TfRef.attribute<List<String>>(this, 'inbound_nat_rules');

  /// Reference to `load_balancing_rules` attribute.
  TfRef<List<String>> get loadBalancingRules =>
      TfRef.attribute<List<String>>(this, 'load_balancing_rules');

  /// Reference to `outbound_rules` attribute.
  TfRef<List<String>> get outboundRules =>
      TfRef.attribute<List<String>>(this, 'outbound_rules');

  /// Reference to `loadbalancer_id` attribute.
  TfRef<String> get loadbalancerId =>
      TfRef.attribute<String>(this, 'loadbalancer_id');

  /// Reference to `synchronous_mode` attribute.
  TfRef<String> get synchronousMode =>
      TfRef.attribute<String>(this, 'synchronous_mode');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
