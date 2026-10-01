// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_subnetwork`.
const Set<String> _googleComputeSubnetworkSensitive = <String>{};

/// Purpose of the subnetwork. Defaults to [private] when unspecified.
///
/// `regionalManagedProxy` / `globalManagedProxy` reserve the subnet for
/// Envoy-based load balancers (the [SubnetworkRole] field then selects
/// ACTIVE vs BACKUP). `privateServiceConnect` reserves the subnet for a
/// Private Service Connect published service. `peerMigration` reserves the
/// subnet for migrating resources between peered networks. `privateNat` is
/// used as the source range for Private NAT gateways.
extension type const SubnetworkPurpose._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkPurpose.variable(String name) : this._(TfArg.variable(name));
  SubnetworkPurpose.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkPurpose.arg(TfArg<String> arg) : this._(arg);

  static const private = SubnetworkPurpose._(TfArgLiteral('PRIVATE'));
  static const regionalManagedProxy = SubnetworkPurpose._(
    TfArgLiteral('REGIONAL_MANAGED_PROXY'),
  );
  static const globalManagedProxy = SubnetworkPurpose._(
    TfArgLiteral('GLOBAL_MANAGED_PROXY'),
  );
  static const privateServiceConnect = SubnetworkPurpose._(
    TfArgLiteral('PRIVATE_SERVICE_CONNECT'),
  );
  static const peerMigration = SubnetworkPurpose._(
    TfArgLiteral('PEER_MIGRATION'),
  );
  static const privateNat = SubnetworkPurpose._(TfArgLiteral('PRIVATE_NAT'));

  static const List<SubnetworkPurpose> values = [
    private,
    regionalManagedProxy,
    globalManagedProxy,
    privateServiceConnect,
    peerMigration,
    privateNat,
  ];
}

/// Role of a managed-proxy subnetwork. Only meaningful when `purpose` is
/// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
extension type const SubnetworkRole._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkRole.variable(String name) : this._(TfArg.variable(name));
  SubnetworkRole.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkRole.arg(TfArg<String> arg) : this._(arg);

  static const active = SubnetworkRole._(TfArgLiteral('ACTIVE'));
  static const backup = SubnetworkRole._(TfArgLiteral('BACKUP'));

  static const List<SubnetworkRole> values = [active, backup];
}

/// IP stack type for the subnetwork. Immutable after creation.
extension type const SubnetworkStackType._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkStackType.variable(String name) : this._(TfArg.variable(name));
  SubnetworkStackType.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkStackType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4Only = SubnetworkStackType._(TfArgLiteral('IPV4_ONLY'));
  static const ipv4Ipv6 = SubnetworkStackType._(TfArgLiteral('IPV4_IPV6'));
  static const ipv6Only = SubnetworkStackType._(TfArgLiteral('IPV6_ONLY'));

  static const List<SubnetworkStackType> values = [
    ipv4Only,
    ipv4Ipv6,
    ipv6Only,
  ];
}

/// Access type of the IPv6 address range held by the subnetwork. Immutable
/// after creation. Only meaningful when [SubnetworkStackType] includes IPv6.
extension type const SubnetworkIpv6AccessType._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkIpv6AccessType.variable(String name) : this._(TfArg.variable(name));
  SubnetworkIpv6AccessType.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkIpv6AccessType.arg(TfArg<String> arg) : this._(arg);

  static const internal = SubnetworkIpv6AccessType._(TfArgLiteral('INTERNAL'));
  static const external = SubnetworkIpv6AccessType._(TfArgLiteral('EXTERNAL'));

  static const List<SubnetworkIpv6AccessType> values = [internal, external];
}

/// VPC flow log aggregation interval. The default on GCP is
/// [interval5Sec] (denser sampling, higher cost).
extension type const SubnetworkLogConfigAggregationInterval._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkLogConfigAggregationInterval.variable(String name)
    : this._(TfArg.variable(name));
  SubnetworkLogConfigAggregationInterval.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkLogConfigAggregationInterval.arg(TfArg<String> arg)
    : this._(arg);

  static const interval5Sec = SubnetworkLogConfigAggregationInterval._(
    TfArgLiteral('INTERVAL_5_SEC'),
  );
  static const interval30Sec = SubnetworkLogConfigAggregationInterval._(
    TfArgLiteral('INTERVAL_30_SEC'),
  );
  static const interval1Min = SubnetworkLogConfigAggregationInterval._(
    TfArgLiteral('INTERVAL_1_MIN'),
  );
  static const interval5Min = SubnetworkLogConfigAggregationInterval._(
    TfArgLiteral('INTERVAL_5_MIN'),
  );
  static const interval10Min = SubnetworkLogConfigAggregationInterval._(
    TfArgLiteral('INTERVAL_10_MIN'),
  );
  static const interval15Min = SubnetworkLogConfigAggregationInterval._(
    TfArgLiteral('INTERVAL_15_MIN'),
  );

  static const List<SubnetworkLogConfigAggregationInterval> values = [
    interval5Sec,
    interval30Sec,
    interval1Min,
    interval5Min,
    interval10Min,
    interval15Min,
  ];
}

