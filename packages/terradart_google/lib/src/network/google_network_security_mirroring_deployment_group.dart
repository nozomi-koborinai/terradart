// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_network_security_mirroring_deployment_group`.
const Set<String> _googleNetworkSecurityMirroringDeploymentGroupSensitive =
    <String>{};

/// Factory wrapper for `google_network_security_mirroring_deployment_group`.
///
/// A deployment group aggregates many zonal mirroring backends (deployments)
/// into a single global mirroring service. Consumers can connect this service
/// using an endpoint group.
///
/// Network Security **mirroring deployment group** — global grouping for
/// OOB mirroring deployments on a VPC network.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Out-of-band
/// Integration Deployment Uptime SKU `E55D-280B-82DD` **$0.025/h** (Data
/// Processing `88A5-6AEF-68F2` **$0.008/GiBy**). billing-behavior: OOB
/// intercept / mirroring deployment uptime bills while the deployment
/// exists; destroy stops deployment-hour charges. **Never** wire into
/// apply-smoke.
final class GoogleNetworkSecurityMirroringDeploymentGroup extends Resource {
  static const String tfType =
      'google_network_security_mirroring_deployment_group';

  GoogleNetworkSecurityMirroringDeploymentGroup(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> mirroringDeploymentGroupId,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? description,
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
           'mirroring_deployment_group_id': mirroringDeploymentGroupId,
           'network': network.encodeAs('id'),
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityMirroringDeploymentGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityMirroringDeploymentGroup>`.
  RefTo<GoogleNetworkSecurityMirroringDeploymentGroup> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connected_endpoint_groups` attribute.
  TfRef<List<Map<String, Object?>>> get connectedEndpointGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'connected_endpoint_groups',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `locations` attribute.
  TfRef<List<Map<String, Object?>>> get locations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'locations');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mirroring_deployment_group_id` attribute.
  TfRef<String> get mirroringDeploymentGroupId =>
      TfRef.attribute<String>(this, 'mirroring_deployment_group_id');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
