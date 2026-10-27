// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_volume.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_volume`.
const Set<String> _azurermNetappVolumeSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_volume`.
final class DataAzurermNetappVolume extends Data {
  static const String tfType = 'azurerm_netapp_volume';

  DataAzurermNetappVolume(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required TfArg<String> poolName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? securityStyle,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'pool_name': poolName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'security_style': ?securityStyle,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappVolumeSensitive;

  /// A reference to the `azurerm_netapp_volume` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappVolume>`.
  RefTo<AzurermNetappVolume> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_grow_capacity_pool_for_short_term_clone_split` attribute.
  TfRef<String> get acceptGrowCapacityPoolForShortTermCloneSplit =>
      TfRef.attribute<String>(
        this,
        'accept_grow_capacity_pool_for_short_term_clone_split',
      );

  /// Reference to `breakthrough_mode_enabled` attribute.
  TfRef<bool> get breakthroughModeEnabled =>
      TfRef.attribute<bool>(this, 'breakthrough_mode_enabled');

  /// Reference to `data_protection_advanced_ransomware` attribute.
  TfRef<List<Map<String, Object?>>> get dataProtectionAdvancedRansomware =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_protection_advanced_ransomware',
      );

  /// Reference to `data_protection_backup_policy` attribute.
  TfRef<List<Map<String, Object?>>> get dataProtectionBackupPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_protection_backup_policy',
      );

  /// Reference to `data_protection_replication` attribute.
  TfRef<List<Map<String, Object?>>> get dataProtectionReplication =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_protection_replication',
      );

  /// Reference to `encryption_key_source` attribute.
  TfRef<String> get encryptionKeySource =>
      TfRef.attribute<String>(this, 'encryption_key_source');

  /// Reference to `key_vault_private_endpoint_id` attribute.
  TfRef<String> get keyVaultPrivateEndpointId =>
      TfRef.attribute<String>(this, 'key_vault_private_endpoint_id');

  /// Reference to `large_volume_enabled` attribute.
  TfRef<bool> get largeVolumeEnabled =>
      TfRef.attribute<bool>(this, 'large_volume_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mount_target` attribute.
  TfRef<List<Map<String, Object?>>> get mountTarget =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mount_target');

  /// Reference to `network_features` attribute.
  TfRef<String> get networkFeatures =>
      TfRef.attribute<String>(this, 'network_features');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `service_level` attribute.
  TfRef<String> get serviceLevel =>
      TfRef.attribute<String>(this, 'service_level');

  /// Reference to `smb_access_based_enumeration_enabled` attribute.
  TfRef<bool> get smbAccessBasedEnumerationEnabled =>
      TfRef.attribute<bool>(this, 'smb_access_based_enumeration_enabled');

  /// Reference to `smb_non_browsable_enabled` attribute.
  TfRef<bool> get smbNonBrowsableEnabled =>
      TfRef.attribute<bool>(this, 'smb_non_browsable_enabled');

  /// Reference to `storage_quota_in_gb` attribute.
  TfRef<num> get storageQuotaInGb =>
      TfRef.attribute<num>(this, 'storage_quota_in_gb');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `volume_path` attribute.
  TfRef<String> get volumePath => TfRef.attribute<String>(this, 'volume_path');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `pool_name` attribute.
  TfRef<String> get poolName => TfRef.attribute<String>(this, 'pool_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `security_style` attribute.
  TfRef<String> get securityStyle =>
      TfRef.attribute<String>(this, 'security_style');
}
