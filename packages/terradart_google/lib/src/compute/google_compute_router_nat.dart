// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_address.dart' show GoogleComputeAddress;
import '../compute/google_compute_router.dart' show GoogleComputeRouter;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_router_nat`.
const Set<String> _googleComputeRouterNatSensitive = <String>{};

/// Compute Router Nat Auto Network enum for `auto_network_tier`.
extension type const ComputeRouterNatAutoNetworkTier._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRouterNatAutoNetworkTier.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRouterNatAutoNetworkTier.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRouterNatAutoNetworkTier.arg(TfArg<String> arg) : this._(arg);

  static const premium = ComputeRouterNatAutoNetworkTier._(
    TfArgLiteral('PREMIUM'),
  );
  static const standard = ComputeRouterNatAutoNetworkTier._(
    TfArgLiteral('STANDARD'),
  );

  static const List<ComputeRouterNatAutoNetworkTier> values = [
    premium,
    standard,
  ];
}

/// Compute Router Nat Ip Allocate enum for `nat_ip_allocate_option`.
extension type const ComputeRouterNatIpAllocateOption._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRouterNatIpAllocateOption.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRouterNatIpAllocateOption.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRouterNatIpAllocateOption.arg(TfArg<String> arg) : this._(arg);

  static const manualOnly = ComputeRouterNatIpAllocateOption._(
    TfArgLiteral('MANUAL_ONLY'),
  );
  static const autoOnly = ComputeRouterNatIpAllocateOption._(
    TfArgLiteral('AUTO_ONLY'),
  );

  static const List<ComputeRouterNatIpAllocateOption> values = [
    manualOnly,
    autoOnly,
  ];
}

/// Compute Router Nat Source Subnetwork Ip Ranges To enum for `source_subnetwork_ip_ranges_to_nat`.
extension type const ComputeRouterNatSourceSubnetworkIpRangesToNat._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRouterNatSourceSubnetworkIpRangesToNat.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRouterNatSourceSubnetworkIpRangesToNat.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRouterNatSourceSubnetworkIpRangesToNat.arg(TfArg<String> arg)
    : this._(arg);

  static const allSubnetworksAllIpRanges =
      ComputeRouterNatSourceSubnetworkIpRangesToNat._(
        TfArgLiteral('ALL_SUBNETWORKS_ALL_IP_RANGES'),
      );
  static const allSubnetworksAllPrimaryIpRanges =
      ComputeRouterNatSourceSubnetworkIpRangesToNat._(
        TfArgLiteral('ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES'),
      );
  static const listOfSubnetworks =
      ComputeRouterNatSourceSubnetworkIpRangesToNat._(
        TfArgLiteral('LIST_OF_SUBNETWORKS'),
      );

  static const List<ComputeRouterNatSourceSubnetworkIpRangesToNat> values = [
    allSubnetworksAllIpRanges,
    allSubnetworksAllPrimaryIpRanges,
    listOfSubnetworks,
  ];
}

/// Compute Router Nat Source Subnetwork Ip Ranges To enum for `source_subnetwork_ip_ranges_to_nat64`.
extension type const ComputeRouterNatSourceSubnetworkIpRangesToNat64._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeRouterNatSourceSubnetworkIpRangesToNat64.variable(String name)
    : this._(TfArg.variable(name));
  ComputeRouterNatSourceSubnetworkIpRangesToNat64.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRouterNatSourceSubnetworkIpRangesToNat64.arg(TfArg<String> arg)
    : this._(arg);

  static const allIpv6Subnetworks =
      ComputeRouterNatSourceSubnetworkIpRangesToNat64._(
        TfArgLiteral('ALL_IPV6_SUBNETWORKS'),
      );
  static const listOfIpv6Subnetworks =
      ComputeRouterNatSourceSubnetworkIpRangesToNat64._(
        TfArgLiteral('LIST_OF_IPV6_SUBNETWORKS'),
      );

  static const List<ComputeRouterNatSourceSubnetworkIpRangesToNat64> values = [
    allIpv6Subnetworks,
    listOfIpv6Subnetworks,
  ];
}

/// Compute Router Nat enum for `type`.
extension type const ComputeRouterNatType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRouterNatType.variable(String name) : this._(TfArg.variable(name));
  ComputeRouterNatType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRouterNatType.arg(TfArg<String> arg) : this._(arg);

  static const public = ComputeRouterNatType._(TfArgLiteral('PUBLIC'));
  static const private = ComputeRouterNatType._(TfArgLiteral('PRIVATE'));

  static const List<ComputeRouterNatType> values = [public, private];
}

/// Typed helper for the `log_config` block of
/// `google_compute_router_nat` (derived from provider schema).
@immutable
final class ComputeRouterNatLogConfig {
  const ComputeRouterNatLogConfig({required this.enable, required this.filter});

  final TfArg<bool> enable;

  final ComputeRouterNatFilter filter;

  @internal
  Map<String, Object?> encode() => {
    'enable': enable.toTfJson(),
    'filter': filter.toTfJson(),
  };
}

/// `filter` — derived from the provider schema description.
extension type const ComputeRouterNatFilter._(TfArg<String> _)
    implements TfArg<String> {
  ComputeRouterNatFilter.variable(String name) : this._(TfArg.variable(name));
  ComputeRouterNatFilter.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeRouterNatFilter.arg(TfArg<String> arg) : this._(arg);

  static const errorsOnly = ComputeRouterNatFilter._(
    TfArgLiteral('ERRORS_ONLY'),
  );
  static const translationsOnly = ComputeRouterNatFilter._(
    TfArgLiteral('TRANSLATIONS_ONLY'),
  );
  static const all = ComputeRouterNatFilter._(TfArgLiteral('ALL'));

  static const List<ComputeRouterNatFilter> values = [
    errorsOnly,
    translationsOnly,
    all,
  ];
}

/// Typed helper for the `nat64_subnetwork` block of
/// `google_compute_router_nat` (derived from provider schema).
@immutable
final class ComputeRouterNatNat64Subnetwork {
  const ComputeRouterNatNat64Subnetwork({required this.name});

  final RefTo<GoogleComputeSubnetwork> name;

  @internal
  Map<String, Object?> encode() => {
    'name': name.encodeAs('self_link').toTfJson(),
  };
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

  final ComputeRouterNatAction? action;

  @internal
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
final class ComputeRouterNatAction {
  const ComputeRouterNatAction({
    this.sourceNatActiveIps,
    this.sourceNatActiveRanges,
    this.sourceNatDrainIps,
    this.sourceNatDrainRanges,
  });

  final TfArg<List<RefTo<GoogleComputeAddress>>>? sourceNatActiveIps;

  final TfArg<List<RefTo<GoogleComputeSubnetwork>>>? sourceNatActiveRanges;

  final TfArg<List<RefTo<GoogleComputeAddress>>>? sourceNatDrainIps;

  final TfArg<List<RefTo<GoogleComputeSubnetwork>>>? sourceNatDrainRanges;

  @internal
  Map<String, Object?> encode() => {
    'source_nat_active_ips': ?sourceNatActiveIps
        ?.encodeAs('self_link')
        .toTfJson(),
    'source_nat_active_ranges': ?sourceNatActiveRanges
        ?.encodeAs('self_link')
        .toTfJson(),
    'source_nat_drain_ips': ?sourceNatDrainIps
        ?.encodeAs('self_link')
        .toTfJson(),
    'source_nat_drain_ranges': ?sourceNatDrainRanges
        ?.encodeAs('self_link')
        .toTfJson(),
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

  final RefTo<GoogleComputeSubnetwork> name;

  final TfArg<List<String>>? secondaryIpRangeNames;

  final TfArg<List<String>> sourceIpRangesToNat;

  @internal
  Map<String, Object?> encode() => {
    'name': name.encodeAs('self_link').toTfJson(),
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

  GoogleComputeRouterNat(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeRouter> router,
    TfArg<String>? region,
    required ComputeRouterNatSourceSubnetworkIpRangesToNat
    sourceSubnetworkIpRangesToNat,
    ComputeRouterNatIpAllocateOption? natIpAllocateOption,
    ComputeRouterNatType? type,
    TfArg<List<RefTo<GoogleComputeAddress>>>? natIps,
    TfArg<List<RefTo<GoogleComputeAddress>>>? initialNatIps,
    TfArg<List<RefTo<GoogleComputeAddress>>>? drainNatIps,
    TfArg<num>? minPortsPerVm,
    TfArg<num>? maxPortsPerVm,
    TfArg<bool>? enableDynamicPortAllocation,
    TfArg<bool>? enableEndpointIndependentMapping,
    TfArg<num>? icmpIdleTimeoutSec,
    TfArg<num>? tcpEstablishedIdleTimeoutSec,
    TfArg<num>? tcpTransitoryIdleTimeoutSec,
    TfArg<num>? tcpTimeWaitTimeoutSec,
    TfArg<num>? udpIdleTimeoutSec,
    ComputeRouterNatAutoNetworkTier? autoNetworkTier,
    TfArg<List<String>>? endpointTypes,
    ComputeRouterNatSourceSubnetworkIpRangesToNat64?
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
           'router': router.encodeAs('name'),
           'region': ?region,
           'source_subnetwork_ip_ranges_to_nat': sourceSubnetworkIpRangesToNat,
           'nat_ip_allocate_option': ?natIpAllocateOption,
           'type': ?type,
           'nat_ips': ?natIps?.encodeAs('self_link'),
           'initial_nat_ips': ?initialNatIps?.encodeAs('self_link'),
           'drain_nat_ips': ?drainNatIps?.encodeAs('self_link'),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `max_ports_per_vm` attribute.
  TfRef<num> get maxPortsPerVm =>
      TfRef.attribute<num>(this, 'max_ports_per_vm');

  /// Reference to `min_ports_per_vm` attribute.
  TfRef<num> get minPortsPerVm =>
      TfRef.attribute<num>(this, 'min_ports_per_vm');

  /// Reference to `nat_ip_allocate_option` attribute.
  TfRef<String> get natIpAllocateOption =>
      TfRef.attribute<String>(this, 'nat_ip_allocate_option');

  /// Reference to `nat_ips` attribute.
  TfRef<List<String>> get natIps =>
      TfRef.attribute<List<String>>(this, 'nat_ips');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get router => TfRef.attribute<String>(this, 'router');

  /// Reference to `source_subnetwork_ip_ranges_to_nat` attribute.
  TfRef<String> get sourceSubnetworkIpRangesToNat =>
      TfRef.attribute<String>(this, 'source_subnetwork_ip_ranges_to_nat');

  /// Reference to `source_subnetwork_ip_ranges_to_nat64` attribute.
  TfRef<String> get sourceSubnetworkIpRangesToNat64 =>
      TfRef.attribute<String>(this, 'source_subnetwork_ip_ranges_to_nat64');

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
