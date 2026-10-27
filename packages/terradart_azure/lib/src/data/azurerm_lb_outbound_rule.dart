// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lb/azurerm_lb_outbound_rule.dart';

/// Sensitive field paths for `azurerm_lb_outbound_rule`.
const Set<String> _azurermLbOutboundRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_lb_outbound_rule`.
final class DataAzurermLbOutboundRule extends Data {
  static const String tfType = 'azurerm_lb_outbound_rule';

  DataAzurermLbOutboundRule(
    super.localName, {
    required TfArg<String> loadbalancerId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'loadbalancer_id': loadbalancerId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermLbOutboundRuleSensitive;

  /// A reference to the `azurerm_lb_outbound_rule` this data source reads, for
  /// arguments typed `RefTo<AzurermLbOutboundRule>`.
  RefTo<AzurermLbOutboundRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `frontend_ip_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get frontendIpConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'frontend_ip_configuration',
      );

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `tcp_reset_enabled` attribute.
  TfRef<bool> get tcpResetEnabled =>
      TfRef.attribute<bool>(this, 'tcp_reset_enabled');

  /// Reference to `loadbalancer_id` attribute.
  TfRef<String> get loadbalancerId =>
      TfRef.attribute<String>(this, 'loadbalancer_id');
}
