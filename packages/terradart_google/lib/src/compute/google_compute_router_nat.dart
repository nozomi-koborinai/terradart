// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
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

/// Typed helper for the `log_config` block of
/// `google_compute_router_nat` (derived from provider schema).
@immutable
final class ComputeRouterNatLogConfig {
  const ComputeRouterNatLogConfig({required this.enable, required this.filter});

  final TfArg<bool> enable;

  final TfArg<ComputeRouterNatLogConfigFilter> filter;

  Map<String, Object?> encode() => {
    'enable': enable.toTfJson(),
    'filter': filter.toTfJson(),
  };
}

/// `filter` — derived from the provider schema description.
enum ComputeRouterNatLogConfigFilter implements TerraformEnum {
  errorsOnly('ERRORS_ONLY'),
  translationsOnly('TRANSLATIONS_ONLY'),
  all('ALL');

  const ComputeRouterNatLogConfigFilter(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `nat64_subnetwork` block of
/// `google_compute_router_nat` (derived from provider schema).
@immutable
final class ComputeRouterNatNat64Subnetwork {
  const ComputeRouterNatNat64Subnetwork({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `rules` block of
/// `google_compute_router_nat` (derived from provider schema).
@immutable
final class ComputeRouterNatRules {
  const ComputeRouterNatRules({
    this.description,
    required this.match,
    required this.ruleNumber,
    this.action,
  });

  final TfArg<String>? description;

  final TfArg<String> match;

  final TfArg<num> ruleNumber;

  final ComputeRouterNatRulesAction? action;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'match': match.toTfJson(),
    'rule_number': ruleNumber.toTfJson(),
    'action': ?action?.encode(),
  };
}

/// Typed helper for the `rules.action` block of
/// `google_compute_router_nat` (derived from provider schema).
@immutable
final class ComputeRouterNatRulesAction {
  const ComputeRouterNatRulesAction({
    this.sourceNatActiveIps,
    this.sourceNatActiveRanges,
    this.sourceNatDrainIps,
    this.sourceNatDrainRanges,
  });

  final TfArg<List<String>>? sourceNatActiveIps;

  final TfArg<List<String>>? sourceNatActiveRanges;

  final TfArg<List<String>>? sourceNatDrainIps;

  final TfArg<List<String>>? sourceNatDrainRanges;

  Map<String, Object?> encode() => {
    'source_nat_active_ips': ?sourceNatActiveIps?.toTfJson(),
    'source_nat_active_ranges': ?sourceNatActiveRanges?.toTfJson(),
    'source_nat_drain_ips': ?sourceNatDrainIps?.toTfJson(),
    'source_nat_drain_ranges': ?sourceNatDrainRanges?.toTfJson(),
  };
}

/// Typed helper for the `subnetwork` block of
/// `google_compute_router_nat` (derived from provider schema).
@immutable
final class ComputeRouterNatSubnetwork {
  const ComputeRouterNatSubnetwork({
    required this.name,
    this.secondaryIpRangeNames,
    required this.sourceIpRangesToNat,
  });

  final TfArg<String> name;

  final TfArg<List<String>>? secondaryIpRangeNames;

  final TfArg<List<String>> sourceIpRangesToNat;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secondary_ip_range_names': ?secondaryIpRangeNames?.toTfJson(),
    'source_ip_ranges_to_nat': sourceIpRangesToNat.toTfJson(),
  };
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
    ComputeRouterNatLogConfig? logConfig,
    List<ComputeRouterNatNat64Subnetwork>? nat64Subnetwork,
    List<ComputeRouterNatRules>? rules,
    List<ComputeRouterNatSubnetwork>? subnetwork,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router,
           'region': ?region,
           'source_subnetwork_ip_ranges_to_nat': sourceSubnetworkIpRangesToNat,
           'nat_ip_allocate_option': ?natIpAllocateOption,
           'type': ?type,
           'nat_ips': ?natIps,
           'initial_nat_ips': ?initialNatIps,
           'drain_nat_ips': ?drainNatIps,
           'min_ports_per_vm': ?minPortsPerVm,
           'max_ports_per_vm': ?maxPortsPerVm,
           'enable_dynamic_port_allocation': ?enableDynamicPortAllocation,
           'enable_endpoint_independent_mapping':
               ?enableEndpointIndependentMapping,
           'icmp_idle_timeout_sec': ?icmpIdleTimeoutSec,
           'tcp_established_idle_timeout_sec': ?tcpEstablishedIdleTimeoutSec,
           'tcp_transitory_idle_timeout_sec': ?tcpTransitoryIdleTimeoutSec,
           'tcp_time_wait_timeout_sec': ?tcpTimeWaitTimeoutSec,
           'udp_idle_timeout_sec': ?udpIdleTimeoutSec,
           'auto_network_tier': ?autoNetworkTier,
           'endpoint_types': ?endpointTypes,
           'source_subnetwork_ip_ranges_to_nat64':
               ?sourceSubnetworkIpRangesToNat64,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           if (nat64Subnetwork != null)
             'nat64_subnetwork': TfArg.literal([
               for (final e in nat64Subnetwork) e.encode(),
             ]),
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
           if (subnetwork != null)
             'subnetwork': TfArg.literal([
               for (final e in subnetwork) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterNatSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRouterNat>`.
  RefTo<GoogleComputeRouterNat> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
