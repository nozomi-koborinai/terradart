// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_network_security_mirroring_endpoint_group_association`.
const Set<String>
_googleNetworkSecurityMirroringEndpointGroupAssociationSensitive = <String>{};

/// Factory wrapper for `google_network_security_mirroring_endpoint_group_association`.
///
/// An endpoint group association represents a link between a network and an
/// endpoint group in the organization.
///
/// Creating an association creates the networking infrastructure linking the
/// network to the endpoint group, but does not enable mirroring by itself. To
/// enable mirroring, the user must also create a network firewall policy
/// containing mirroring rules and associate it with the network.
///
/// Network Security **mirroring endpoint group association** — associates
/// an OOB mirroring endpoint group with a consumer VPC network.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Out-of-band
/// Integration Deployment Uptime SKU `E55D-280B-82DD` **$0.025/h** (Data
/// Processing `88A5-6AEF-68F2` **$0.008/GiBy**). billing-behavior: OOB
/// mirroring endpoints / associations sit on the never_apply OOB deployment
/// path. **Never** wire into apply-smoke.
final class GoogleNetworkSecurityMirroringEndpointGroupAssociation
    extends Resource {
  static const String tfType =
      'google_network_security_mirroring_endpoint_group_association';

  GoogleNetworkSecurityMirroringEndpointGroupAssociation({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> mirroringEndpointGroup,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? mirroringEndpointGroupAssociationId,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'mirroring_endpoint_group': mirroringEndpointGroup,
           'network': network.encodeAs('id'),
           'mirroring_endpoint_group_association_id':
               ?mirroringEndpointGroupAssociationId,
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityMirroringEndpointGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityMirroringEndpointGroupAssociation>`.
  RefTo<GoogleNetworkSecurityMirroringEndpointGroupAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `locations` attribute.
  TfRef<List<Map<String, Object?>>> get locations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'locations');

  /// Reference to `locations_details` attribute.
  TfRef<List<Map<String, Object?>>> get locationsDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'locations_details');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mirroring_endpoint_group` attribute.
  TfRef<String> get mirroringEndpointGroup =>
      TfRef.attribute<String>(this, 'mirroring_endpoint_group');

  /// Reference to `mirroring_endpoint_group_association_id` attribute.
  TfRef<String> get mirroringEndpointGroupAssociationId =>
      TfRef.attribute<String>(this, 'mirroring_endpoint_group_association_id');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
