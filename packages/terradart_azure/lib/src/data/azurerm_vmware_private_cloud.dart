// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../vmware/azurerm_vmware_private_cloud.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_vmware_private_cloud`.
const Set<String> _azurermVmwarePrivateCloudSensitive = <String>{};

/// Factory wrapper for `azurerm_vmware_private_cloud`.
final class DataAzurermVmwarePrivateCloud extends Data {
  static const String tfType = 'azurerm_vmware_private_cloud';

  DataAzurermVmwarePrivateCloud(
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
  Set<String> get sensitiveFields => _azurermVmwarePrivateCloudSensitive;

  /// A reference to the `azurerm_vmware_private_cloud` this data source reads, for
  /// arguments typed `RefTo<AzurermVmwarePrivateCloud>`.
  RefTo<AzurermVmwarePrivateCloud> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `internet_connection_enabled` attribute.
  TfRef<bool> get internetConnectionEnabled =>
      TfRef.attribute<bool>(this, 'internet_connection_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `management_cluster` attribute.
  TfRef<List<Map<String, Object?>>> get managementCluster =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'management_cluster');

  /// Reference to `management_subnet_cidr` attribute.
  TfRef<String> get managementSubnetCidr =>
      TfRef.attribute<String>(this, 'management_subnet_cidr');

  /// Reference to `network_subnet_cidr` attribute.
  TfRef<String> get networkSubnetCidr =>
      TfRef.attribute<String>(this, 'network_subnet_cidr');

  /// Reference to `nsxt_certificate_thumbprint` attribute.
  TfRef<String> get nsxtCertificateThumbprint =>
      TfRef.attribute<String>(this, 'nsxt_certificate_thumbprint');

  /// Reference to `nsxt_manager_endpoint` attribute.
  TfRef<String> get nsxtManagerEndpoint =>
      TfRef.attribute<String>(this, 'nsxt_manager_endpoint');

  /// Reference to `provisioning_subnet_cidr` attribute.
  TfRef<String> get provisioningSubnetCidr =>
      TfRef.attribute<String>(this, 'provisioning_subnet_cidr');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vcenter_certificate_thumbprint` attribute.
  TfRef<String> get vcenterCertificateThumbprint =>
      TfRef.attribute<String>(this, 'vcenter_certificate_thumbprint');

  /// Reference to `vcsa_endpoint` attribute.
  TfRef<String> get vcsaEndpoint =>
      TfRef.attribute<String>(this, 'vcsa_endpoint');

  /// Reference to `vmotion_subnet_cidr` attribute.
  TfRef<String> get vmotionSubnetCidr =>
      TfRef.attribute<String>(this, 'vmotion_subnet_cidr');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
