// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router_nat`.
const Set<String> _googleComputeRouterNatSensitive = <String>{};

/// Factory wrapper for `google_compute_router_nat`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRouterNat extends Data {
  static const String tfType = 'google_compute_router_nat';

  DataGoogleComputeRouterNat({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> router,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'router': router,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterNatSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_network_tier` attribute.
  TfRef<String> get autoNetworkTier =>
      TfRef.attribute<String>(this, 'auto_network_tier');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `drain_nat_ips` attribute.
  TfRef<List<String>> get drainNatIps =>
      TfRef.attribute<List<String>>(this, 'drain_nat_ips');

  /// Reference to `enable_dynamic_port_allocation` attribute.
  TfRef<bool> get enableDynamicPortAllocation =>
      TfRef.attribute<bool>(this, 'enable_dynamic_port_allocation');

  /// Reference to `enable_endpoint_independent_mapping` attribute.
  TfRef<bool> get enableEndpointIndependentMapping =>
      TfRef.attribute<bool>(this, 'enable_endpoint_independent_mapping');

  /// Reference to `endpoint_types` attribute.
  TfRef<List<String>> get endpointTypes =>
      TfRef.attribute<List<String>>(this, 'endpoint_types');

  /// Reference to `icmp_idle_timeout_sec` attribute.
  TfRef<num> get icmpIdleTimeoutSec =>
      TfRef.attribute<num>(this, 'icmp_idle_timeout_sec');

  /// Reference to `initial_nat_ips` attribute.
  TfRef<List<String>> get initialNatIps =>
      TfRef.attribute<List<String>>(this, 'initial_nat_ips');

  /// Reference to `log_config` attribute.
  TfRef<List<Map<String, Object?>>> get logConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'log_config');

  /// Reference to `max_ports_per_vm` attribute.
  TfRef<num> get maxPortsPerVm =>
      TfRef.attribute<num>(this, 'max_ports_per_vm');

  /// Reference to `min_ports_per_vm` attribute.
  TfRef<num> get minPortsPerVm =>
      TfRef.attribute<num>(this, 'min_ports_per_vm');

  /// Reference to `nat64_subnetwork` attribute.
  TfRef<List<Map<String, Object?>>> get nat64Subnetwork =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nat64_subnetwork');

  /// Reference to `nat_ip_allocate_option` attribute.
  TfRef<String> get natIpAllocateOption =>
      TfRef.attribute<String>(this, 'nat_ip_allocate_option');

  /// Reference to `nat_ips` attribute.
  TfRef<List<String>> get natIps =>
      TfRef.attribute<List<String>>(this, 'nat_ips');

  /// Reference to `rules` attribute.
  TfRef<List<Map<String, Object?>>> get rules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules');

  /// Reference to `source_subnetwork_ip_ranges_to_nat` attribute.
  TfRef<String> get sourceSubnetworkIpRangesToNat =>
      TfRef.attribute<String>(this, 'source_subnetwork_ip_ranges_to_nat');

  /// Reference to `source_subnetwork_ip_ranges_to_nat64` attribute.
  TfRef<String> get sourceSubnetworkIpRangesToNat64 =>
      TfRef.attribute<String>(this, 'source_subnetwork_ip_ranges_to_nat64');

  /// Reference to `subnetwork` attribute.
  TfRef<List<Map<String, Object?>>> get subnetwork =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subnetwork');

  /// Reference to `tcp_established_idle_timeout_sec` attribute.
  TfRef<num> get tcpEstablishedIdleTimeoutSec =>
      TfRef.attribute<num>(this, 'tcp_established_idle_timeout_sec');

  /// Reference to `tcp_time_wait_timeout_sec` attribute.
  TfRef<num> get tcpTimeWaitTimeoutSec =>
      TfRef.attribute<num>(this, 'tcp_time_wait_timeout_sec');

  /// Reference to `tcp_transitory_idle_timeout_sec` attribute.
  TfRef<num> get tcpTransitoryIdleTimeoutSec =>
      TfRef.attribute<num>(this, 'tcp_transitory_idle_timeout_sec');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `udp_idle_timeout_sec` attribute.
  TfRef<num> get udpIdleTimeoutSec =>
      TfRef.attribute<num>(this, 'udp_idle_timeout_sec');
}
