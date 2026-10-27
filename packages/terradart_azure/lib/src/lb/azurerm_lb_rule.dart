// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_lb_rule`.
const Set<String> _azurermLbRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_lb_rule`.
final class AzurermLbRule extends Resource {
  static const String tfType = 'azurerm_lb_rule';

  AzurermLbRule(
    super.localName, {
    TfArg<List<String>>? backendAddressPoolIds,
    required TfArg<num> backendPort,
    TfArg<bool>? disableOutboundSnat,
    TfArg<bool>? floatingIpEnabled,
    required TfArg<String> frontendIpConfigurationName,
    required TfArg<num> frontendPort,
    TfArg<num>? idleTimeoutInMinutes,
    TfArg<String>? loadDistribution,
    required TfArg<String> loadbalancerId,
    required TfArg<String> name,
    TfArg<String>? probeId,
    required TfArg<String> protocol,
    TfArg<bool>? tcpResetEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_address_pool_ids': ?backendAddressPoolIds,
           'backend_port': backendPort,
           'disable_outbound_snat': ?disableOutboundSnat,
           'floating_ip_enabled': ?floatingIpEnabled,
           'frontend_ip_configuration_name': frontendIpConfigurationName,
           'frontend_port': frontendPort,
           'idle_timeout_in_minutes': ?idleTimeoutInMinutes,
           'load_distribution': ?loadDistribution,
           'loadbalancer_id': loadbalancerId,
           'name': name,
           'probe_id': ?probeId,
           'protocol': protocol,
           'tcp_reset_enabled': ?tcpResetEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLbRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLbRule>`.
  RefTo<AzurermLbRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `frontend_ip_configuration_id` attribute.
  TfRef<String> get frontendIpConfigurationId =>
      TfRef.attribute<String>(this, 'frontend_ip_configuration_id');

  /// Reference to `backend_address_pool_ids` attribute.
  TfRef<List<String>> get backendAddressPoolIds =>
      TfRef.attribute<List<String>>(this, 'backend_address_pool_ids');

  /// Reference to `backend_port` attribute.
  TfRef<num> get backendPort => TfRef.attribute<num>(this, 'backend_port');

  /// Reference to `disable_outbound_snat` attribute.
  TfRef<bool> get disableOutboundSnat =>
      TfRef.attribute<bool>(this, 'disable_outbound_snat');

  /// Reference to `floating_ip_enabled` attribute.
  TfRef<bool> get floatingIpEnabled =>
      TfRef.attribute<bool>(this, 'floating_ip_enabled');

  /// Reference to `frontend_ip_configuration_name` attribute.
  TfRef<String> get frontendIpConfigurationName =>
      TfRef.attribute<String>(this, 'frontend_ip_configuration_name');

  /// Reference to `frontend_port` attribute.
  TfRef<num> get frontendPort => TfRef.attribute<num>(this, 'frontend_port');

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

  /// Reference to `load_distribution` attribute.
  TfRef<String> get loadDistribution =>
      TfRef.attribute<String>(this, 'load_distribution');

  /// Reference to `loadbalancer_id` attribute.
  TfRef<String> get loadbalancerId =>
      TfRef.attribute<String>(this, 'loadbalancer_id');

  /// Reference to `probe_id` attribute.
  TfRef<String> get probeId => TfRef.attribute<String>(this, 'probe_id');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `tcp_reset_enabled` attribute.
  TfRef<bool> get tcpResetEnabled =>
      TfRef.attribute<bool>(this, 'tcp_reset_enabled');
}
