// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_network_manager.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_manager`.
const Set<String> _azurermNetworkManagerSensitive = <String>{};

/// Factory wrapper for `azurerm_network_manager`.
final class DataAzurermNetworkManager extends Data {
  static const String tfType = 'azurerm_network_manager';

  DataAzurermNetworkManager(
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
  Set<String> get sensitiveFields => _azurermNetworkManagerSensitive;

  /// A reference to the `azurerm_network_manager` this data source reads, for
  /// arguments typed `RefTo<AzurermNetworkManager>`.
  RefTo<AzurermNetworkManager> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cross_tenant_scopes` attribute.
  TfRef<List<Map<String, Object?>>> get crossTenantScopes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cross_tenant_scopes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `scope` attribute.
  TfRef<List<Map<String, Object?>>> get scope =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scope');

  /// Reference to `scope_accesses` attribute.
  TfRef<List<String>> get scopeAccesses =>
      TfRef.attribute<List<String>>(this, 'scope_accesses');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
