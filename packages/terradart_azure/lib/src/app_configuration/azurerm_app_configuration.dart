// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_configuration`.
const Set<String> _azurermAppConfigurationSensitive = <String>{};

/// Typed helper for the `encryption` block of
/// `azurerm_app_configuration` (derived from provider schema).
@immutable
final class AppConfigurationEncryption {
  const AppConfigurationEncryption({
    this.identityClientId,
    this.keyVaultKeyIdentifier,
  });

  final TfArg<String>? identityClientId;

  final TfArg<String>? keyVaultKeyIdentifier;

  @internal
  Map<String, Object?> encode() => {
    'identity_client_id': ?identityClientId?.toTfJson(),
    'key_vault_key_identifier': ?keyVaultKeyIdentifier?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_app_configuration` (derived from provider schema).
@immutable
final class AppConfigurationIdentity {
  const AppConfigurationIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `replica` block of
/// `azurerm_app_configuration` (derived from provider schema).
@immutable
final class AppConfigurationReplica {
  const AppConfigurationReplica({required this.location, required this.name});

  final TfArg<String> location;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_app_configuration`.
final class AzurermAppConfiguration extends Resource {
  static const String tfType = 'azurerm_app_configuration';

  AzurermAppConfiguration(
    super.localName, {
    TfArg<String>? dataPlaneProxyAuthenticationMode,
    TfArg<bool>? dataPlaneProxyPrivateLinkDelegationEnabled,
    TfArg<bool>? localAuthEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? publicNetworkAccess,
    TfArg<bool>? purgeProtectionEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sku,
    TfArg<num>? softDeleteRetentionDays,
    TfArg<Map<String, String>>? tags,
    AppConfigurationEncryption? encryption,
    AppConfigurationIdentity? identity,
    List<AppConfigurationReplica>? replica,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_plane_proxy_authentication_mode':
               ?dataPlaneProxyAuthenticationMode,
           'data_plane_proxy_private_link_delegation_enabled':
               ?dataPlaneProxyPrivateLinkDelegationEnabled,
           'local_auth_enabled': ?localAuthEnabled,
           'location': location,
           'name': name,
           'public_network_access': ?publicNetworkAccess,
           'purge_protection_enabled': ?purgeProtectionEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'soft_delete_retention_days': ?softDeleteRetentionDays,
           'tags': ?tags,
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (replica != null)
             'replica': TfArg.literal([for (final e in replica) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppConfiguration>`.
  RefTo<AzurermAppConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `primary_read_key` attribute.
  TfRef<List<Map<String, Object?>>> get primaryReadKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'primary_read_key');

  /// Reference to `primary_write_key` attribute.
  TfRef<List<Map<String, Object?>>> get primaryWriteKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'primary_write_key');

  /// Reference to `secondary_read_key` attribute.
  TfRef<List<Map<String, Object?>>> get secondaryReadKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secondary_read_key');

  /// Reference to `secondary_write_key` attribute.
  TfRef<List<Map<String, Object?>>> get secondaryWriteKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secondary_write_key');

  /// Reference to `data_plane_proxy_authentication_mode` attribute.
  TfRef<String> get dataPlaneProxyAuthenticationMode =>
      TfRef.attribute<String>(this, 'data_plane_proxy_authentication_mode');

  /// Reference to `data_plane_proxy_private_link_delegation_enabled` attribute.
  TfRef<bool> get dataPlaneProxyPrivateLinkDelegationEnabled =>
      TfRef.attribute<bool>(
        this,
        'data_plane_proxy_private_link_delegation_enabled',
      );

  /// Reference to `local_auth_enabled` attribute.
  TfRef<bool> get localAuthEnabled =>
      TfRef.attribute<bool>(this, 'local_auth_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `purge_protection_enabled` attribute.
  TfRef<bool> get purgeProtectionEnabled =>
      TfRef.attribute<bool>(this, 'purge_protection_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `soft_delete_retention_days` attribute.
  TfRef<num> get softDeleteRetentionDays =>
      TfRef.attribute<num>(this, 'soft_delete_retention_days');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
