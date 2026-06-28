// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router_nat`.
const Set<String> _googleComputeRouterNatSensitive = <String>{};

/// Compute Router Nat Auto Network enum for `auto_network_tier`.
enum ComputeRouterNatAutoNetworkTier implements TerraformEnum {
  premium('PREMIUM'),
  standard('STANDARD');

  const ComputeRouterNatAutoNetworkTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Router Nat Nat Ip Allocate enum for `nat_ip_allocate_option`.
enum ComputeRouterNatNatIpAllocateOption implements TerraformEnum {
  manualOnly('MANUAL_ONLY'),
  autoOnly('AUTO_ONLY');

  const ComputeRouterNatNatIpAllocateOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Router Nat Source Subnetwork Ip Ranges To enum for `source_subnetwork_ip_ranges_to_nat`.
enum ComputeRouterNatSourceSubnetworkIpRangesToNat implements TerraformEnum {
  allSubnetworksAllIpRanges('ALL_SUBNETWORKS_ALL_IP_RANGES'),
  allSubnetworksAllPrimaryIpRanges('ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES'),
  listOfSubnetworks('LIST_OF_SUBNETWORKS');

  const ComputeRouterNatSourceSubnetworkIpRangesToNat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Router Nat Source Subnetwork Ip Ranges To enum for `source_subnetwork_ip_ranges_to_nat64`.
enum ComputeRouterNatSourceSubnetworkIpRangesToNat64 implements TerraformEnum {
  allIpv6Subnetworks('ALL_IPV6_SUBNETWORKS'),
  listOfIpv6Subnetworks('LIST_OF_IPV6_SUBNETWORKS');

  const ComputeRouterNatSourceSubnetworkIpRangesToNat64(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Router Nat enum for `type`.
enum ComputeRouterNatType implements TerraformEnum {
  public('PUBLIC'),
  private('PRIVATE');

  const ComputeRouterNatType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_router_nat`.
///
/// A NAT service created in a router.
///
/// ~> **Note:** Recreating a `google_compute_address` that is being used by
/// `google_compute_router_nat` will give a `resourceInUseByAnotherResource`
/// error. Use `lifecycle.create_before_destroy` on this address resource to
/// avoid this type of error as shown in the Manual Ips example.
///
/// Cloud NAT on a [GoogleComputeRouter]. Pair with a router on the same VPC
/// and region; [sourceSubnetworkIpRangesToNat] is required.
final class GoogleComputeRouterNat extends Resource {
  static const String tfType = 'google_compute_router_nat';

  GoogleComputeRouterNat({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> router,
    TfArg<String>? region,
    required TfArg<ComputeRouterNatSourceSubnetworkIpRangesToNat>
    sourceSubnetworkIpRangesToNat,
    TfArg<ComputeRouterNatNatIpAllocateOption>? natIpAllocateOption,
    TfArg<ComputeRouterNatType>? type,
    TfArg<List<String>>? natIps,
    TfArg<List<String>>? initialNatIps,
    TfArg<List<String>>? drainNatIps,
    TfArg<num>? minPortsPerVm,
    TfArg<num>? maxPortsPerVm,
    TfArg<bool>? enableDynamicPortAllocation,
    TfArg<bool>? enableEndpointIndependentMapping,
    TfArg<num>? icmpIdleTimeoutSec,
    TfArg<num>? tcpEstablishedIdleTimeoutSec,
    TfArg<num>? tcpTransitoryIdleTimeoutSec,
    TfArg<num>? tcpTimeWaitTimeoutSec,
    TfArg<num>? udpIdleTimeoutSec,
    TfArg<ComputeRouterNatAutoNetworkTier>? autoNetworkTier,
    TfArg<List<String>>? endpointTypes,
    TfArg<ComputeRouterNatSourceSubnetworkIpRangesToNat64>?
    sourceSubnetworkIpRangesToNat64,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router,
           if (region != null) 'region': region,
           'source_subnetwork_ip_ranges_to_nat': sourceSubnetworkIpRangesToNat,
           if (natIpAllocateOption != null)
             'nat_ip_allocate_option': natIpAllocateOption,
           if (type != null) 'type': type,
           if (natIps != null) 'nat_ips': natIps,
           if (initialNatIps != null) 'initial_nat_ips': initialNatIps,
           if (drainNatIps != null) 'drain_nat_ips': drainNatIps,
           if (minPortsPerVm != null) 'min_ports_per_vm': minPortsPerVm,
           if (maxPortsPerVm != null) 'max_ports_per_vm': maxPortsPerVm,
           if (enableDynamicPortAllocation != null)
             'enable_dynamic_port_allocation': enableDynamicPortAllocation,
           if (enableEndpointIndependentMapping != null)
             'enable_endpoint_independent_mapping':
                 enableEndpointIndependentMapping,
           if (icmpIdleTimeoutSec != null)
             'icmp_idle_timeout_sec': icmpIdleTimeoutSec,
           if (tcpEstablishedIdleTimeoutSec != null)
             'tcp_established_idle_timeout_sec': tcpEstablishedIdleTimeoutSec,
           if (tcpTransitoryIdleTimeoutSec != null)
             'tcp_transitory_idle_timeout_sec': tcpTransitoryIdleTimeoutSec,
           if (tcpTimeWaitTimeoutSec != null)
             'tcp_time_wait_timeout_sec': tcpTimeWaitTimeoutSec,
           if (udpIdleTimeoutSec != null)
             'udp_idle_timeout_sec': udpIdleTimeoutSec,
           if (autoNetworkTier != null) 'auto_network_tier': autoNetworkTier,
           if (endpointTypes != null) 'endpoint_types': endpointTypes,
           if (sourceSubnetworkIpRangesToNat64 != null)
             'source_subnetwork_ip_ranges_to_nat64':
                 sourceSubnetworkIpRangesToNat64,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterNatSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
