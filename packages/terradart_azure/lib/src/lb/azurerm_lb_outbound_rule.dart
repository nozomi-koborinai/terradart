// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_lb_outbound_rule`.
const Set<String> _azurermLbOutboundRuleSensitive = <String>{};

/// Lb Outbound Rule enum for `protocol`.
extension type const LbOutboundRuleProtocol._(TfArg<String> _)
    implements TfArg<String> {
  LbOutboundRuleProtocol.variable(String name) : this._(TfArg.variable(name));
  LbOutboundRuleProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const LbOutboundRuleProtocol.arg(TfArg<String> arg) : this._(arg);

  static const all = LbOutboundRuleProtocol._(TfArgLiteral('All'));
  static const tcp = LbOutboundRuleProtocol._(TfArgLiteral('Tcp'));
  static const udp = LbOutboundRuleProtocol._(TfArgLiteral('Udp'));

  static const List<LbOutboundRuleProtocol> values = [all, tcp, udp];
}

/// Typed helper for the `frontend_ip_configuration` block of
/// `azurerm_lb_outbound_rule` (derived from provider schema).
@immutable
final class LbOutboundRuleFrontendIpConfiguration {
  const LbOutboundRuleFrontendIpConfiguration({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `azurerm_lb_outbound_rule`.
final class AzurermLbOutboundRule extends Resource {
  static const String tfType = 'azurerm_lb_outbound_rule';

  AzurermLbOutboundRule(
    super.localName, {
    TfArg<num>? allocatedOutboundPorts,
    required TfArg<String> backendAddressPoolId,
    TfArg<num>? idleTimeoutInMinutes,
    required TfArg<String> loadbalancerId,
    required TfArg<String> name,
    required LbOutboundRuleProtocol protocol,
    TfArg<bool>? tcpResetEnabled,
    List<LbOutboundRuleFrontendIpConfiguration>? frontendIpConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocated_outbound_ports': ?allocatedOutboundPorts,
           'backend_address_pool_id': backendAddressPoolId,
           'idle_timeout_in_minutes': ?idleTimeoutInMinutes,
           'loadbalancer_id': loadbalancerId,
           'name': name,
           'protocol': protocol,
           'tcp_reset_enabled': ?tcpResetEnabled,
           if (frontendIpConfiguration != null)
             'frontend_ip_configuration': TfArg.literal([
               for (final e in frontendIpConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLbOutboundRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLbOutboundRule>`.
  RefTo<AzurermLbOutboundRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocated_outbound_ports` attribute.
  TfRef<num> get allocatedOutboundPorts =>
      TfRef.attribute<num>(this, 'allocated_outbound_ports');

  /// Reference to `backend_address_pool_id` attribute.
  TfRef<String> get backendAddressPoolId =>
      TfRef.attribute<String>(this, 'backend_address_pool_id');

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

  /// Reference to `loadbalancer_id` attribute.
  TfRef<String> get loadbalancerId =>
      TfRef.attribute<String>(this, 'loadbalancer_id');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `tcp_reset_enabled` attribute.
  TfRef<bool> get tcpResetEnabled =>
      TfRef.attribute<bool>(this, 'tcp_reset_enabled');
}
