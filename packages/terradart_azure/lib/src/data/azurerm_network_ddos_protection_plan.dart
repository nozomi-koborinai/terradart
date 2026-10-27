// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_network_ddos_protection_plan.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_ddos_protection_plan`.
const Set<String> _azurermNetworkDdosProtectionPlanSensitive = <String>{};

/// Factory wrapper for `azurerm_network_ddos_protection_plan`.
final class DataAzurermNetworkDdosProtectionPlan extends Data {
  static const String tfType = 'azurerm_network_ddos_protection_plan';

  DataAzurermNetworkDdosProtectionPlan(
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
  Set<String> get sensitiveFields => _azurermNetworkDdosProtectionPlanSensitive;

  /// A reference to the `azurerm_network_ddos_protection_plan` this data source reads, for
  /// arguments typed `RefTo<AzurermNetworkDdosProtectionPlan>`.
  RefTo<AzurermNetworkDdosProtectionPlan> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_ids` attribute.
  TfRef<List<String>> get virtualNetworkIds =>
      TfRef.attribute<List<String>>(this, 'virtual_network_ids');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
