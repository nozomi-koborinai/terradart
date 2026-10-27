// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dedicated_host_group`.
const Set<String> _azurermDedicatedHostGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_dedicated_host_group`.
final class AzurermDedicatedHostGroup extends Resource {
  static const String tfType = 'azurerm_dedicated_host_group';

  AzurermDedicatedHostGroup(
    super.localName, {
    TfArg<bool>? automaticPlacementEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<num> platformFaultDomainCount,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? zone,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automatic_placement_enabled': ?automaticPlacementEnabled,
           'location': location,
           'name': name,
           'platform_fault_domain_count': platformFaultDomainCount,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'zone': ?zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDedicatedHostGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDedicatedHostGroup>`.
  RefTo<AzurermDedicatedHostGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automatic_placement_enabled` attribute.
  TfRef<bool> get automaticPlacementEnabled =>
      TfRef.attribute<bool>(this, 'automatic_placement_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `platform_fault_domain_count` attribute.
  TfRef<num> get platformFaultDomainCount =>
      TfRef.attribute<num>(this, 'platform_fault_domain_count');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
