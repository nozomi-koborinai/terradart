// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../app_service/azurerm_linux_web_app.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_linux_web_app`.
const Set<String> _azurermLinuxWebAppSensitive = <String>{
  'custom_domain_verification_id',
  'site_credential',
};

/// Factory wrapper for `azurerm_linux_web_app`.
final class DataAzurermLinuxWebApp extends Data {
  static const String tfType = 'azurerm_linux_web_app';

  DataAzurermLinuxWebApp(
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
  Set<String> get sensitiveFields => _azurermLinuxWebAppSensitive;

  /// A reference to the `azurerm_linux_web_app` this data source reads, for
  /// arguments typed `RefTo<AzurermLinuxWebApp>`.
  RefTo<AzurermLinuxWebApp> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_metadata` attribute.
  TfRef<Map<String, String>> get appMetadata =>
      TfRef.attribute<Map<String, String>>(this, 'app_metadata');

  /// Reference to `app_settings` attribute.
  TfRef<Map<String, String>> get appSettings =>
      TfRef.attribute<Map<String, String>>(this, 'app_settings');

  /// Reference to `auth_settings` attribute.
  TfRef<List<Map<String, Object?>>> get authSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'auth_settings');

  /// Reference to `auth_settings_v2` attribute.
  TfRef<List<Map<String, Object?>>> get authSettingsV2 =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'auth_settings_v2');

  /// Reference to `availability` attribute.
  TfRef<String> get availability =>
      TfRef.attribute<String>(this, 'availability');

  /// Reference to `backup` attribute.
  TfRef<List<Map<String, Object?>>> get backup =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup');

  /// Reference to `client_affinity_enabled` attribute.
  TfRef<bool> get clientAffinityEnabled =>
      TfRef.attribute<bool>(this, 'client_affinity_enabled');

  /// Reference to `client_certificate_enabled` attribute.
  TfRef<bool> get clientCertificateEnabled =>
      TfRef.attribute<bool>(this, 'client_certificate_enabled');

  /// Reference to `client_certificate_exclusion_paths` attribute.
  TfRef<String> get clientCertificateExclusionPaths =>
      TfRef.attribute<String>(this, 'client_certificate_exclusion_paths');

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

  /// Reference to `hosting_environment_id` attribute.
  TfRef<String> get hostingEnvironmentId =>
      TfRef.attribute<String>(this, 'hosting_environment_id');

  /// Reference to `https_only` attribute.
  TfRef<bool> get httpsOnly => TfRef.attribute<bool>(this, 'https_only');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `key_vault_reference_identity_id` attribute.
  TfRef<String> get keyVaultReferenceIdentityId =>
      TfRef.attribute<String>(this, 'key_vault_reference_identity_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logs` attribute.
  TfRef<List<Map<String, Object?>>> get logs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logs');

  /// Reference to `outbound_ip_address_list` attribute.
  TfRef<List<String>> get outboundIpAddressList =>
      TfRef.attribute<List<String>>(this, 'outbound_ip_address_list');

  /// Reference to `outbound_ip_addresses` attribute.
  TfRef<String> get outboundIpAddresses =>
      TfRef.attribute<String>(this, 'outbound_ip_addresses');

  /// Reference to `possible_outbound_ip_address_list` attribute.
  TfRef<List<String>> get possibleOutboundIpAddressList =>
      TfRef.attribute<List<String>>(this, 'possible_outbound_ip_address_list');

  /// Reference to `possible_outbound_ip_addresses` attribute.
  TfRef<String> get possibleOutboundIpAddresses =>
      TfRef.attribute<String>(this, 'possible_outbound_ip_addresses');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `service_plan_id` attribute.
  TfRef<String> get servicePlanId =>
      TfRef.attribute<String>(this, 'service_plan_id');

  /// Reference to `site_config` attribute.
  TfRef<List<Map<String, Object?>>> get siteConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'site_config');

  /// Reference to `site_credential` attribute.
  TfRef<List<Map<String, Object?>>> get siteCredential =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'site_credential');

  /// Reference to `sticky_settings` attribute.
  TfRef<List<Map<String, Object?>>> get stickySettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sticky_settings');

  /// Reference to `storage_account` attribute.
  TfRef<List<Map<String, Object?>>> get storageAccount =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage_account');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `usage` attribute.
  TfRef<String> get usage => TfRef.attribute<String>(this, 'usage');

  /// Reference to `virtual_network_backup_restore_enabled` attribute.
  TfRef<bool> get virtualNetworkBackupRestoreEnabled =>
      TfRef.attribute<bool>(this, 'virtual_network_backup_restore_enabled');

  /// Reference to `virtual_network_image_pull_enabled` attribute.
  TfRef<bool> get virtualNetworkImagePullEnabled =>
      TfRef.attribute<bool>(this, 'virtual_network_image_pull_enabled');

  /// Reference to `virtual_network_subnet_id` attribute.
  TfRef<String> get virtualNetworkSubnetId =>
      TfRef.attribute<String>(this, 'virtual_network_subnet_id');

  /// Reference to `webdeploy_publish_basic_authentication_enabled` attribute.
  TfRef<bool> get webdeployPublishBasicAuthenticationEnabled =>
      TfRef.attribute<bool>(
        this,
        'webdeploy_publish_basic_authentication_enabled',
      );

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
