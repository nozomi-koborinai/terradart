// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_lb_nat_rule`.
const Set<String> _azurermLbNatRuleSensitive = <String>{};

/// Lb Nat Rule enum for `protocol`.
extension type const LbNatRuleProtocol._(TfArg<String> _)
    implements TfArg<String> {
  LbNatRuleProtocol.variable(String name) : this._(TfArg.variable(name));
  LbNatRuleProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const LbNatRuleProtocol.arg(TfArg<String> arg) : this._(arg);

  static const all = LbNatRuleProtocol._(TfArgLiteral('All'));
  static const tcp = LbNatRuleProtocol._(TfArgLiteral('Tcp'));
  static const udp = LbNatRuleProtocol._(TfArgLiteral('Udp'));

  static const List<LbNatRuleProtocol> values = [all, tcp, udp];
}

/// Factory wrapper for `azurerm_lb_nat_rule`.
final class AzurermLbNatRule extends Resource {
  static const String tfType = 'azurerm_lb_nat_rule';

  AzurermLbNatRule(
    super.localName, {
    TfArg<String>? backendAddressPoolId,
    required TfArg<num> backendPort,
    TfArg<bool>? floatingIpEnabled,
    required TfArg<String> frontendIpConfigurationName,
    TfArg<num>? frontendPort,
    TfArg<num>? frontendPortEnd,
    TfArg<num>? frontendPortStart,
    TfArg<num>? idleTimeoutInMinutes,
    required TfArg<String> loadbalancerId,
    required TfArg<String> name,
    required LbNatRuleProtocol protocol,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? tcpResetEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_address_pool_id': ?backendAddressPoolId,
           'backend_port': backendPort,
           'floating_ip_enabled': ?floatingIpEnabled,
           'frontend_ip_configuration_name': frontendIpConfigurationName,
           'frontend_port': ?frontendPort,
           'frontend_port_end': ?frontendPortEnd,
           'frontend_port_start': ?frontendPortStart,
           'idle_timeout_in_minutes': ?idleTimeoutInMinutes,
           'loadbalancer_id': loadbalancerId,
           'name': name,
           'protocol': protocol,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tcp_reset_enabled': ?tcpResetEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLbNatRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLbNatRule>`.
  RefTo<AzurermLbNatRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_ip_configuration_id` attribute.
  TfRef<String> get backendIpConfigurationId =>
      TfRef.attribute<String>(this, 'backend_ip_configuration_id');

  /// Reference to `frontend_ip_configuration_id` attribute.
  TfRef<String> get frontendIpConfigurationId =>
      TfRef.attribute<String>(this, 'frontend_ip_configuration_id');

  /// Reference to `backend_address_pool_id` attribute.
  TfRef<String> get backendAddressPoolId =>
      TfRef.attribute<String>(this, 'backend_address_pool_id');

  /// Reference to `backend_port` attribute.
  TfRef<num> get backendPort => TfRef.attribute<num>(this, 'backend_port');

  /// Reference to `floating_ip_enabled` attribute.
  TfRef<bool> get floatingIpEnabled =>
      TfRef.attribute<bool>(this, 'floating_ip_enabled');

  /// Reference to `frontend_ip_configuration_name` attribute.
  TfRef<String> get frontendIpConfigurationName =>
      TfRef.attribute<String>(this, 'frontend_ip_configuration_name');

  /// Reference to `frontend_port` attribute.
  TfRef<num> get frontendPort => TfRef.attribute<num>(this, 'frontend_port');

  /// Reference to `frontend_port_end` attribute.
  TfRef<num> get frontendPortEnd =>
      TfRef.attribute<num>(this, 'frontend_port_end');

  /// Reference to `frontend_port_start` attribute.
  TfRef<num> get frontendPortStart =>
      TfRef.attribute<num>(this, 'frontend_port_start');

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

  /// Reference to `loadbalancer_id` attribute.
  TfRef<String> get loadbalancerId =>
      TfRef.attribute<String>(this, 'loadbalancer_id');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tcp_reset_enabled` attribute.
  TfRef<bool> get tcpResetEnabled =>
      TfRef.attribute<bool>(this, 'tcp_reset_enabled');
}
