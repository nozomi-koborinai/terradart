// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_mirroring_endpoint_group`.
const Set<String> _googleNetworkSecurityMirroringEndpointGroupSensitive =
    <String>{};

/// Exactly-one link from a mirroring endpoint group to its deployment
/// group(s). DIRECT uses a single group; BROKER uses a list.
sealed class NetworkSecurityMirroringEndpointGroupDeploymentLink {
  const NetworkSecurityMirroringEndpointGroupDeploymentLink();

  /// Match a single deployment group (DIRECT endpoint groups).
  const factory NetworkSecurityMirroringEndpointGroupDeploymentLink.direct(
    TfArg<String> mirroringDeploymentGroup,
  ) = NetworkSecurityMirroringEndpointGroupDirectDeploymentLink;

  /// Match one or more deployment groups (BROKER endpoint groups).
  const factory NetworkSecurityMirroringEndpointGroupDeploymentLink.broker(
    TfArg<List<String>> mirroringDeploymentGroups,
  ) = NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink;

  /// argMap key (`mirroring_deployment_group` or
  /// `mirroring_deployment_groups`).
  String get blockKey;

  /// Flat `{blockKey: value}` payload (Gate 6 encode round-trip shape).
  Map<String, Object?> encode();
}

/// `mirroring_deployment_group` variant (DIRECT).
@immutable
final class NetworkSecurityMirroringEndpointGroupDirectDeploymentLink
    extends NetworkSecurityMirroringEndpointGroupDeploymentLink {
  const NetworkSecurityMirroringEndpointGroupDirectDeploymentLink(
    this.mirroringDeploymentGroup,
  );

  final TfArg<String> mirroringDeploymentGroup;

  @override
  String get blockKey => 'mirroring_deployment_group';

  @override
  Map<String, Object?> encode() => {
    blockKey: mirroringDeploymentGroup.toTfJson(),
  };
}

/// `mirroring_deployment_groups` variant (BROKER).
@immutable
final class NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink
    extends NetworkSecurityMirroringEndpointGroupDeploymentLink {
  const NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink(
    this.mirroringDeploymentGroups,
  );

  final TfArg<List<String>> mirroringDeploymentGroups;

  @override
  String get blockKey => 'mirroring_deployment_groups';

  @override
  Map<String, Object?> encode() => {
    blockKey: mirroringDeploymentGroups.toTfJson(),
  };
}

/// Factory wrapper for `google_network_security_mirroring_endpoint_group`.
///
/// An endpoint group is a consumer frontend for a deployment group (backend).
/// In order to configure mirroring for a network, consumers must create: - An
/// association between their network and the endpoint group. - A security
/// profile that points to the endpoint group. - A mirroring rule that
/// references the security profile (group).
///
/// Network Security **mirroring endpoint group** — global Out-of-band (OOB)
/// mirroring endpoint group bound to one (DIRECT) or many (BROKER)
/// deployment groups.
///
/// The provider requires **exactly one** of `mirroring_deployment_group` /
/// `mirroring_deployment_groups`, modeled as the sealed
/// [NetworkSecurityMirroringEndpointGroupDeploymentLink].
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Out-of-band
/// Integration Deployment Uptime SKU `E55D-280B-82DD` **$0.025/h** (Data
/// Processing `88A5-6AEF-68F2` **$0.008/GiBy**). billing-behavior: OOB
/// mirroring endpoint groups sit on the never_apply OOB deployment path.
/// **Never** wire into apply-smoke.
final class GoogleNetworkSecurityMirroringEndpointGroup extends Resource {
  static const String tfType =
      'google_network_security_mirroring_endpoint_group';

  GoogleNetworkSecurityMirroringEndpointGroup({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> mirroringEndpointGroupId,
    required NetworkSecurityMirroringEndpointGroupDeploymentLink deploymentLink,
    TfArg<String>? type,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'mirroring_endpoint_group_id': mirroringEndpointGroupId,
           if (type != null) 'type': type,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           deploymentLink.blockKey: TfArg.literal(
             deploymentLink.encode()[deploymentLink.blockKey],
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityMirroringEndpointGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associations` attribute.
  TfRef<List<Map<String, Object?>>> get associations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associations');

  /// Reference to `connected_deployment_groups` attribute.
  TfRef<List<Map<String, Object?>>> get connectedDeploymentGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'connected_deployment_groups',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

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
