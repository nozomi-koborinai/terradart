// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../logic/azurerm_logic_app_standard.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_standard`.
const Set<String> _azurermLogicAppStandardSensitive = <String>{
  'storage_account_access_key',
};

/// Factory wrapper for `azurerm_logic_app_standard`.
final class DataAzurermLogicAppStandard extends Data {
  static const String tfType = 'azurerm_logic_app_standard';

  DataAzurermLogicAppStandard(
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
  Set<String> get sensitiveFields => _azurermLogicAppStandardSensitive;

  /// A reference to the `azurerm_logic_app_standard` this data source reads, for
  /// arguments typed `RefTo<AzurermLogicAppStandard>`.
  RefTo<AzurermLogicAppStandard> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_plan_id` attribute.
  TfRef<String> get appServicePlanId =>
      TfRef.attribute<String>(this, 'app_service_plan_id');

  /// Reference to `app_settings` attribute.
  TfRef<Map<String, String>> get appSettings =>
      TfRef.attribute<Map<String, String>>(this, 'app_settings');

  /// Reference to `bundle_version` attribute.
  TfRef<String> get bundleVersion =>
      TfRef.attribute<String>(this, 'bundle_version');

  /// Reference to `client_affinity_enabled` attribute.
  TfRef<bool> get clientAffinityEnabled =>
      TfRef.attribute<bool>(this, 'client_affinity_enabled');

  /// Reference to `client_certificate_mode` attribute.
  TfRef<String> get clientCertificateMode =>
      TfRef.attribute<String>(this, 'client_certificate_mode');

  /// Reference to `connection_string` attribute.
  TfRef<List<Map<String, Object?>>> get connectionString =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connection_string');

  /// Reference to `custom_domain_verification_id` attribute.
  TfRef<String> get customDomainVerificationId =>
      TfRef.attribute<String>(this, 'custom_domain_verification_id');

  /// Reference to `default_hostname` attribute.
  TfRef<String> get defaultHostname =>
      TfRef.attribute<String>(this, 'default_hostname');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `ftp_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get ftpPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'ftp_publish_basic_authentication_enabled');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `outbound_ip_addresses` attribute.
  TfRef<String> get outboundIpAddresses =>
      TfRef.attribute<String>(this, 'outbound_ip_addresses');

  /// Reference to `possible_outbound_ip_addresses` attribute.
  TfRef<String> get possibleOutboundIpAddresses =>
      TfRef.attribute<String>(this, 'possible_outbound_ip_addresses');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `scm_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get scmPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'scm_publish_basic_authentication_enabled');

  /// Reference to `site_config` attribute.
  TfRef<List<Map<String, Object?>>> get siteConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'site_config');

  /// Reference to `site_credential` attribute.
  TfRef<List<Map<String, Object?>>> get siteCredential =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'site_credential');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_account_name` attribute.
  TfRef<String> get storageAccountName =>
      TfRef.attribute<String>(this, 'storage_account_name');

  /// Reference to `storage_account_share_name` attribute.
  TfRef<String> get storageAccountShareName =>
      TfRef.attribute<String>(this, 'storage_account_share_name');

  /// Reference to `storage_key_vault_secret_id` attribute.
  TfRef<String> get storageKeyVaultSecretId =>
      TfRef.attribute<String>(this, 'storage_key_vault_secret_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `use_extension_bundle` attribute.
  TfRef<bool> get useExtensionBundle =>
      TfRef.attribute<bool>(this, 'use_extension_bundle');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `virtual_network_subnet_id` attribute.
  TfRef<String> get virtualNetworkSubnetId =>
      TfRef.attribute<String>(this, 'virtual_network_subnet_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
