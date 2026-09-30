// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_interconnect_attachment`.
const Set<String> _googleComputeInterconnectAttachmentSensitive = <String>{};

/// Compute Interconnect Attachment enum for `bandwidth`.
enum ComputeInterconnectAttachmentBandwidth implements TerraformEnum {
  bps50m('BPS_50M'),
  bps100m('BPS_100M'),
  bps200m('BPS_200M'),
  bps300m('BPS_300M'),
  bps400m('BPS_400M'),
  bps500m('BPS_500M'),
  bps1g('BPS_1G'),
  bps2g('BPS_2G'),
  bps5g('BPS_5G'),
  bps10g('BPS_10G'),
  bps20g('BPS_20G'),
  bps50g('BPS_50G'),
  bps100g('BPS_100G'),
  bps400g('BPS_400G');

  const ComputeInterconnectAttachmentBandwidth(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Interconnect Attachment enum for `encryption`.
enum ComputeInterconnectAttachmentEncryption implements TerraformEnum {
  none('NONE'),
  ipsec('IPSEC');

  const ComputeInterconnectAttachmentEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Interconnect Attachment Stack enum for `stack_type`.
enum ComputeInterconnectAttachmentStackType implements TerraformEnum {
  ipv4Ipv6('IPV4_IPV6'),
  ipv4Only('IPV4_ONLY');

  const ComputeInterconnectAttachmentStackType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Interconnect Attachment enum for `state`.
enum ComputeInterconnectAttachmentState implements TerraformEnum {
  active('ACTIVE'),
  defunct('DEFUNCT'),
  partnerRequestReceived('PARTNER_REQUEST_RECEIVED'),
  pendingCustomer('PENDING_CUSTOMER'),
  pendingPartner('PENDING_PARTNER'),
  stateUnspecified('STATE_UNSPECIFIED');

  const ComputeInterconnectAttachmentState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Interconnect Attachment enum for `type`.
enum ComputeInterconnectAttachmentType implements TerraformEnum {
  dedicated('DEDICATED'),
  partner('PARTNER'),
  partnerProvider('PARTNER_PROVIDER'),
  l2Dedicated('L2_DEDICATED');

  const ComputeInterconnectAttachmentType(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<ComputeInterconnectAttachmentL2ForwardingApplianceMappings>?
  applianceMappings;

  final ComputeInterconnectAttachmentL2ForwardingGeneveHeader? geneveHeader;

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
final class ComputeInterconnectAttachmentL2ForwardingApplianceMappings {
  const ComputeInterconnectAttachmentL2ForwardingApplianceMappings({
    this.applianceIpAddress,
    this.name,
    this.vlanId,
    this.innerVlanToApplianceMappings,
  });

  final TfArg<String>? applianceIpAddress;

  final TfArg<String>? name;

  final TfArg<String>? vlanId;

  final List<
    ComputeInterconnectAttachmentL2ForwardingApplianceMappingsInnerVlanToApplianceMappings
  >?
  innerVlanToApplianceMappings;

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
final class ComputeInterconnectAttachmentL2ForwardingApplianceMappingsInnerVlanToApplianceMappings {
  const ComputeInterconnectAttachmentL2ForwardingApplianceMappingsInnerVlanToApplianceMappings({
    this.innerApplianceIpAddress,
    this.innerVlanTags,
  });

  final TfArg<String>? innerApplianceIpAddress;

  final TfArg<List<String>>? innerVlanTags;

  Map<String, Object?> encode() => {
    'inner_appliance_ip_address': ?innerApplianceIpAddress?.toTfJson(),
    'inner_vlan_tags': ?innerVlanTags?.toTfJson(),
  };
}

/// Typed helper for the `l2_forwarding.geneve_header` block of
/// `google_compute_interconnect_attachment` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentL2ForwardingGeneveHeader {
  const ComputeInterconnectAttachmentL2ForwardingGeneveHeader({this.vni});

  final TfArg<num>? vni;

  Map<String, Object?> encode() => {'vni': ?vni?.toTfJson()};
}

/// Typed helper for the `params` block of
/// `google_compute_interconnect_attachment` (derived from provider schema).
@immutable
final class ComputeInterconnectAttachmentParams {
  const ComputeInterconnectAttachmentParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

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

  GoogleComputeInterconnectAttachment({
    required super.localName,
    required TfArg<String> name,
    TfArg<ComputeInterconnectAttachmentType>? type,
    TfArg<String>? interconnect,
    TfArg<String>? router,
    TfArg<String>? region,
    TfArg<String>? bandwidth,
    TfArg<num>? vlanTag8021q,
    TfArg<String>? mtu,
    TfArg<ComputeInterconnectAttachmentEncryption>? encryption,
    TfArg<ComputeInterconnectAttachmentStackType>? stackType,
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
           'router': ?router,
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
  TfRef<bool> get adminEnabledRef =>
      TfRef.attribute<bool>(this, 'admin_enabled');

  /// Reference to `bandwidth` attribute.
  TfRef<String> get bandwidthRef => TfRef.attribute<String>(this, 'bandwidth');

  /// Reference to `candidate_cloud_router_ip_address` attribute.
  TfRef<String> get candidateCloudRouterIpAddressRef =>
      TfRef.attribute<String>(this, 'candidate_cloud_router_ip_address');

  /// Reference to `candidate_cloud_router_ipv6_address` attribute.
  TfRef<String> get candidateCloudRouterIpv6AddressRef =>
      TfRef.attribute<String>(this, 'candidate_cloud_router_ipv6_address');

  /// Reference to `candidate_customer_router_ip_address` attribute.
  TfRef<String> get candidateCustomerRouterIpAddressRef =>
      TfRef.attribute<String>(this, 'candidate_customer_router_ip_address');

  /// Reference to `candidate_customer_router_ipv6_address` attribute.
  TfRef<String> get candidateCustomerRouterIpv6AddressRef =>
      TfRef.attribute<String>(this, 'candidate_customer_router_ipv6_address');

  /// Reference to `candidate_subnets` attribute.
  TfRef<List<String>> get candidateSubnetsRef =>
      TfRef.attribute<List<String>>(this, 'candidate_subnets');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `edge_availability_domain` attribute.
  TfRef<String> get edgeAvailabilityDomainRef =>
      TfRef.attribute<String>(this, 'edge_availability_domain');

  /// Reference to `encryption` attribute.
  TfRef<String> get encryptionRef =>
      TfRef.attribute<String>(this, 'encryption');

  /// Reference to `interconnect` attribute.
  TfRef<String> get interconnectRef =>
      TfRef.attribute<String>(this, 'interconnect');

  /// Reference to `ipsec_internal_addresses` attribute.
  TfRef<List<String>> get ipsecInternalAddressesRef =>
      TfRef.attribute<List<String>>(this, 'ipsec_internal_addresses');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `mtu` attribute.
  TfRef<String> get mtuRef => TfRef.attribute<String>(this, 'mtu');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get routerRef => TfRef.attribute<String>(this, 'router');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackTypeRef => TfRef.attribute<String>(this, 'stack_type');

  /// Reference to `subnet_length` attribute.
  TfRef<num> get subnetLengthRef => TfRef.attribute<num>(this, 'subnet_length');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `vlan_tag8021q` attribute.
  TfRef<num> get vlanTag8021qRef => TfRef.attribute<num>(this, 'vlan_tag8021q');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