/// VPC flow log metadata-inclusion mode. Pair `customMetadata` with the
/// [ComputeSubnetworkLogConfig.metadataFields] selector.
extension type const SubnetworkLogConfigMetadata._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkLogConfigMetadata.variable(String name)
    : this._(TfArg.variable(name));
  SubnetworkLogConfigMetadata.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkLogConfigMetadata.arg(TfArg<String> arg) : this._(arg);

  static const includeAllMetadata = SubnetworkLogConfigMetadata._(
    TfArgLiteral('INCLUDE_ALL_METADATA'),
  );
  static const excludeAllMetadata = SubnetworkLogConfigMetadata._(
    TfArgLiteral('EXCLUDE_ALL_METADATA'),
  );
  static const customMetadata = SubnetworkLogConfigMetadata._(
    TfArgLiteral('CUSTOM_METADATA'),
  );

  static const List<SubnetworkLogConfigMetadata> values = [
    includeAllMetadata,
    excludeAllMetadata,
    customMetadata,
  ];
}

/// ARP resolution mode for the subnetwork. Controls which ranges respond
/// to ARP requests. Used only by reserved-internal-range subnetworks.
extension type const SubnetworkResolveSubnetMask._(TfArg<String> _)
    implements TfArg<String> {
  SubnetworkResolveSubnetMask.variable(String name)
    : this._(TfArg.variable(name));
  SubnetworkResolveSubnetMask.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetworkResolveSubnetMask.arg(TfArg<String> arg) : this._(arg);

  static const arpAllRanges = SubnetworkResolveSubnetMask._(
    TfArgLiteral('ARP_ALL_RANGES'),
  );
  static const arpPrimaryRange = SubnetworkResolveSubnetMask._(
    TfArgLiteral('ARP_PRIMARY_RANGE'),
  );
  static const arpBroadcastPrimaryRange = SubnetworkResolveSubnetMask._(
    TfArgLiteral('ARP_BROADCAST_PRIMARY_RANGE'),
  );
  static const arpBroadcastPrimaryRangeWithLearning =
      SubnetworkResolveSubnetMask._(
        TfArgLiteral('ARP_BROADCAST_PRIMARY_RANGE_WITH_LEARNING'),
      );

  static const List<SubnetworkResolveSubnetMask> values = [
    arpAllRanges,
    arpPrimaryRange,
    arpBroadcastPrimaryRange,
    arpBroadcastPrimaryRangeWithLearning,
  ];
}

// ===========================================================================
// Nested-block helper classes
// ===========================================================================

/// One `secondary_ip_range` entry. Defines an alias IP range usable by
/// instances in this subnetwork (typically consumed by GKE pods/services).
@immutable
class ComputeSubnetworkSecondaryIpRange {
  const ComputeSubnetworkSecondaryIpRange({
    required this.rangeName,
    this.ipCidrRange,
    this.reservedInternalRange,
  });

  /// Name of the secondary range (referenced from downstream resources like
  /// GKE node pools).
  final TfArg<String> rangeName;

  /// CIDR of the secondary range (e.g. `10.1.0.0/16`). Required unless
  /// [reservedInternalRange] is set.
  final TfArg<String>? ipCidrRange;

  /// Optional reserved internal range path. Mutually exclusive with
  /// [ipCidrRange] in most configurations.
  final TfArg<String>? reservedInternalRange;

  Map<String, Object?> toArgMap() => {
    'range_name': rangeName.toTfJson(),
    if (ipCidrRange != null) 'ip_cidr_range': ipCidrRange!.toTfJson(),
    if (reservedInternalRange != null)
      'reserved_internal_range': reservedInternalRange!.toTfJson(),
  };
}

