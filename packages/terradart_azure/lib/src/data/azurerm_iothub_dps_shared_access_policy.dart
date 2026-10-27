// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iothub/azurerm_iothub_dps_shared_access_policy.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_dps_shared_access_policy`.
const Set<String> _azurermIothubDpsSharedAccessPolicySensitive = <String>{
  'primary_connection_string',
  'primary_key',
  'secondary_connection_string',
  'secondary_key',
};

/// Factory wrapper for `azurerm_iothub_dps_shared_access_policy`.
final class DataAzurermIothubDpsSharedAccessPolicy extends Data {
  static const String tfType = 'azurerm_iothub_dps_shared_access_policy';

  DataAzurermIothubDpsSharedAccessPolicy(
    super.localName, {
    required TfArg<String> iothubDpsName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iothub_dps_name': iothubDpsName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermIothubDpsSharedAccessPolicySensitive;

  /// A reference to the `azurerm_iothub_dps_shared_access_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermIothubDpsSharedAccessPolicy>`.
  RefTo<AzurermIothubDpsSharedAccessPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `iothub_dps_name` attribute.
  TfRef<String> get iothubDpsName =>
      TfRef.attribute<String>(this, 'iothub_dps_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
