// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lb/azurerm_lb_backend_address_pool.dart';

/// Sensitive field paths for `azurerm_lb_backend_address_pool`.
const Set<String> _azurermLbBackendAddressPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_lb_backend_address_pool`.
final class DataAzurermLbBackendAddressPool extends Data {
  static const String tfType = 'azurerm_lb_backend_address_pool';

  DataAzurermLbBackendAddressPool(
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
  Set<String> get sensitiveFields => _azurermLbBackendAddressPoolSensitive;

  /// A reference to the `azurerm_lb_backend_address_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermLbBackendAddressPool>`.
  RefTo<AzurermLbBackendAddressPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_address` attribute.
  TfRef<List<Map<String, Object?>>> get backendAddress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backend_address');

  /// Reference to `backend_ip_configurations` attribute.
  TfRef<List<Map<String, Object?>>> get backendIpConfigurations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'backend_ip_configurations',
      );

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
}
