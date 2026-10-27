// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_dedicated_host.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dedicated_host`.
const Set<String> _azurermDedicatedHostSensitive = <String>{};

/// Factory wrapper for `azurerm_dedicated_host`.
final class DataAzurermDedicatedHost extends Data {
  static const String tfType = 'azurerm_dedicated_host';

  DataAzurermDedicatedHost(
    super.localName, {
    required TfArg<String> dedicatedHostGroupName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dedicated_host_group_name': dedicatedHostGroupName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDedicatedHostSensitive;

  /// A reference to the `azurerm_dedicated_host` this data source reads, for
  /// arguments typed `RefTo<AzurermDedicatedHost>`.
  RefTo<AzurermDedicatedHost> get ref =>
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

  /// Reference to `dedicated_host_group_name` attribute.
  TfRef<String> get dedicatedHostGroupName =>
      TfRef.attribute<String>(this, 'dedicated_host_group_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
