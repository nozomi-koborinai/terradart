// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_registry/azurerm_container_registry.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry`.
const Set<String> _azurermContainerRegistrySensitive = <String>{
  'admin_password',
};

/// Factory wrapper for `azurerm_container_registry`.
final class DataAzurermContainerRegistry extends Data {
  static const String tfType = 'azurerm_container_registry';

  DataAzurermContainerRegistry(
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
  Set<String> get sensitiveFields => _azurermContainerRegistrySensitive;

  /// A reference to the `azurerm_container_registry` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerRegistry>`.
  RefTo<AzurermContainerRegistry> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_enabled` attribute.
  TfRef<bool> get adminEnabled => TfRef.attribute<bool>(this, 'admin_enabled');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `admin_username` attribute.
  TfRef<String> get adminUsername =>
      TfRef.attribute<String>(this, 'admin_username');

  /// Reference to `data_endpoint_enabled` attribute.
  TfRef<bool> get dataEndpointEnabled =>
      TfRef.attribute<bool>(this, 'data_endpoint_enabled');

  /// Reference to `data_endpoint_host_names` attribute.
  TfRef<List<String>> get dataEndpointHostNames =>
      TfRef.attribute<List<String>>(this, 'data_endpoint_host_names');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `login_server` attribute.
  TfRef<String> get loginServer =>
      TfRef.attribute<String>(this, 'login_server');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
