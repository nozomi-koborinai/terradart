// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_router.dart' show GoogleComputeRouter;

/// Sensitive field paths for `google_compute_interconnect_attachment`.
const Set<String> _googleComputeInterconnectAttachmentSensitive = <String>{};

/// Compute Interconnect Attachment enum for `bandwidth`.
extension type const ComputeInterconnectAttachmentBandwidth._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectAttachmentBandwidth.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectAttachmentBandwidth.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectAttachmentBandwidth.arg(TfArg<String> arg)
    : this._(arg);

  static const bps50m = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_50M'),
  );
  static const bps100m = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_100M'),
  );
  static const bps200m = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_200M'),
  );
  static const bps300m = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_300M'),
  );
  static const bps400m = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_400M'),
  );
  static const bps500m = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_500M'),
  );
  static const bps1g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_1G'),
  );
  static const bps2g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_2G'),
  );
  static const bps5g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_5G'),
  );
  static const bps10g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_10G'),
  );
  static const bps20g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_20G'),
  );
  static const bps50g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_50G'),
  );
  static const bps100g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_100G'),
  );
  static const bps400g = ComputeInterconnectAttachmentBandwidth._(
    TfArgLiteral('BPS_400G'),
  );

  static const List<ComputeInterconnectAttachmentBandwidth> values = [
    bps50m,
    bps100m,
    bps200m,
    bps300m,
    bps400m,
    bps500m,
    bps1g,
    bps2g,
    bps5g,
    bps10g,
    bps20g,
    bps50g,
    bps100g,
    bps400g,
  ];
}

/// Compute Interconnect Attachment enum for `encryption`.
extension type const ComputeInterconnectAttachmentEncryption._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectAttachmentEncryption.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectAttachmentEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectAttachmentEncryption.arg(TfArg<String> arg)
    : this._(arg);

  static const none = ComputeInterconnectAttachmentEncryption._(
    TfArgLiteral('NONE'),
  );
  static const ipsec = ComputeInterconnectAttachmentEncryption._(
    TfArgLiteral('IPSEC'),
  );

  static const List<ComputeInterconnectAttachmentEncryption> values = [
    none,
    ipsec,
  ];
}

/// Compute Interconnect Attachment Stack enum for `stack_type`.
extension type const ComputeInterconnectAttachmentStackType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectAttachmentStackType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectAttachmentStackType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectAttachmentStackType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4Ipv6 = ComputeInterconnectAttachmentStackType._(
    TfArgLiteral('IPV4_IPV6'),
  );
  static const ipv4Only = ComputeInterconnectAttachmentStackType._(
    TfArgLiteral('IPV4_ONLY'),
  );

  static const List<ComputeInterconnectAttachmentStackType> values = [
    ipv4Ipv6,
    ipv4Only,
  ];
}

/// Compute Interconnect Attachment enum for `state`.
extension type const ComputeInterconnectAttachmentState._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectAttachmentState.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectAttachmentState.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectAttachmentState.arg(TfArg<String> arg) : this._(arg);

  static const active = ComputeInterconnectAttachmentState._(
    TfArgLiteral('ACTIVE'),
  );
  static const defunct = ComputeInterconnectAttachmentState._(
    TfArgLiteral('DEFUNCT'),
  );
  static const partnerRequestReceived = ComputeInterconnectAttachmentState._(
    TfArgLiteral('PARTNER_REQUEST_RECEIVED'),
  );
  static const pendingCustomer = ComputeInterconnectAttachmentState._(
    TfArgLiteral('PENDING_CUSTOMER'),
  );
  static const pendingPartner = ComputeInterconnectAttachmentState._(
    TfArgLiteral('PENDING_PARTNER'),
  );
  static const stateUnspecified = ComputeInterconnectAttachmentState._(
    TfArgLiteral('STATE_UNSPECIFIED'),
  );

  static const List<ComputeInterconnectAttachmentState> values = [
    active,
    defunct,
    partnerRequestReceived,
    pendingCustomer,
    pendingPartner,
    stateUnspecified,
  ];
}

/// Compute Interconnect Attachment enum for `type`.
extension type const ComputeInterconnectAttachmentType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectAttachmentType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectAttachmentType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectAttachmentType.arg(TfArg<String> arg) : this._(arg);

  static const dedicated = ComputeInterconnectAttachmentType._(
    TfArgLiteral('DEDICATED'),
  );
  static const partner = ComputeInterconnectAttachmentType._(
    TfArgLiteral('PARTNER'),
  );
  static const partnerProvider = ComputeInterconnectAttachmentType._(
    TfArgLiteral('PARTNER_PROVIDER'),
  );
  static const l2Dedicated = ComputeInterconnectAttachmentType._(
    TfArgLiteral('L2_DEDICATED'),
  );

  static const List<ComputeInterconnectAttachmentType> values = [
    dedicated,
    partner,
    partnerProvider,
    l2Dedicated,
  ];
}

