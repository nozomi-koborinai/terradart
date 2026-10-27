// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../kubernetes/azurerm_kubernetes_cluster.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kubernetes_cluster`.
const Set<String> _azurermKubernetesClusterSensitive = <String>{
  'kube_admin_config',
  'kube_admin_config_raw',
  'kube_config',
  'kube_config_raw',
};

/// Factory wrapper for `azurerm_kubernetes_cluster`.
final class DataAzurermKubernetesCluster extends Data {
  static const String tfType = 'azurerm_kubernetes_cluster';

  DataAzurermKubernetesCluster(
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
  Set<String> get sensitiveFields => _azurermKubernetesClusterSensitive;

  /// A reference to the `azurerm_kubernetes_cluster` this data source reads, for
  /// arguments typed `RefTo<AzurermKubernetesCluster>`.
  RefTo<AzurermKubernetesCluster> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aci_connector_linux` attribute.
  TfRef<List<Map<String, Object?>>> get aciConnectorLinux =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'aci_connector_linux');

  /// Reference to `agent_pool_profile` attribute.
  TfRef<List<Map<String, Object?>>> get agentPoolProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'agent_pool_profile');

  /// Reference to `api_server_authorized_ip_ranges` attribute.
  TfRef<List<String>> get apiServerAuthorizedIpRanges =>
      TfRef.attribute<List<String>>(this, 'api_server_authorized_ip_ranges');

  /// Reference to `azure_active_directory_role_based_access_control` attribute.
  TfRef<List<Map<String, Object?>>>
  get azureActiveDirectoryRoleBasedAccessControl =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azure_active_directory_role_based_access_control',
      );

  /// Reference to `azure_policy_enabled` attribute.
  TfRef<bool> get azurePolicyEnabled =>
      TfRef.attribute<bool>(this, 'azure_policy_enabled');

  /// Reference to `bootstrap_profile` attribute.
  TfRef<List<Map<String, Object?>>> get bootstrapProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bootstrap_profile');

  /// Reference to `current_kubernetes_version` attribute.
  TfRef<String> get currentKubernetesVersion =>
      TfRef.attribute<String>(this, 'current_kubernetes_version');

  /// Reference to `disk_encryption_set_id` attribute.
  TfRef<String> get diskEncryptionSetId =>
      TfRef.attribute<String>(this, 'disk_encryption_set_id');

  /// Reference to `dns_prefix` attribute.
  TfRef<String> get dnsPrefix => TfRef.attribute<String>(this, 'dns_prefix');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `http_application_routing_enabled` attribute.
  TfRef<bool> get httpApplicationRoutingEnabled =>
      TfRef.attribute<bool>(this, 'http_application_routing_enabled');

  /// Reference to `http_application_routing_zone_name` attribute.
  TfRef<String> get httpApplicationRoutingZoneName =>
      TfRef.attribute<String>(this, 'http_application_routing_zone_name');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `ingress_application_gateway` attribute.
  TfRef<List<Map<String, Object?>>> get ingressApplicationGateway =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ingress_application_gateway',
      );

  /// Reference to `key_management_service` attribute.
  TfRef<List<Map<String, Object?>>> get keyManagementService =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'key_management_service',
      );

  /// Reference to `key_vault_secrets_provider` attribute.
  TfRef<List<Map<String, Object?>>> get keyVaultSecretsProvider =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'key_vault_secrets_provider',
      );

  /// Reference to `kube_admin_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeAdminConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kube_admin_config');

  /// Reference to `kube_admin_config_raw` attribute.
  TfRef<String> get kubeAdminConfigRaw =>
      TfRef.attribute<String>(this, 'kube_admin_config_raw');

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

  /// Reference to `linux_profile` attribute.
  TfRef<List<Map<String, Object?>>> get linuxProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'linux_profile');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `microsoft_defender` attribute.
  TfRef<List<Map<String, Object?>>> get microsoftDefender =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'microsoft_defender');

  /// Reference to `network_profile` attribute.
  TfRef<List<Map<String, Object?>>> get networkProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_profile');

  /// Reference to `node_resource_group` attribute.
  TfRef<String> get nodeResourceGroup =>
      TfRef.attribute<String>(this, 'node_resource_group');

  /// Reference to `node_resource_group_id` attribute.
  TfRef<String> get nodeResourceGroupId =>
      TfRef.attribute<String>(this, 'node_resource_group_id');

  /// Reference to `oidc_issuer_enabled` attribute.
  TfRef<bool> get oidcIssuerEnabled =>
      TfRef.attribute<bool>(this, 'oidc_issuer_enabled');

  /// Reference to `oidc_issuer_url` attribute.
  TfRef<String> get oidcIssuerUrl =>
      TfRef.attribute<String>(this, 'oidc_issuer_url');

  /// Reference to `oms_agent` attribute.
  TfRef<List<Map<String, Object?>>> get omsAgent =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'oms_agent');

  /// Reference to `open_service_mesh_enabled` attribute.
  TfRef<bool> get openServiceMeshEnabled =>
      TfRef.attribute<bool>(this, 'open_service_mesh_enabled');

  /// Reference to `private_cluster_enabled` attribute.
  TfRef<bool> get privateClusterEnabled =>
      TfRef.attribute<bool>(this, 'private_cluster_enabled');

  /// Reference to `private_fqdn` attribute.
  TfRef<String> get privateFqdn =>
      TfRef.attribute<String>(this, 'private_fqdn');

  /// Reference to `role_based_access_control_enabled` attribute.
  TfRef<bool> get roleBasedAccessControlEnabled =>
      TfRef.attribute<bool>(this, 'role_based_access_control_enabled');

  /// Reference to `service_mesh_profile` attribute.
  TfRef<List<Map<String, Object?>>> get serviceMeshProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_mesh_profile');

  /// Reference to `service_principal` attribute.
  TfRef<List<Map<String, Object?>>> get servicePrincipal =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_principal');

  /// Reference to `storage_profile` attribute.
  TfRef<List<Map<String, Object?>>> get storageProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage_profile');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `windows_profile` attribute.
  TfRef<List<Map<String, Object?>>> get windowsProfile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'windows_profile');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
