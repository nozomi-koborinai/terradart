// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_compute_subnetwork.schema.dart'
    show $GoogleComputeSubnetwork, googleComputeSubnetworkSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleComputeSubnetworkSchemaInstance
    implements $GoogleComputeSubnetwork {
  const _GoogleComputeSubnetworkSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// Phase 4.5.1: dartTypeOverrides re-enabled for enum-typed fields. Callers
// pass `TfArg.literal(SubnetworkPurpose.private)` (enum value directly) and
// the TfArg.toTfJson layer detects the `terraformValue` getter convention.

/// Purpose of the subnetwork. Defaults to [private] when unspecified.
///
/// `regionalManagedProxy` / `globalManagedProxy` reserve the subnet for
/// Envoy-based load balancers (the [SubnetworkRole] field then selects
/// ACTIVE vs BACKUP). `privateServiceConnect` reserves the subnet for a
/// Private Service Connect published service. `peerMigration` reserves the
/// subnet for migrating resources between peered networks. `privateNat` is
/// used as the source range for Private NAT gateways.
enum SubnetworkPurpose {
  private('PRIVATE'),
  regionalManagedProxy('REGIONAL_MANAGED_PROXY'),
  globalManagedProxy('GLOBAL_MANAGED_PROXY'),
  privateServiceConnect('PRIVATE_SERVICE_CONNECT'),
  peerMigration('PEER_MIGRATION'),
  privateNat('PRIVATE_NAT');

  const SubnetworkPurpose(this.terraformValue);
  final String terraformValue;
}

/// Role of a managed-proxy subnetwork. Only meaningful when `purpose` is
/// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
enum SubnetworkRole {
  active('ACTIVE'),
  backup('BACKUP');

  const SubnetworkRole(this.terraformValue);
  final String terraformValue;
}

/// IP stack type for the subnetwork. Immutable after creation.
enum SubnetworkStackType {
  ipv4Only('IPV4_ONLY'),
  ipv4Ipv6('IPV4_IPV6'),
  ipv6Only('IPV6_ONLY');

  const SubnetworkStackType(this.terraformValue);
  final String terraformValue;
}

/// Access type of the IPv6 address range held by the subnetwork. Immutable
/// after creation. Only meaningful when [SubnetworkStackType] includes IPv6.
enum SubnetworkIpv6AccessType {
  internal('INTERNAL'),
  external('EXTERNAL');

  const SubnetworkIpv6AccessType(this.terraformValue);
  final String terraformValue;
}

/// VPC flow log aggregation interval. The default on GCP is
/// [interval5Sec] (denser sampling, higher cost).
enum SubnetworkLogConfigAggregationInterval {
  interval5Sec('INTERVAL_5_SEC'),
  interval30Sec('INTERVAL_30_SEC'),
  interval1Min('INTERVAL_1_MIN'),
  interval5Min('INTERVAL_5_MIN'),
  interval10Min('INTERVAL_10_MIN'),
  interval15Min('INTERVAL_15_MIN');

  const SubnetworkLogConfigAggregationInterval(this.terraformValue);
  final String terraformValue;
}

/// VPC flow log metadata-inclusion mode. Pair `customMetadata` with the
/// [SubnetworkLogConfig.metadataFields] selector.
enum SubnetworkLogConfigMetadata {
  includeAllMetadata('INCLUDE_ALL_METADATA'),
  excludeAllMetadata('EXCLUDE_ALL_METADATA'),
  customMetadata('CUSTOM_METADATA');

  const SubnetworkLogConfigMetadata(this.terraformValue);
  final String terraformValue;
}

/// ARP resolution mode for the subnetwork. Controls which ranges respond
/// to ARP requests. Used only by reserved-internal-range subnetworks.
enum SubnetworkResolveSubnetMask {
  arpAllRanges('ARP_ALL_RANGES'),
  arpPrimaryRange('ARP_PRIMARY_RANGE'),
  arpBroadcastPrimaryRange('ARP_BROADCAST_PRIMARY_RANGE'),
  arpBroadcastPrimaryRangeWithLearning(
    'ARP_BROADCAST_PRIMARY_RANGE_WITH_LEARNING',
  );

  const SubnetworkResolveSubnetMask(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Nested-block helper classes
// ===========================================================================

/// One `secondary_ip_range` entry. Defines an alias IP range usable by
/// instances in this subnetwork (typically consumed by GKE pods/services).
@immutable
class SecondaryIpRange {
  const SecondaryIpRange({
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
class SubnetworkLogConfig {
  const SubnetworkLogConfig({
    this.aggregationInterval,
    this.flowSampling,
    this.metadata,
    this.metadataFields,
    this.filterExpr,
  });

  /// Toggles between dense and sparse aggregation. Defaults to
  /// `INTERVAL_5_SEC` on GCP.
  final TfArg<SubnetworkLogConfigAggregationInterval>? aggregationInterval;

  /// Fraction of packets to sample, between 0.0 and 1.0.
  final TfArg<num>? flowSampling;

  /// Metadata-inclusion mode. Use `customMetadata` to scope via
  /// [metadataFields].
  final TfArg<SubnetworkLogConfigMetadata>? metadata;

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

/// Factory wrapper for `google_compute_subnetwork` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_subnetwork.`).
/// - `name`: GCP subnetwork name. Pass `TfArg.literal('main-subnet')` or
///   `TfArg.ref(otherSubnet.nameRef)`.
/// - `network`: full self-link of the parent VPC. Pass
///   `TfArg.ref(vpc.selfLink)` so the value resolves to
///   `${google_compute_network.<localName>.self_link}`.
///
/// Example:
/// ```dart
/// final vpc = GoogleComputeNetwork(
///   localName: 'main',
///   name: TfArg.literal('main-vpc'),
///   autoCreateSubnetworks: TfArg.literal(false),
/// );
/// final subnet = GoogleComputeSubnetwork(
///   localName: 'main_subnet',
///   name: TfArg.literal('main-subnet'),
///   region: TfArg.literal('us-central1'),
///   network: TfArg.ref(vpc.selfLink),
///   ipCidrRange: TfArg.literal('10.0.0.0/16'),
///   privateIpGoogleAccess: TfArg.literal(true),
/// );
/// ```
///
/// Manages a regional subnetwork within a VPC. Composition pattern:
/// extends `Resource<$GoogleComputeSubnetwork>` for runtime behavior.
final class GoogleComputeSubnetwork extends Resource<$GoogleComputeSubnetwork> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_subnetwork';

  GoogleComputeSubnetwork({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> network,
    TfArg<String>? ipCidrRange,
    TfArg<SubnetworkPurpose>? purpose,
    TfArg<SubnetworkRole>? role,
    List<SecondaryIpRange>? secondaryIpRange,
    TfArg<bool>? privateIpGoogleAccess,
    TfArg<String>? privateIpv6GoogleAccess,
    SubnetworkLogConfig? logConfig,
    TfArg<SubnetworkStackType>? stackType,
    TfArg<SubnetworkIpv6AccessType>? ipv6AccessType,
    TfArg<String>? externalIpv6Prefix,
    TfArg<String>? internalIpv6Prefix,
    TfArg<String>? ipCollection,
    TfArg<String>? reservedInternalRange,
    TfArg<SubnetworkResolveSubnetMask>? resolveSubnetMask,
    TfArg<bool>? sendSecondaryIpRangeIfEmpty,
    TfArg<bool>? allowSubnetCidrRoutesOverlap,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleComputeSubnetworkSchemaInstance(),
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'network': network,
           if (ipCidrRange != null) 'ip_cidr_range': ipCidrRange,
           if (purpose != null) 'purpose': purpose,
           if (role != null) 'role': role,
           if (secondaryIpRange != null)
             'secondary_ip_range': TfArg.literal(
               secondaryIpRange.map((s) => s.toArgMap()).toList(),
             ),
           if (privateIpGoogleAccess != null)
             'private_ip_google_access': privateIpGoogleAccess,
           if (privateIpv6GoogleAccess != null)
             'private_ipv6_google_access': privateIpv6GoogleAccess,
           if (logConfig != null)
             'log_config': TfArg.literal([logConfig.toArgMap()]),
           if (stackType != null) 'stack_type': stackType,
           if (ipv6AccessType != null) 'ipv6_access_type': ipv6AccessType,
           if (externalIpv6Prefix != null)
             'external_ipv6_prefix': externalIpv6Prefix,
           if (internalIpv6Prefix != null)
             'internal_ipv6_prefix': internalIpv6Prefix,
           if (ipCollection != null) 'ip_collection': ipCollection,
           if (reservedInternalRange != null)
             'reserved_internal_range': reservedInternalRange,
           if (resolveSubnetMask != null)
             'resolve_subnet_mask': resolveSubnetMask,
           if (sendSecondaryIpRangeIfEmpty != null)
             'send_secondary_ip_range_if_empty': sendSecondaryIpRangeIfEmpty,
           if (allowSubnetCidrRoutesOverlap != null)
             'allow_subnet_cidr_routes_overlap': allowSubnetCidrRoutesOverlap,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleComputeSubnetworkSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `subnet.nameRef` → `${google_compute_subnetwork.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/subnetworks/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as the `subnetwork`
  /// param of downstream resources like `google_compute_instance`.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `gateway_address` attribute (the gateway IP within
  /// `ip_cidr_range`, auto-assigned by GCP).
  TfRef<String> get gatewayAddressRef =>
      TfRef.attribute<String>(this, 'gateway_address');
}
