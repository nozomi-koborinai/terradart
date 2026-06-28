// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (type != null) 'type': type,
           if (interconnect != null) 'interconnect': interconnect,
           if (router != null) 'router': router,
           if (region != null) 'region': region,
           if (bandwidth != null) 'bandwidth': bandwidth,
           if (vlanTag8021q != null) 'vlan_tag8021q': vlanTag8021q,
           if (mtu != null) 'mtu': mtu,
           if (encryption != null) 'encryption': encryption,
           if (stackType != null) 'stack_type': stackType,
           if (edgeAvailabilityDomain != null)
             'edge_availability_domain': edgeAvailabilityDomain,
           if (candidateSubnets != null) 'candidate_subnets': candidateSubnets,
           if (candidateCloudRouterIpAddress != null)
             'candidate_cloud_router_ip_address': candidateCloudRouterIpAddress,
           if (candidateCustomerRouterIpAddress != null)
             'candidate_customer_router_ip_address':
                 candidateCustomerRouterIpAddress,
           if (candidateCloudRouterIpv6Address != null)
             'candidate_cloud_router_ipv6_address':
                 candidateCloudRouterIpv6Address,
           if (candidateCustomerRouterIpv6Address != null)
             'candidate_customer_router_ipv6_address':
                 candidateCustomerRouterIpv6Address,
           if (adminEnabled != null) 'admin_enabled': adminEnabled,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInterconnectAttachmentSensitive;

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

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
