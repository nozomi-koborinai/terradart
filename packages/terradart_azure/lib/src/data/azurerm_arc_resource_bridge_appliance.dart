// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../arc/azurerm_arc_resource_bridge_appliance.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_arc_resource_bridge_appliance`.
const Set<String> _azurermArcResourceBridgeApplianceSensitive = <String>{};

/// Factory wrapper for `azurerm_arc_resource_bridge_appliance`.
final class DataAzurermArcResourceBridgeAppliance extends Data {
  static const String tfType = 'azurerm_arc_resource_bridge_appliance';

  DataAzurermArcResourceBridgeAppliance(
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
  Set<String> get sensitiveFields =>
      _azurermArcResourceBridgeApplianceSensitive;

  /// A reference to the `azurerm_arc_resource_bridge_appliance` this data source reads, for
  /// arguments typed `RefTo<AzurermArcResourceBridgeAppliance>`.
  RefTo<AzurermArcResourceBridgeAppliance> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `distro` attribute.
  TfRef<String> get distro => TfRef.attribute<String>(this, 'distro');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `infrastructure_provider` attribute.
  TfRef<String> get infrastructureProvider =>
      TfRef.attribute<String>(this, 'infrastructure_provider');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_key_base64` attribute.
  TfRef<String> get publicKeyBase64 =>
      TfRef.attribute<String>(this, 'public_key_base64');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
