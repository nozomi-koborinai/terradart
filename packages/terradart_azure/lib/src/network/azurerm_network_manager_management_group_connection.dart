// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_management_group_connection`.
const Set<String> _azurermNetworkManagerManagementGroupConnectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_manager_management_group_connection`.
final class AzurermNetworkManagerManagementGroupConnection extends Resource {
  static const String tfType =
      'azurerm_network_manager_management_group_connection';

  AzurermNetworkManagerManagementGroupConnection(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> managementGroupId,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'management_group_id': managementGroupId,
           'name': name,
           'network_manager_id': networkManagerId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerManagementGroupConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerManagementGroupConnection>`.
  RefTo<AzurermNetworkManagerManagementGroupConnection> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_state` attribute.
  TfRef<String> get connectionState =>
      TfRef.attribute<String>(this, 'connection_state');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');
}
