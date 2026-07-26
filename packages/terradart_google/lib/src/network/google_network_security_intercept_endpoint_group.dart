// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_intercept_endpoint_group`.
const Set<String> _googleNetworkSecurityInterceptEndpointGroupSensitive =
    <String>{};

/// Factory wrapper for `google_network_security_intercept_endpoint_group`.
///
/// An endpoint group is a consumer frontend for a deployment group (backend).
/// In order to configure intercept for a network, consumers must create: - An
/// association between their network and the endpoint group. - A security
/// profile that points to the endpoint group. - A firewall rule that references
/// the security profile (group).
///
/// Network Security **intercept endpoint group** — consumer-side OOB
/// intercept endpoint group linked to a deployment group.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Out-of-band
/// Integration Deployment Uptime SKU `E55D-280B-82DD` **$0.025/h** (Data
/// Processing `88A5-6AEF-68F2` **$0.008/GiBy**). billing-behavior: OOB
/// intercept / mirroring deployment uptime bills while the deployment
/// exists; destroy stops deployment-hour charges. **Never** wire into
/// apply-smoke.
final class GoogleNetworkSecurityInterceptEndpointGroup extends Resource {
  static const String tfType =
      'google_network_security_intercept_endpoint_group';

  GoogleNetworkSecurityInterceptEndpointGroup({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> interceptEndpointGroupId,
    required TfArg<String> interceptDeploymentGroup,
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
           'intercept_endpoint_group_id': interceptEndpointGroupId,
           'intercept_deployment_group': interceptDeploymentGroup,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityInterceptEndpointGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associations` attribute.
  TfRef<List<Map<String, Object?>>> get associations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associations');

  /// Reference to `connected_deployment_group` attribute.
  TfRef<List<Map<String, Object?>>> get connectedDeploymentGroup =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'connected_deployment_group',
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
