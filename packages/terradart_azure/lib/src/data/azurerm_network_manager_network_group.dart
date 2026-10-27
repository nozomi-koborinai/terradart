// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_network_manager_network_group.dart';

/// Sensitive field paths for `azurerm_network_manager_network_group`.
const Set<String> _azurermNetworkManagerNetworkGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_network_manager_network_group`.
final class DataAzurermNetworkManagerNetworkGroup extends Data {
  static const String tfType = 'azurerm_network_manager_network_group';

  DataAzurermNetworkManagerNetworkGroup(
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
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerNetworkGroupSensitive;

  /// A reference to the `azurerm_network_manager_network_group` this data source reads, for
  /// arguments typed `RefTo<AzurermNetworkManagerNetworkGroup>`.
  RefTo<AzurermNetworkManagerNetworkGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `member_type` attribute.
  TfRef<String> get memberType => TfRef.attribute<String>(this, 'member_type');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');
}