/// Typed helper for the `l2_forwarding` block of
/// `google_compute_interconnect_attachment` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentL2Forwarding {
  const ComputeInterconnectAttachmentL2Forwarding({
    this.defaultApplianceIpAddress,
    this.network,
    this.tunnelEndpointIpAddress,
    this.applianceMappings,
    this.geneveHeader,
  });

  final TfArg<String>? defaultApplianceIpAddress;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<String>? tunnelEndpointIpAddress;

  final List<ComputeInterconnectAttachmentApplianceMappings>? applianceMappings;

  final ComputeInterconnectAttachmentGeneveHeader? geneveHeader;

  @internal
  Map<String, Object?> encode() => {
    'default_appliance_ip_address': ?defaultApplianceIpAddress?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'tunnel_endpoint_ip_address': ?tunnelEndpointIpAddress?.toTfJson(),
    if (applianceMappings != null)
      'appliance_mappings': [for (final e in applianceMappings!) e.encode()],
    'geneve_header': ?geneveHeader?.encode(),
  };
}

/// Typed helper for the `l2_forwarding.appliance_mappings` block of
/// `google_compute_interconnect_attachment` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentApplianceMappings {
  const ComputeInterconnectAttachmentApplianceMappings({
    this.applianceIpAddress,
    this.name,
    this.vlanId,
    this.innerVlanToApplianceMappings,
  });

  final TfArg<String>? applianceIpAddress;

  final TfArg<String>? name;

  final TfArg<String>? vlanId;

  final List<ComputeInterconnectAttachmentInnerVlanToApplianceMappings>?
  innerVlanToApplianceMappings;

  @internal
  Map<String, Object?> encode() => {
    'appliance_ip_address': ?applianceIpAddress?.toTfJson(),
    'name': ?name?.toTfJson(),
    'vlan_id': ?vlanId?.toTfJson(),
    if (innerVlanToApplianceMappings != null)
      'inner_vlan_to_appliance_mappings': [
        for (final e in innerVlanToApplianceMappings!) e.encode(),
      ],
  };
}

/// Typed helper for the `l2_forwarding.appliance_mappings.inner_vlan_to_appliance_mappings` block of
/// `google_compute_interconnect_attachment` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentInnerVlanToApplianceMappings {
  const ComputeInterconnectAttachmentInnerVlanToApplianceMappings({
    this.innerApplianceIpAddress,
    this.innerVlanTags,
  });

  final TfArg<String>? innerApplianceIpAddress;

  final TfArg<List<String>>? innerVlanTags;

  @internal
  Map<String, Object?> encode() => {
    'inner_appliance_ip_address': ?innerApplianceIpAddress?.toTfJson(),
    'inner_vlan_tags': ?innerVlanTags?.toTfJson(),
  };
}

/// Typed helper for the `l2_forwarding.geneve_header` block of
/// `google_compute_interconnect_attachment` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentGeneveHeader {
  const ComputeInterconnectAttachmentGeneveHeader({this.vni});

  final TfArg<num>? vni;

  @internal
  Map<String, Object?> encode() => {'vni': ?vni?.toTfJson()};
}

