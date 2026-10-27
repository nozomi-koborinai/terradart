// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_wan`.
const Set<String> _azurermVirtualWanSensitive = <String>{};

/// Virtual Wan Office365 Local Breakout enum for `office365_local_breakout_category`.
extension type const VirtualWanOffice365LocalBreakoutCategory._(TfArg<String> _)
    implements TfArg<String> {
  VirtualWanOffice365LocalBreakoutCategory.variable(String name)
    : this._(TfArg.variable(name));
  VirtualWanOffice365LocalBreakoutCategory.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualWanOffice365LocalBreakoutCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const all = VirtualWanOffice365LocalBreakoutCategory._(
    TfArgLiteral('All'),
  );
  static const none = VirtualWanOffice365LocalBreakoutCategory._(
    TfArgLiteral('None'),
  );
  static const optimize = VirtualWanOffice365LocalBreakoutCategory._(
    TfArgLiteral('Optimize'),
  );
  static const optimizeandallow = VirtualWanOffice365LocalBreakoutCategory._(
    TfArgLiteral('OptimizeAndAllow'),
  );

  static const List<VirtualWanOffice365LocalBreakoutCategory> values = [
    all,
    none,
    optimize,
    optimizeandallow,
  ];
}

/// Factory wrapper for `azurerm_virtual_wan`.
final class AzurermVirtualWan extends Resource {
  static const String tfType = 'azurerm_virtual_wan';

  AzurermVirtualWan(
    super.localName, {
    TfArg<bool>? allowBranchToBranchTraffic,
    TfArg<bool>? disableVpnEncryption,
    required TfArg<String> location,
    required TfArg<String> name,
    VirtualWanOffice365LocalBreakoutCategory? office365LocalBreakoutCategory,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_branch_to_branch_traffic': ?allowBranchToBranchTraffic,
           'disable_vpn_encryption': ?disableVpnEncryption,
           'location': location,
           'name': name,
           'office365_local_breakout_category': ?office365LocalBreakoutCategory,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualWanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualWan>`.
  RefTo<AzurermVirtualWan> get ref => RefTo.of(this);

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

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
