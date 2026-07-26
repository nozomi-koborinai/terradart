// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> network,
    TfArg<String>? mirroringEndpointGroupAssociationId,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'mirroring_endpoint_group': mirroringEndpointGroup,
           'network': network,
           if (mirroringEndpointGroupAssociationId != null)
             'mirroring_endpoint_group_association_id':
                 mirroringEndpointGroupAssociationId,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityMirroringEndpointGroupAssociationSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
