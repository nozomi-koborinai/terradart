// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_management/azurerm_api_management.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management`.
const Set<String> _azurermApiManagementSensitive = <String>{};

/// Factory wrapper for `azurerm_api_management`.
final class DataAzurermApiManagement extends Data {
  static const String tfType = 'azurerm_api_management';

  DataAzurermApiManagement(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementSensitive;

  /// A reference to the `azurerm_api_management` this data source reads, for
  /// arguments typed `RefTo<AzurermApiManagement>`.
  RefTo<AzurermApiManagement> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_location` attribute.
  TfRef<List<Map<String, Object?>>> get additionalLocation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'additional_location');

  /// Reference to `developer_portal_url` attribute.
  TfRef<String> get developerPortalUrl =>
      TfRef.attribute<String>(this, 'developer_portal_url');

  /// Reference to `gateway_regional_url` attribute.
  TfRef<String> get gatewayRegionalUrl =>
      TfRef.attribute<String>(this, 'gateway_regional_url');

  /// Reference to `gateway_url` attribute.
  TfRef<String> get gatewayUrl => TfRef.attribute<String>(this, 'gateway_url');

  /// Reference to `hostname_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get hostnameConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'hostname_configuration',
      );

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `management_api_url` attribute.
  TfRef<String> get managementApiUrl =>
      TfRef.attribute<String>(this, 'management_api_url');

  /// Reference to `notification_sender_email` attribute.
  TfRef<String> get notificationSenderEmail =>
      TfRef.attribute<String>(this, 'notification_sender_email');

  /// Reference to `portal_url` attribute.
  TfRef<String> get portalUrl => TfRef.attribute<String>(this, 'portal_url');

  /// Reference to `private_ip_addresses` attribute.
  TfRef<List<String>> get privateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'private_ip_addresses');

  /// Reference to `public_ip_address_id` attribute.
  TfRef<String> get publicIpAddressId =>
      TfRef.attribute<String>(this, 'public_ip_address_id');

  /// Reference to `public_ip_addresses` attribute.
  TfRef<List<String>> get publicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'public_ip_addresses');

  /// Reference to `publisher_email` attribute.
  TfRef<String> get publisherEmail =>
      TfRef.attribute<String>(this, 'publisher_email');

  /// Reference to `publisher_name` attribute.
  TfRef<String> get publisherName =>
      TfRef.attribute<String>(this, 'publisher_name');

  /// Reference to `scm_url` attribute.
  TfRef<String> get scmUrl => TfRef.attribute<String>(this, 'scm_url');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tenant_access` attribute.
  TfRef<List<Map<String, Object?>>> get tenantAccess =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tenant_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
