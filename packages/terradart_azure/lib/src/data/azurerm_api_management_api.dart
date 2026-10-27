// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management_api.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_api`.
const Set<String> _azurermApiManagementApiSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management_api`.
final class DataAzurermApiManagementApi extends Data {
  static const String tfType = 'azurerm_api_management_api';

  DataAzurermApiManagementApi(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> revision,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'revision': revision,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementApiSensitive;

  /// A reference to the `azurerm_api_management_api` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagementApi>`.
  RefTo<AzurermApiManagementApi> get ref =>
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

  /// Reference to `is_current` attribute.
  TfRef<bool> get isCurrent => TfRef.attribute<bool>(this, 'is_current');

  /// Reference to `is_online` attribute.
  TfRef<bool> get isOnline => TfRef.attribute<bool>(this, 'is_online');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `service_url` attribute.
  TfRef<String> get serviceUrl => TfRef.attribute<String>(this, 'service_url');

  /// Reference to `soap_pass_through` attribute.
  TfRef<bool> get soapPassThrough =>
      TfRef.attribute<bool>(this, 'soap_pass_through');

  /// Reference to `subscription_key_parameter_names` attribute.
  TfRef<List<Map<String, Object?>>> get subscriptionKeyParameterNames =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'subscription_key_parameter_names',
      );

  /// Reference to `subscription_required` attribute.
  TfRef<bool> get subscriptionRequired =>
      TfRef.attribute<bool>(this, 'subscription_required');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `version_set_id` attribute.
  TfRef<String> get versionSetId =>
      TfRef.attribute<String>(this, 'version_set_id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `revision` attribute.
  TfRef<String> get revision => TfRef.attribute<String>(this, 'revision');
}
