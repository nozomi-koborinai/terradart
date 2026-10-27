// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_vpn_gateway_nat_rule`.
const Set<String> _azurermVpnGatewayNatRuleSensitive = <String>{};

/// Vpn Gateway Nat Rule Ip Configuration enum for `ip_configuration_id`.
extension type const VpnGatewayNatRuleIpConfigurationId._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayNatRuleIpConfigurationId.variable(String name)
    : this._(TfArg.variable(name));
  VpnGatewayNatRuleIpConfigurationId.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayNatRuleIpConfigurationId.arg(TfArg<String> arg) : this._(arg);

  static const instance0 = VpnGatewayNatRuleIpConfigurationId._(
    TfArgLiteral('Instance0'),
  );
  static const instance1 = VpnGatewayNatRuleIpConfigurationId._(
    TfArgLiteral('Instance1'),
  );

  static const List<VpnGatewayNatRuleIpConfigurationId> values = [
    instance0,
    instance1,
  ];
}

/// Vpn Gateway Nat Rule enum for `mode`.
extension type const VpnGatewayNatRuleMode._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayNatRuleMode.variable(String name) : this._(TfArg.variable(name));
  VpnGatewayNatRuleMode.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayNatRuleMode.arg(TfArg<String> arg) : this._(arg);

  static const egresssnat = VpnGatewayNatRuleMode._(TfArgLiteral('EgressSnat'));
  static const ingresssnat = VpnGatewayNatRuleMode._(
    TfArgLiteral('IngressSnat'),
  );

  static const List<VpnGatewayNatRuleMode> values = [egresssnat, ingresssnat];
}

/// Vpn Gateway Nat Rule enum for `type`.
extension type const VpnGatewayNatRuleType._(TfArg<String> _)
    implements TfArg<String> {
  VpnGatewayNatRuleType.variable(String name) : this._(TfArg.variable(name));
  VpnGatewayNatRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const VpnGatewayNatRuleType.arg(TfArg<String> arg) : this._(arg);

  static const dynamic = VpnGatewayNatRuleType._(TfArgLiteral('Dynamic'));
  static const static = VpnGatewayNatRuleType._(TfArgLiteral('Static'));

  static const List<VpnGatewayNatRuleType> values = [dynamic, static];
}

/// Typed helper for the `external_mapping` block of
/// `azurerm_vpn_gateway_nat_rule` (derived from provider schema).
@immutable
final class VpnGatewayNatRuleExternalMapping {
  const VpnGatewayNatRuleExternalMapping({
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
/// `azurerm_vpn_gateway_nat_rule` (derived from provider schema).
@immutable
final class VpnGatewayNatRuleInternalMapping {
  const VpnGatewayNatRuleInternalMapping({
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

/// Factory wrapper for `azurerm_vpn_gateway_nat_rule`.
final class AzurermVpnGatewayNatRule extends Resource {
  static const String tfType = 'azurerm_vpn_gateway_nat_rule';

  AzurermVpnGatewayNatRule(
    super.localName, {
    VpnGatewayNatRuleIpConfigurationId? ipConfigurationId,
    VpnGatewayNatRuleMode? mode,
    required TfArg<String> name,
    VpnGatewayNatRuleType? type,
    required TfArg<String> vpnGatewayId,
    List<VpnGatewayNatRuleExternalMapping>? externalMapping,
    List<VpnGatewayNatRuleInternalMapping>? internalMapping,
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
           'type': ?type,
           'vpn_gateway_id': vpnGatewayId,
           if (externalMapping != null)
             'external_mapping': TfArg.literal([
               for (final e in externalMapping) e.encode(),
             ]),
           if (internalMapping != null)
             'internal_mapping': TfArg.literal([
               for (final e in internalMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVpnGatewayNatRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVpnGatewayNatRule>`.
  RefTo<AzurermVpnGatewayNatRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_configuration_id` attribute.
  TfRef<String> get ipConfigurationId =>
      TfRef.attribute<String>(this, 'ip_configuration_id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vpn_gateway_id` attribute.
  TfRef<String> get vpnGatewayId =>
      TfRef.attribute<String>(this, 'vpn_gateway_id');
}