/// Typed helper for the `params` block of
/// `google_compute_interconnect_attachment` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentParams {
  const ComputeInterconnectAttachmentParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  @internal
  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_interconnect_attachment`.
///
/// Represents an InterconnectAttachment (VLAN attachment) resource. For more
/// information, see Creating VLAN Attachments.
final class GoogleComputeInterconnectAttachment extends Resource {
  static const String tfType = 'google_compute_interconnect_attachment';

  GoogleComputeInterconnectAttachment(
    super.localName, {
    required TfArg<String> name,
    ComputeInterconnectAttachmentType? type,
    TfArg<String>? interconnect,
    RefTo<GoogleComputeRouter>? router,
    TfArg<String>? region,
    TfArg<String>? bandwidth,
    TfArg<num>? vlanTag8021q,
    TfArg<String>? mtu,
    ComputeInterconnectAttachmentEncryption? encryption,
    ComputeInterconnectAttachmentStackType? stackType,
    TfArg<String>? edgeAvailabilityDomain,
    TfArg<List<String>>? candidateSubnets,
    TfArg<String>? candidateCloudRouterIpAddress,
    TfArg<String>? candidateCustomerRouterIpAddress,
    TfArg<String>? candidateCloudRouterIpv6Address,
    TfArg<String>? candidateCustomerRouterIpv6Address,
    TfArg<bool>? adminEnabled,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    ComputeInterconnectAttachmentL2Forwarding? l2Forwarding,
    ComputeInterconnectAttachmentParams? params,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'type': ?type,
           'interconnect': ?interconnect,
           'router': ?router?.encodeAs('self_link'),
           'region': ?region,
           'bandwidth': ?bandwidth,
           'vlan_tag8021q': ?vlanTag8021q,
           'mtu': ?mtu,
           'encryption': ?encryption,
           'stack_type': ?stackType,
           'edge_availability_domain': ?edgeAvailabilityDomain,
           'candidate_subnets': ?candidateSubnets,
           'candidate_cloud_router_ip_address': ?candidateCloudRouterIpAddress,
           'candidate_customer_router_ip_address':
               ?candidateCustomerRouterIpAddress,
           'candidate_cloud_router_ipv6_address':
               ?candidateCloudRouterIpv6Address,
           'candidate_customer_router_ipv6_address':
               ?candidateCustomerRouterIpv6Address,
           'admin_enabled': ?adminEnabled,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (l2Forwarding != null)
             'l2_forwarding': TfArg.literal(l2Forwarding.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInterconnectAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInterconnectAttachment>`.
  RefTo<GoogleComputeInterconnectAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `attachment_group` attribute.
  TfRef<String> get attachmentGroup =>
      TfRef.attribute<String>(this, 'attachment_group');

  /// Reference to `cloud_router_ip_address` attribute.
  TfRef<String> get cloudRouterIpAddress =>
      TfRef.attribute<String>(this, 'cloud_router_ip_address');

  /// Reference to `cloud_router_ipv6_address` attribute.
  TfRef<String> get cloudRouterIpv6Address =>
      TfRef.attribute<String>(this, 'cloud_router_ipv6_address');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `customer_router_ip_address` attribute.
  TfRef<String> get customerRouterIpAddress =>
      TfRef.attribute<String>(this, 'customer_router_ip_address');

  /// Reference to `customer_router_ipv6_address` attribute.
  TfRef<String> get customerRouterIpv6Address =>
      TfRef.attribute<String>(this, 'customer_router_ipv6_address');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `google_reference_id` attribute.
  TfRef<String> get googleReferenceId =>
      TfRef.attribute<String>(this, 'google_reference_id');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `pairing_key` attribute.
  TfRef<String> get pairingKey => TfRef.attribute<String>(this, 'pairing_key');

  /// Reference to `partner_asn` attribute.
  TfRef<String> get partnerAsn => TfRef.attribute<String>(this, 'partner_asn');

  /// Reference to `private_interconnect_info` attribute.
  TfRef<List<Map<String, Object?>>> get privateInterconnectInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_interconnect_info',
      );

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `admin_enabled` attribute.
  TfRef<bool> get adminEnabled => TfRef.attribute<bool>(this, 'admin_enabled');

  /// Reference to `bandwidth` attribute.
  TfRef<String> get bandwidth => TfRef.attribute<String>(this, 'bandwidth');

  /// Reference to `candidate_cloud_router_ip_address` attribute.
  TfRef<String> get candidateCloudRouterIpAddress =>
      TfRef.attribute<String>(this, 'candidate_cloud_router_ip_address');

  /// Reference to `candidate_cloud_router_ipv6_address` attribute.
  TfRef<String> get candidateCloudRouterIpv6Address =>
      TfRef.attribute<String>(this, 'candidate_cloud_router_ipv6_address');

  /// Reference to `candidate_customer_router_ip_address` attribute.
  TfRef<String> get candidateCustomerRouterIpAddress =>
      TfRef.attribute<String>(this, 'candidate_customer_router_ip_address');

  /// Reference to `candidate_customer_router_ipv6_address` attribute.
  TfRef<String> get candidateCustomerRouterIpv6Address =>
      TfRef.attribute<String>(this, 'candidate_customer_router_ipv6_address');

  /// Reference to `candidate_subnets` attribute.
  TfRef<List<String>> get candidateSubnets =>
      TfRef.attribute<List<String>>(this, 'candidate_subnets');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `edge_availability_domain` attribute.
  TfRef<String> get edgeAvailabilityDomain =>
      TfRef.attribute<String>(this, 'edge_availability_domain');

  /// Reference to `encryption` attribute.
  TfRef<String> get encryption => TfRef.attribute<String>(this, 'encryption');

  /// Reference to `interconnect` attribute.
  TfRef<String> get interconnect =>
      TfRef.attribute<String>(this, 'interconnect');

  /// Reference to `ipsec_internal_addresses` attribute.
  TfRef<List<String>> get ipsecInternalAddresses =>
      TfRef.attribute<List<String>>(this, 'ipsec_internal_addresses');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `mtu` attribute.
  TfRef<String> get mtu => TfRef.attribute<String>(this, 'mtu');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get router => TfRef.attribute<String>(this, 'router');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');

  /// Reference to `subnet_length` attribute.
  TfRef<num> get subnetLength => TfRef.attribute<num>(this, 'subnet_length');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vlan_tag8021q` attribute.
  TfRef<num> get vlanTag8021q => TfRef.attribute<num>(this, 'vlan_tag8021q');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
