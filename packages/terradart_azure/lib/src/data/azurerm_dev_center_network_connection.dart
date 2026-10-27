// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_network_connection.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_center_network_connection`.
const Set<String> _azurermDevCenterNetworkConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_network_connection`.
final class DataAzurermDevCenterNetworkConnection extends Data {
  static const String tfType = 'azurerm_dev_center_network_connection';

  DataAzurermDevCenterNetworkConnection(
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
      _azurermDevCenterNetworkConnectionSensitive;

  /// A reference to the `azurerm_dev_center_network_connection` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterNetworkConnection>`.
  RefTo<AzurermDevCenterNetworkConnection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_join_type` attribute.
  TfRef<String> get domainJoinType =>
      TfRef.attribute<String>(this, 'domain_join_type');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `domain_username` attribute.
  TfRef<String> get domainUsername =>
      TfRef.attribute<String>(this, 'domain_username');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization_unit` attribute.
  TfRef<String> get organizationUnit =>
      TfRef.attribute<String>(this, 'organization_unit');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
