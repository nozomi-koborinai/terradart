// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_hdinsight_cluster`.
const Set<String> _azurermHdinsightClusterSensitive = <String>{};

/// Factory wrapper for `azurerm_hdinsight_cluster`.
final class DataAzurermHdinsightCluster extends Data {
  static const String tfType = 'azurerm_hdinsight_cluster';

  DataAzurermHdinsightCluster(
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
  Set<String> get sensitiveFields => _azurermHdinsightClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `cluster_version` attribute.
  TfRef<String> get clusterVersion =>
      TfRef.attribute<String>(this, 'cluster_version');

  /// Reference to `component_versions` attribute.
  TfRef<Map<String, String>> get componentVersions =>
      TfRef.attribute<Map<String, String>>(this, 'component_versions');

  /// Reference to `edge_ssh_endpoint` attribute.
  TfRef<String> get edgeSshEndpoint =>
      TfRef.attribute<String>(this, 'edge_ssh_endpoint');

  /// Reference to `gateway` attribute.
  TfRef<List<Map<String, Object?>>> get gateway =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gateway');

  /// Reference to `https_endpoint` attribute.
  TfRef<String> get httpsEndpoint =>
      TfRef.attribute<String>(this, 'https_endpoint');

  /// Reference to `kafka_rest_proxy_endpoint` attribute.
  TfRef<String> get kafkaRestProxyEndpoint =>
      TfRef.attribute<String>(this, 'kafka_rest_proxy_endpoint');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `ssh_endpoint` attribute.
  TfRef<String> get sshEndpoint =>
      TfRef.attribute<String>(this, 'ssh_endpoint');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `tls_min_version` attribute.
  TfRef<String> get tlsMinVersion =>
      TfRef.attribute<String>(this, 'tls_min_version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
