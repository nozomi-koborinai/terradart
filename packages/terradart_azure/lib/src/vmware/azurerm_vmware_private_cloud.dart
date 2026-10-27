// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_vmware_private_cloud`.
const Set<String> _azurermVmwarePrivateCloudSensitive = <String>{
  'nsxt_password',
  'vcenter_password',
};

/// Vmware Private Cloud Sku enum for `sku_name`.
extension type const VmwarePrivateCloudSkuName._(TfArg<String> _)
    implements TfArg<String> {
  VmwarePrivateCloudSkuName.variable(String name)
    : this._(TfArg.variable(name));
  VmwarePrivateCloudSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const VmwarePrivateCloudSkuName.arg(TfArg<String> arg) : this._(arg);

  static const av20 = VmwarePrivateCloudSkuName._(TfArgLiteral('av20'));
  static const av36 = VmwarePrivateCloudSkuName._(TfArgLiteral('av36'));
  static const av36t = VmwarePrivateCloudSkuName._(TfArgLiteral('av36t'));
  static const av36p = VmwarePrivateCloudSkuName._(TfArgLiteral('av36p'));
  static const av36pt = VmwarePrivateCloudSkuName._(TfArgLiteral('av36pt'));
  static const av48 = VmwarePrivateCloudSkuName._(TfArgLiteral('av48'));
  static const av48t = VmwarePrivateCloudSkuName._(TfArgLiteral('av48t'));
  static const av52 = VmwarePrivateCloudSkuName._(TfArgLiteral('av52'));
  static const av52t = VmwarePrivateCloudSkuName._(TfArgLiteral('av52t'));
  static const av64 = VmwarePrivateCloudSkuName._(TfArgLiteral('av64'));

  static const List<VmwarePrivateCloudSkuName> values = [
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

/// Typed helper for the `management_cluster` block of
/// `azurerm_vmware_private_cloud` (derived from provider schema).
@immutable
final class VmwarePrivateCloudManagementCluster {
  const VmwarePrivateCloudManagementCluster({required this.size});

  final TfArg<num> size;

  @internal
  Map<String, Object?> encode() => {'size': size.toTfJson()};
}

/// Factory wrapper for `azurerm_vmware_private_cloud`.
final class AzurermVmwarePrivateCloud extends Resource {
  static const String tfType = 'azurerm_vmware_private_cloud';

  AzurermVmwarePrivateCloud(
    super.localName, {
    TfArg<bool>? internetConnectionEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> networkSubnetCidr,
    Sensitive<String>? nsxtPassword,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required VmwarePrivateCloudSkuName skuName,
    TfArg<Map<String, String>>? tags,
    Sensitive<String>? vcenterPassword,
    required VmwarePrivateCloudManagementCluster managementCluster,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'internet_connection_enabled': ?internetConnectionEnabled,
           'location': location,
           'name': name,
           'network_subnet_cidr': networkSubnetCidr,
           'nsxt_password': ?nsxtPassword,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           'vcenter_password': ?vcenterPassword,
           'management_cluster': TfArg.literal(managementCluster.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVmwarePrivateCloudSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVmwarePrivateCloud>`.
  RefTo<AzurermVmwarePrivateCloud> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `circuit` attribute.
  TfRef<List<Map<String, Object?>>> get circuit =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'circuit');

  /// Reference to `hcx_cloud_manager_endpoint` attribute.
  TfRef<String> get hcxCloudManagerEndpoint =>
      TfRef.attribute<String>(this, 'hcx_cloud_manager_endpoint');

  /// Reference to `management_subnet_cidr` attribute.
  TfRef<String> get managementSubnetCidr =>
      TfRef.attribute<String>(this, 'management_subnet_cidr');

  /// Reference to `nsxt_certificate_thumbprint` attribute.
  TfRef<String> get nsxtCertificateThumbprint =>
      TfRef.attribute<String>(this, 'nsxt_certificate_thumbprint');

  /// Reference to `nsxt_manager_endpoint` attribute.
  TfRef<String> get nsxtManagerEndpoint =>
      TfRef.attribute<String>(this, 'nsxt_manager_endpoint');

  /// Reference to `provisioning_subnet_cidr` attribute.
  TfRef<String> get provisioningSubnetCidr =>
      TfRef.attribute<String>(this, 'provisioning_subnet_cidr');

  /// Reference to `vcenter_certificate_thumbprint` attribute.
  TfRef<String> get vcenterCertificateThumbprint =>
      TfRef.attribute<String>(this, 'vcenter_certificate_thumbprint');

  /// Reference to `vcsa_endpoint` attribute.
  TfRef<String> get vcsaEndpoint =>
      TfRef.attribute<String>(this, 'vcsa_endpoint');

  /// Reference to `vmotion_subnet_cidr` attribute.
  TfRef<String> get vmotionSubnetCidr =>
      TfRef.attribute<String>(this, 'vmotion_subnet_cidr');

  /// Reference to `internet_connection_enabled` attribute.
  TfRef<bool> get internetConnectionEnabled =>
      TfRef.attribute<bool>(this, 'internet_connection_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_subnet_cidr` attribute.
  TfRef<String> get networkSubnetCidr =>
      TfRef.attribute<String>(this, 'network_subnet_cidr');

  /// Reference to `nsxt_password` attribute.
  TfRef<String> get nsxtPassword =>
      TfRef.attribute<String>(this, 'nsxt_password');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vcenter_password` attribute.
  TfRef<String> get vcenterPassword =>
      TfRef.attribute<String>(this, 'vcenter_password');
}
