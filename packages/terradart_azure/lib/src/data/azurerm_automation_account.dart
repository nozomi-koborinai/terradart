// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../automation/azurerm_automation_account.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_account`.
const Set<String> _azurermAutomationAccountSensitive = <String>{
  'dsc_primary_access_key',
  'dsc_secondary_access_key',
};

/// Factory wrapper for `azurerm_automation_account`.
final class DataAzurermAutomationAccount extends Data {
  static const String tfType = 'azurerm_automation_account';

  DataAzurermAutomationAccount(
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
  Set<String> get sensitiveFields => _azurermAutomationAccountSensitive;

  /// A reference to the `azurerm_automation_account` this data source reads, for
  /// arguments typed `RefTo<AzurermAutomationAccount>`.
  RefTo<AzurermAutomationAccount> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dsc_primary_access_key` attribute.
  TfRef<String> get dscPrimaryAccessKey =>
      TfRef.attribute<String>(this, 'dsc_primary_access_key');

  /// Reference to `dsc_secondary_access_key` attribute.
  TfRef<String> get dscSecondaryAccessKey =>
      TfRef.attribute<String>(this, 'dsc_secondary_access_key');

  /// Reference to `dsc_server_endpoint` attribute.
  TfRef<String> get dscServerEndpoint =>
      TfRef.attribute<String>(this, 'dsc_server_endpoint');

  /// Reference to `encryption` attribute.
  TfRef<List<Map<String, Object?>>> get encryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `hybrid_service_url` attribute.
  TfRef<String> get hybridServiceUrl =>
      TfRef.attribute<String>(this, 'hybrid_service_url');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `private_endpoint_connection` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpointConnection =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_endpoint_connection',
      );

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
