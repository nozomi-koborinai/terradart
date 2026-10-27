// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../app_configuration/azurerm_app_configuration.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_configuration`.
const Set<String> _azurermAppConfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_app_configuration`.
final class DataAzurermAppConfiguration extends Data {
  static const String tfType = 'azurerm_app_configuration';

  DataAzurermAppConfiguration(
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
  Set<String> get sensitiveFields => _azurermAppConfigurationSensitive;

  /// A reference to the `azurerm_app_configuration` this data source reads, for
  /// arguments typed `RefTo<AzurermAppConfiguration>`.
  RefTo<AzurermAppConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_plane_proxy_authentication_mode` attribute.
  TfRef<String> get dataPlaneProxyAuthenticationMode =>
      TfRef.attribute<String>(this, 'data_plane_proxy_authentication_mode');

  /// Reference to `data_plane_proxy_private_link_delegation_enabled` attribute.
  TfRef<bool> get dataPlaneProxyPrivateLinkDelegationEnabled =>
      TfRef.attribute<bool>(
        this,
        'data_plane_proxy_private_link_delegation_enabled',
      );

  /// Reference to `encryption` attribute.
  TfRef<List<Map<String, Object?>>> get encryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_read_key` attribute.
  TfRef<List<Map<String, Object?>>> get primaryReadKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'primary_read_key');

  /// Reference to `primary_write_key` attribute.
  TfRef<List<Map<String, Object?>>> get primaryWriteKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'primary_write_key');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `purge_protection_enabled` attribute.
  TfRef<bool> get purgeProtectionEnabled =>
      TfRef.attribute<bool>(this, 'purge_protection_enabled');

  /// Reference to `replica` attribute.
  TfRef<List<Map<String, Object?>>> get replica =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'replica');

  /// Reference to `secondary_read_key` attribute.
  TfRef<List<Map<String, Object?>>> get secondaryReadKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secondary_read_key');

  /// Reference to `secondary_write_key` attribute.
  TfRef<List<Map<String, Object?>>> get secondaryWriteKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secondary_write_key');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `soft_delete_retention_days` attribute.
  TfRef<num> get softDeleteRetentionDays =>
      TfRef.attribute<num>(this, 'soft_delete_retention_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
