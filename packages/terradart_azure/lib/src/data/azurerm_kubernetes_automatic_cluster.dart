// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kubernetes/azurerm_kubernetes_automatic_cluster.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kubernetes_automatic_cluster`.
const Set<String> _azurermKubernetesAutomaticClusterSensitive = <String>{
  'kube_config',
  'kube_config_raw',
};

/// Factory wrapper for `azurerm_kubernetes_automatic_cluster`.
final class DataAzurermKubernetesAutomaticCluster extends Data {
  static const String tfType = 'azurerm_kubernetes_automatic_cluster';

  DataAzurermKubernetesAutomaticCluster(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKubernetesAutomaticClusterSensitive;

  /// A reference to the `azurerm_kubernetes_automatic_cluster` this data source reads, for
  /// arguments typed `RefTo<AzurermKubernetesAutomaticCluster>`.
  RefTo<AzurermKubernetesAutomaticCluster> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_server_access` attribute.
  TfRef<List<Map<String, Object?>>> get apiServerAccess =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'api_server_access');

  /// Reference to `current_kubernetes_version` attribute.
  TfRef<String> get currentKubernetesVersion =>
      TfRef.attribute<String>(this, 'current_kubernetes_version');

  /// Reference to `dns_prefix` attribute.
  TfRef<String> get dnsPrefix => TfRef.attribute<String>(this, 'dns_prefix');

  /// Reference to `fully_qualified_domain_name` attribute.
  TfRef<String> get fullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'fully_qualified_domain_name');

  /// Reference to `hosted_system` attribute.
  TfRef<List<Map<String, Object?>>> get hostedSystem =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hosted_system');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `kube_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kube_config');

  /// Reference to `kube_config_raw` attribute.
  TfRef<String> get kubeConfigRaw =>
      TfRef.attribute<String>(this, 'kube_config_raw');

  /// Reference to `kubelet_identity` attribute.
  TfRef<List<Map<String, Object?>>> get kubeletIdentity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kubelet_identity');

  /// Reference to `kubernetes_version` attribute.
  TfRef<String> get kubernetesVersion =>
      TfRef.attribute<String>(this, 'kubernetes_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `node_resource_group` attribute.
  TfRef<String> get nodeResourceGroup =>
      TfRef.attribute<String>(this, 'node_resource_group');

  /// Reference to `node_resource_group_id` attribute.
  TfRef<String> get nodeResourceGroupId =>
      TfRef.attribute<String>(this, 'node_resource_group_id');

  /// Reference to `portal_fully_qualified_domain_name` attribute.
  TfRef<String> get portalFullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'portal_fully_qualified_domain_name');

  /// Reference to `private_cluster` attribute.
  TfRef<List<Map<String, Object?>>> get privateCluster =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'private_cluster');

  /// Reference to `private_fully_qualified_domain_name` attribute.
  TfRef<String> get privateFullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'private_fully_qualified_domain_name');

  /// Reference to `service_mesh` attribute.
  TfRef<List<Map<String, Object?>>> get serviceMesh =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_mesh');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `web_app_routing_ingress` attribute.
  TfRef<List<Map<String, Object?>>> get webAppRoutingIngress =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'web_app_routing_ingress',
      );

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