/// `log_config` block. Enables VPC flow logs for the subnetwork. Flow
/// logging is not supported when the subnetwork `purpose` is
/// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
@immutable
class ComputeSubnetworkLogConfig {
  const ComputeSubnetworkLogConfig({
    this.aggregationInterval,
    this.flowSampling,
    this.metadata,
    this.metadataFields,
    this.filterExpr,
  });

  /// Toggles between dense and sparse aggregation. Defaults to
  /// `INTERVAL_5_SEC` on GCP.
  final SubnetworkLogConfigAggregationInterval? aggregationInterval;

  /// Fraction of packets to sample, between 0.0 and 1.0.
  final TfArg<num>? flowSampling;

  /// Metadata-inclusion mode. Use `customMetadata` to scope via
  /// [metadataFields].
  final SubnetworkLogConfigMetadata? metadata;

  /// Metadata field names included when [metadata] is `customMetadata`.
  final TfArg<List<String>>? metadataFields;

  /// CEL expression filtering which logs to export.
  final TfArg<String>? filterExpr;

  Map<String, Object?> toArgMap() => {
    if (aggregationInterval != null)
      'aggregation_interval': aggregationInterval!.toTfJson(),
    if (flowSampling != null) 'flow_sampling': flowSampling!.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
    if (metadataFields != null) 'metadata_fields': metadataFields!.toTfJson(),
    if (filterExpr != null) 'filter_expr': filterExpr!.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_subnetwork` (derived from provider schema).
@immutable
final class ComputeSubnetworkParams {
  const ComputeSubnetworkParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_subnetwork`.
///
/// A VPC network is a virtual version of the traditional physical networks that
/// exist within and between physical data centers. A VPC network provides
/// connectivity for your Compute Engine virtual machine (VM) instances,
/// Container Engine containers, App Engine Flex services, and other
/// network-related resources.
///
/// Each GCP project contains one or more VPC networks. Each VPC network is a
/// global entity spanning all GCP regions. This global VPC network allows VM
/// instances and other resources to communicate with each other via internal,
/// private IP addresses.
///
/// Each VPC network is subdivided into subnets, and each subnet is contained
/// within a single region. You can have more than one subnet in a region for a
/// given VPC network. Each subnet has a contiguous private RFC1918 IP space.
/// You create instances, containers, and the like in these subnets. When you
/// create an instance, you must create it in a subnet, and the instance draws
/// its internal IP address from that subnet.
///
/// Virtual machine (VM) instances in a VPC network can communicate with
/// instances in all other subnets of the same VPC network, regardless of
/// region, using their RFC1918 private IP addresses. You can isolate portions
/// of the network, even entire subnets, using firewall rules.
///
/// This resource models a regional subnetwork within a VPC.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: GCP subnetwork name. Pass `TfArg.literal('main-subnet')` or
///   `otherSubnet.name`.
/// - `network`: the parent VPC. Pass `vpc.ref` so the value resolves to
///   `${google_compute_network.<localName>.id}`.
///
/// Secondary ranges ([secondaryIpRange]) define alias IP ranges consumed by
/// GKE pods/services. Flow logs are configured via [logConfig]; not supported
/// when `purpose` is `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
/// Enable `privateIpGoogleAccess` to allow VMs without external IPs to reach
/// Google APIs.
///
/// Example:
/// ```dart
/// final vpc = GoogleComputeNetwork(
///   'main',
///   name: TfArg.literal('main-vpc'),
///   autoCreateSubnetworks: TfArg.literal(false),
/// );
/// final subnet = GoogleComputeSubnetwork(
///   'main_subnet',
///   name: TfArg.literal('main-subnet'),
///   region: TfArg.literal('us-central1'),
///   network: vpc.ref,
///   ipCidrRange: TfArg.literal('10.0.0.0/16'),
///   privateIpGoogleAccess: TfArg.literal(true),
/// );
/// ```
final class GoogleComputeSubnetwork extends Resource {
  static const String tfType = 'google_compute_subnetwork';

  GoogleComputeSubnetwork(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? ipCidrRange,
    SubnetworkPurpose? purpose,
    SubnetworkRole? role,
    List<ComputeSubnetworkSecondaryIpRange>? secondaryIpRange,
    TfArg<bool>? privateIpGoogleAccess,
    TfArg<String>? privateIpv6GoogleAccess,
    ComputeSubnetworkLogConfig? logConfig,
    SubnetworkStackType? stackType,
    SubnetworkIpv6AccessType? ipv6AccessType,
    TfArg<String>? externalIpv6Prefix,
    TfArg<String>? internalIpv6Prefix,
    TfArg<String>? ipCollection,
    TfArg<String>? reservedInternalRange,
    SubnetworkResolveSubnetMask? resolveSubnetMask,
    TfArg<bool>? sendSecondaryIpRangeIfEmpty,
    TfArg<bool>? allowSubnetCidrRoutesOverlap,
    TfArg<String>? description,
    ComputeSubnetworkParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'network': network.encodeAs('id'),
           'ip_cidr_range': ?ipCidrRange,
           'purpose': ?purpose,
           'role': ?role,
           if (secondaryIpRange != null)
             'secondary_ip_range': TfArg.literal(
               secondaryIpRange.map((s) => s.toArgMap()).toList(),
             ),
           'private_ip_google_access': ?privateIpGoogleAccess,
           'private_ipv6_google_access': ?privateIpv6GoogleAccess,
           if (logConfig != null)
             'log_config': TfArg.literal([logConfig.toArgMap()]),
           'stack_type': ?stackType,
           'ipv6_access_type': ?ipv6AccessType,
           'external_ipv6_prefix': ?externalIpv6Prefix,
           'internal_ipv6_prefix': ?internalIpv6Prefix,
           'ip_collection': ?ipCollection,
           'reserved_internal_range': ?reservedInternalRange,
           'resolve_subnet_mask': ?resolveSubnetMask,
           'send_secondary_ip_range_if_empty': ?sendSecondaryIpRangeIfEmpty,
           'allow_subnet_cidr_routes_overlap': ?allowSubnetCidrRoutesOverlap,
           'description': ?description,
           if (params != null) 'params': TfArg.literal(params.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSubnetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSubnetwork>`.
  RefTo<GoogleComputeSubnetwork> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `gateway_address` attribute.
  TfRef<String> get gatewayAddress =>
      TfRef.attribute<String>(this, 'gateway_address');

  /// Reference to `ipv6_cidr_range` attribute.
  TfRef<String> get ipv6CidrRange =>
      TfRef.attribute<String>(this, 'ipv6_cidr_range');

  /// Reference to `ipv6_gce_endpoint` attribute.
  TfRef<String> get ipv6GceEndpoint =>
      TfRef.attribute<String>(this, 'ipv6_gce_endpoint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subnetwork_id` attribute.
  TfRef<num> get subnetworkId => TfRef.attribute<num>(this, 'subnetwork_id');

  /// Reference to `allow_subnet_cidr_routes_overlap` attribute.
  TfRef<bool> get allowSubnetCidrRoutesOverlap =>
      TfRef.attribute<bool>(this, 'allow_subnet_cidr_routes_overlap');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `external_ipv6_prefix` attribute.
  TfRef<String> get externalIpv6Prefix =>
      TfRef.attribute<String>(this, 'external_ipv6_prefix');

  /// Reference to `internal_ipv6_prefix` attribute.
  TfRef<String> get internalIpv6Prefix =>
      TfRef.attribute<String>(this, 'internal_ipv6_prefix');

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `ip_collection` attribute.
  TfRef<String> get ipCollection =>
      TfRef.attribute<String>(this, 'ip_collection');

  /// Reference to `ipv6_access_type` attribute.
  TfRef<String> get ipv6AccessType =>
      TfRef.attribute<String>(this, 'ipv6_access_type');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `private_ip_google_access` attribute.
  TfRef<bool> get privateIpGoogleAccess =>
      TfRef.attribute<bool>(this, 'private_ip_google_access');

  /// Reference to `private_ipv6_google_access` attribute.
  TfRef<String> get privateIpv6GoogleAccess =>
      TfRef.attribute<String>(this, 'private_ipv6_google_access');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `reserved_internal_range` attribute.
  TfRef<String> get reservedInternalRange =>
      TfRef.attribute<String>(this, 'reserved_internal_range');

  /// Reference to `resolve_subnet_mask` attribute.
  TfRef<String> get resolveSubnetMask =>
      TfRef.attribute<String>(this, 'resolve_subnet_mask');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `send_secondary_ip_range_if_empty` attribute.
  TfRef<bool> get sendSecondaryIpRangeIfEmpty =>
      TfRef.attribute<bool>(this, 'send_secondary_ip_range_if_empty');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');
}
