// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mssql/azurerm_mssql_managed_instance.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_managed_instance`.
const Set<String> _azurermMssqlManagedInstanceSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_managed_instance`.
final class DataAzurermMssqlManagedInstance extends Data {
  static const String tfType = 'azurerm_mssql_managed_instance';

  DataAzurermMssqlManagedInstance(
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
  Set<String> get sensitiveFields => _azurermMssqlManagedInstanceSensitive;

  /// A reference to the `azurerm_mssql_managed_instance` this data source reads, for
  /// arguments typed `RefTo<AzurermMssqlManagedInstance>`.
  RefTo<AzurermMssqlManagedInstance> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_login` attribute.
  TfRef<String> get administratorLogin =>
      TfRef.attribute<String>(this, 'administrator_login');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `customer_managed_key_id` attribute.
  TfRef<String> get customerManagedKeyId =>
      TfRef.attribute<String>(this, 'customer_managed_key_id');

  /// Reference to `dns_zone` attribute.
  TfRef<String> get dnsZone => TfRef.attribute<String>(this, 'dns_zone');

  /// Reference to `dns_zone_partner_id` attribute.
  TfRef<String> get dnsZonePartnerId =>
      TfRef.attribute<String>(this, 'dns_zone_partner_id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `general_purpose_v2_enabled` attribute.
  TfRef<bool> get generalPurposeV2Enabled =>
      TfRef.attribute<bool>(this, 'general_purpose_v2_enabled');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimum_tls_version` attribute.
  TfRef<String> get minimumTlsVersion =>
      TfRef.attribute<String>(this, 'minimum_tls_version');

  /// Reference to `proxy_override` attribute.
  TfRef<String> get proxyOverride =>
      TfRef.attribute<String>(this, 'proxy_override');

  /// Reference to `public_data_endpoint_enabled` attribute.
  TfRef<bool> get publicDataEndpointEnabled =>
      TfRef.attribute<bool>(this, 'public_data_endpoint_enabled');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_account_type` attribute.
  TfRef<String> get storageAccountType =>
      TfRef.attribute<String>(this, 'storage_account_type');

  /// Reference to `storage_size_in_gb` attribute.
  TfRef<num> get storageSizeInGb =>
      TfRef.attribute<num>(this, 'storage_size_in_gb');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timezone_id` attribute.
  TfRef<String> get timezoneId => TfRef.attribute<String>(this, 'timezone_id');

  /// Reference to `vcores` attribute.
  TfRef<num> get vcores => TfRef.attribute<num>(this, 'vcores');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
