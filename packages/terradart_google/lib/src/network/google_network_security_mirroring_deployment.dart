// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_mirroring_deployment`.
const Set<String> _googleNetworkSecurityMirroringDeploymentSensitive =
    <String>{};

/// Factory wrapper for `google_network_security_mirroring_deployment`.
///
/// A deployment represents a zonal mirroring backend ready to accept
/// GENEVE-encapsulated replica traffic, e.g. a zonal instance group fronted by
/// an internal passthrough load balancer. Deployments are always part of a
/// global deployment group which represents a global mirroring service.
///
/// Network Security **mirroring deployment** — zonal Out-of-band (OOB)
/// mirroring appliance bound to a forwarding rule and deployment group.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Out-of-band
/// Integration Deployment Uptime SKU `E55D-280B-82DD` **$0.025/h** (Data
/// Processing `88A5-6AEF-68F2` **$0.008/GiBy**). billing-behavior: OOB
/// intercept / mirroring deployment uptime bills while the deployment
/// exists; destroy stops deployment-hour charges. **Never** wire into
/// apply-smoke.
final class GoogleNetworkSecurityMirroringDeployment extends Resource {
  static const String tfType = 'google_network_security_mirroring_deployment';

  GoogleNetworkSecurityMirroringDeployment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> mirroringDeploymentId,
    required TfArg<String> forwardingRule,
    required TfArg<String> mirroringDeploymentGroup,
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
           'mirroring_deployment_id': mirroringDeploymentId,
           'forwarding_rule': forwardingRule,
           'mirroring_deployment_group': mirroringDeploymentGroup,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityMirroringDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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
