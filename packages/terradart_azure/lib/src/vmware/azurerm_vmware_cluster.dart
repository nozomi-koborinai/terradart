// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_vmware_cluster`.
const Set<String> _azurermVmwareClusterSensitive = <String>{};

/// Vmware Cluster Sku enum for `sku_name`.
extension type const VmwareClusterSkuName._(TfArg<String> _)
    implements TfArg<String> {
  VmwareClusterSkuName.variable(String name) : this._(TfArg.variable(name));
  VmwareClusterSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const VmwareClusterSkuName.arg(TfArg<String> arg) : this._(arg);

  static const av20 = VmwareClusterSkuName._(TfArgLiteral('av20'));
  static const av36 = VmwareClusterSkuName._(TfArgLiteral('av36'));
  static const av36t = VmwareClusterSkuName._(TfArgLiteral('av36t'));
  static const av36p = VmwareClusterSkuName._(TfArgLiteral('av36p'));
  static const av36pt = VmwareClusterSkuName._(TfArgLiteral('av36pt'));
  static const av48 = VmwareClusterSkuName._(TfArgLiteral('av48'));
  static const av48t = VmwareClusterSkuName._(TfArgLiteral('av48t'));
  static const av52 = VmwareClusterSkuName._(TfArgLiteral('av52'));
  static const av52t = VmwareClusterSkuName._(TfArgLiteral('av52t'));
  static const av64 = VmwareClusterSkuName._(TfArgLiteral('av64'));

  static const List<VmwareClusterSkuName> values = [
    av20,
    av36,
    av36t,
    av36p,
    av36pt,
    av48,
    av48t,
    av52,
    av52t,
    av64,
  ];
}

/// Factory wrapper for `azurerm_vmware_cluster`.
final class AzurermVmwareCluster extends Resource {
  static const String tfType = 'azurerm_vmware_cluster';

  AzurermVmwareCluster(
    super.localName, {
    required TfArg<num> clusterNodeCount,
    required TfArg<String> name,
    required VmwareClusterSkuName skuName,
    required TfArg<String> vmwareCloudId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_node_count': clusterNodeCount,
           'name': name,
           'sku_name': skuName,
           'vmware_cloud_id': vmwareCloudId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVmwareClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVmwareCluster>`.
  RefTo<AzurermVmwareCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_number` attribute.
  TfRef<num> get clusterNumber => TfRef.attribute<num>(this, 'cluster_number');

  /// Reference to `hosts` attribute.
  TfRef<List<String>> get hosts => TfRef.attribute<List<String>>(this, 'hosts');

  /// Reference to `cluster_node_count` attribute.
  TfRef<num> get clusterNodeCount =>
      TfRef.attribute<num>(this, 'cluster_node_count');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `vmware_cloud_id` attribute.
  TfRef<String> get vmwareCloudId =>
      TfRef.attribute<String>(this, 'vmware_cloud_id');
}
