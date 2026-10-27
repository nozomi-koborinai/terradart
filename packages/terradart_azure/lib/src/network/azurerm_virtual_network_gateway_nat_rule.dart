// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_network_gateway_nat_rule`.
const Set<String> _azurermVirtualNetworkGatewayNatRuleSensitive = <String>{};

/// Virtual Network Gateway Nat Rule enum for `mode`.
extension type const VirtualNetworkGatewayNatRuleMode._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayNatRuleMode.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayNatRuleMode.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayNatRuleMode.arg(TfArg<String> arg) : this._(arg);

  static const egresssnat = VirtualNetworkGatewayNatRuleMode._(
    TfArgLiteral('EgressSnat'),
  );
  static const ingresssnat = VirtualNetworkGatewayNatRuleMode._(
    TfArgLiteral('IngressSnat'),
  );

  static const List<VirtualNetworkGatewayNatRuleMode> values = [
    egresssnat,
    ingresssnat,
  ];
}

/// Virtual Network Gateway Nat Rule enum for `type`.
extension type const VirtualNetworkGatewayNatRuleType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualNetworkGatewayNatRuleType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualNetworkGatewayNatRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualNetworkGatewayNatRuleType.arg(TfArg<String> arg) : this._(arg);

  static const dynamic = VirtualNetworkGatewayNatRuleType._(
    TfArgLiteral('Dynamic'),
  );
  static const static = VirtualNetworkGatewayNatRuleType._(
    TfArgLiteral('Static'),
  );

  static const List<VirtualNetworkGatewayNatRuleType> values = [
    dynamic,
    static,
  ];
}

/// Typed helper for the `external_mapping` block of
/// `azurerm_virtual_network_gateway_nat_rule` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayNatRuleExternalMapping {
  const VirtualNetworkGatewayNatRuleExternalMapping({
    required this.addressSpace,
    this.portRange,
  });

  final TfArg<String> addressSpace;

  final TfArg<String>? portRange;

  @internal
  Map<String, Object?> encode() => {
    'address_space': addressSpace.toTfJson(),
    'port_range': ?portRange?.toTfJson(),
  };
}

/// Typed helper for the `internal_mapping` block of
/// `azurerm_virtual_network_gateway_nat_rule` (derived from provider schema).
@immutable
final class VirtualNetworkGatewayNatRuleInternalMapping {
  const VirtualNetworkGatewayNatRuleInternalMapping({
    required this.addressSpace,
    this.portRange,
  });

  final TfArg<String> addressSpace;

  final TfArg<String>? portRange;

  @internal
  Map<String, Object?> encode() => {
    'address_space': addressSpace.toTfJson(),
    'port_range': ?portRange?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_network_gateway_nat_rule`.
final class AzurermVirtualNetworkGatewayNatRule extends Resource {
  static const String tfType = 'azurerm_virtual_network_gateway_nat_rule';

  AzurermVirtualNetworkGatewayNatRule(
    super.localName, {
    TfArg<String>? ipConfigurationId,
    VirtualNetworkGatewayNatRuleMode? mode,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    VirtualNetworkGatewayNatRuleType? type,
    required TfArg<String> virtualNetworkGatewayId,
    required List<VirtualNetworkGatewayNatRuleExternalMapping> externalMapping,
    required List<VirtualNetworkGatewayNatRuleInternalMapping> internalMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ip_configuration_id': ?ipConfigurationId,
           'mode': ?mode,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'type': ?type,
           'virtual_network_gateway_id': virtualNetworkGatewayId,
           'external_mapping': TfArg.literal([
             for (final e in externalMapping) e.encode(),
           ]),
           'internal_mapping': TfArg.literal([
             for (final e in internalMapping) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualNetworkGatewayNatRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualNetworkGatewayNatRule>`.
  RefTo<AzurermVirtualNetworkGatewayNatRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_configuration_id` attribute.
  TfRef<String> get ipConfigurationId =>
      TfRef.attribute<String>(this, 'ip_configuration_id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `virtual_network_gateway_id` attribute.
  TfRef<String> get virtualNetworkGatewayId =>
      TfRef.attribute<String>(this, 'virtual_network_gateway_id');
}
