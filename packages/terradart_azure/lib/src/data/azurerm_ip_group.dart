// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ip/azurerm_ip_group.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_ip_group`.
const Set<String> _azurermIpGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_ip_group`.
final class DataAzurermIpGroup extends Data {
  static const String tfType = 'azurerm_ip_group';

  DataAzurermIpGroup(
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
  Set<String> get sensitiveFields => _azurermIpGroupSensitive;

  /// A reference to the `azurerm_ip_group` this data source reads, for
  /// arguments typed `RefTo<AzurermIpGroup>`.
  RefTo<AzurermIpGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidrs` attribute.
  TfRef<List<String>> get cidrs => TfRef.attribute<List<String>>(this, 'cidrs');

  /// Reference to `firewall_ids` attribute.
  TfRef<List<String>> get firewallIds =>
      TfRef.attribute<List<String>>(this, 'firewall_ids');

  /// Reference to `firewall_policy_ids` attribute.
  TfRef<List<String>> get firewallPolicyIds =>
      TfRef.attribute<List<String>>(this, 'firewall_policy_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
