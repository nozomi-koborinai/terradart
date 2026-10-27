// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_network_manager_ipam_pool.dart';

/// Sensitive field paths for `azurerm_network_manager_ipam_pool`.
const Set<String> _azurermNetworkManagerIpamPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_network_manager_ipam_pool`.
final class DataAzurermNetworkManagerIpamPool extends Data {
  static const String tfType = 'azurerm_network_manager_ipam_pool';

  DataAzurermNetworkManagerIpamPool(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'network_manager_id': networkManagerId},
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkManagerIpamPoolSensitive;

  /// A reference to the `azurerm_network_manager_ipam_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermNetworkManagerIpamPool>`.
  RefTo<AzurermNetworkManagerIpamPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefixes` attribute.
  TfRef<List<String>> get addressPrefixes =>
      TfRef.attribute<List<String>>(this, 'address_prefixes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent_pool_name` attribute.
  TfRef<String> get parentPoolName =>
      TfRef.attribute<String>(this, 'parent_pool_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');
}
