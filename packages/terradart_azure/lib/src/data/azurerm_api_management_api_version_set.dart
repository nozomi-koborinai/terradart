// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management_api_version_set.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_api_version_set`.
const Set<String> _azurermApiManagementApiVersionSetSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_api_version_set`.
final class DataAzurermApiManagementApiVersionSet extends Data {
  static const String tfType = 'azurerm_api_management_api_version_set';

  DataAzurermApiManagementApiVersionSet(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementApiVersionSetSensitive;

  /// A reference to the `azurerm_api_management_api_version_set` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagementApiVersionSet>`.
  RefTo<AzurermApiManagementApiVersionSet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `version_header_name` attribute.
  TfRef<String> get versionHeaderName =>
      TfRef.attribute<String>(this, 'version_header_name');

  /// Reference to `version_query_name` attribute.
  TfRef<String> get versionQueryName =>
      TfRef.attribute<String>(this, 'version_query_name');

  /// Reference to `versioning_scheme` attribute.
  TfRef<String> get versioningScheme =>
      TfRef.attribute<String>(this, 'versioning_scheme');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
