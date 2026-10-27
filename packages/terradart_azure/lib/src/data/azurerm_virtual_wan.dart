// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../virtual_wan/azurerm_virtual_wan.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_wan`.
const Set<String> _azurermVirtualWanSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_wan`.
final class DataAzurermVirtualWan extends Data {
  static const String tfType = 'azurerm_virtual_wan';

  DataAzurermVirtualWan(
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
  Set<String> get sensitiveFields => _azurermVirtualWanSensitive;

  /// A reference to the `azurerm_virtual_wan` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualWan>`.
  RefTo<AzurermVirtualWan> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_branch_to_branch_traffic` attribute.
  TfRef<bool> get allowBranchToBranchTraffic =>
      TfRef.attribute<bool>(this, 'allow_branch_to_branch_traffic');

  /// Reference to `disable_vpn_encryption` attribute.
  TfRef<bool> get disableVpnEncryption =>
      TfRef.attribute<bool>(this, 'disable_vpn_encryption');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `office365_local_breakout_category` attribute.
  TfRef<String> get office365LocalBreakoutCategory =>
      TfRef.attribute<String>(this, 'office365_local_breakout_category');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_hub_ids` attribute.
  TfRef<List<String>> get virtualHubIds =>
      TfRef.attribute<List<String>>(this, 'virtual_hub_ids');

  /// Reference to `vpn_site_ids` attribute.
  TfRef<List<String>> get vpnSiteIds =>
      TfRef.attribute<List<String>>(this, 'vpn_site_ids');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
