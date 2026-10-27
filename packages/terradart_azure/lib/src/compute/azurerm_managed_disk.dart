// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_managed_disk`.
const Set<String> _azurermManagedDiskSensitive = <String>{};

/// Typed helper for the `encryption_settings` block of
/// `azurerm_managed_disk` (derived from provider schema).
@immutable
final class ManagedDiskEncryptionSettings {
  const ManagedDiskEncryptionSettings({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  final ManagedDiskEncryptionKey diskEncryptionKey;

  final ManagedDiskKeyEncryptionKey? keyEncryptionKey;

  @internal
  Map<String, Object?> encode() => {
    'disk_encryption_key': diskEncryptionKey.encode(),
    'key_encryption_key': ?keyEncryptionKey?.encode(),
  };
}

/// Typed helper for the `encryption_settings.disk_encryption_key` block of
/// `azurerm_managed_disk` (derived from provider schema).
@immutable
final class ManagedDiskEncryptionKey {
  const ManagedDiskEncryptionKey({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  final TfArg<String> secretUrl;

  final TfArg<String> sourceVaultId;

  @internal
  Map<String, Object?> encode() => {
    'secret_url': secretUrl.toTfJson(),
    'source_vault_id': sourceVaultId.toTfJson(),
  };
}

/// Typed helper for the `encryption_settings.key_encryption_key` block of
/// `azurerm_managed_disk` (derived from provider schema).
@immutable
final class ManagedDiskKeyEncryptionKey {
  const ManagedDiskKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  final TfArg<String> keyUrl;

  final TfArg<String> sourceVaultId;

  @internal
  Map<String, Object?> encode() => {
    'key_url': keyUrl.toTfJson(),
    'source_vault_id': sourceVaultId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_managed_disk`.
final class AzurermManagedDisk extends Resource {
  static const String tfType = 'azurerm_managed_disk';

  AzurermManagedDisk(
    super.localName, {
    required TfArg<String> createOption,
    TfArg<String>? diskAccessId,
    TfArg<String>? diskEncryptionSetId,
    TfArg<num>? diskIopsReadOnly,
    TfArg<num>? diskIopsReadWrite,
    TfArg<num>? diskMbpsReadOnly,
    TfArg<num>? diskMbpsReadWrite,
    TfArg<num>? diskSizeGb,
    TfArg<String>? edgeZone,
    TfArg<String>? galleryImageReferenceId,
    TfArg<String>? hyperVGeneration,
    TfArg<String>? imageReferenceId,
    required TfArg<String> location,
    TfArg<num>? logicalSectorSize,
    TfArg<num>? maxShares,
    required TfArg<String> name,
    TfArg<String>? networkAccessPolicy,
    TfArg<bool>? onDemandBurstingEnabled,
    TfArg<bool>? optimizedFrequentAttachEnabled,
    TfArg<String>? osType,
    TfArg<bool>? performancePlusEnabled,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? secureVmDiskEncryptionSetId,
    TfArg<String>? securityType,
    TfArg<String>? sourceResourceId,
    TfArg<String>? sourceUri,
    RefTo<AzurermStorageAccount>? storageAccountId,
    required TfArg<String> storageAccountType,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tier,
    TfArg<bool>? trustedLaunchEnabled,
    TfArg<num>? uploadSizeBytes,
    TfArg<String>? zone,
    ManagedDiskEncryptionSettings? encryptionSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_option': createOption,
           'disk_access_id': ?diskAccessId,
           'disk_encryption_set_id': ?diskEncryptionSetId,
           'disk_iops_read_only': ?diskIopsReadOnly,
           'disk_iops_read_write': ?diskIopsReadWrite,
           'disk_mbps_read_only': ?diskMbpsReadOnly,
           'disk_mbps_read_write': ?diskMbpsReadWrite,
           'disk_size_gb': ?diskSizeGb,
           'edge_zone': ?edgeZone,
           'gallery_image_reference_id': ?galleryImageReferenceId,
           'hyper_v_generation': ?hyperVGeneration,
           'image_reference_id': ?imageReferenceId,
           'location': location,
           'logical_sector_size': ?logicalSectorSize,
           'max_shares': ?maxShares,
           'name': name,
           'network_access_policy': ?networkAccessPolicy,
           'on_demand_bursting_enabled': ?onDemandBurstingEnabled,
           'optimized_frequent_attach_enabled': ?optimizedFrequentAttachEnabled,
           'os_type': ?osType,
           'performance_plus_enabled': ?performancePlusEnabled,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'secure_vm_disk_encryption_set_id': ?secureVmDiskEncryptionSetId,
           'security_type': ?securityType,
           'source_resource_id': ?sourceResourceId,
           'source_uri': ?sourceUri,
           'storage_account_id': ?storageAccountId?.encodeAs('id'),
           'storage_account_type': storageAccountType,
           'tags': ?tags,
           'tier': ?tier,
           'trusted_launch_enabled': ?trustedLaunchEnabled,
           'upload_size_bytes': ?uploadSizeBytes,
           'zone': ?zone,
           if (encryptionSettings != null)
             'encryption_settings': TfArg.literal(encryptionSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagedDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedDisk>`.
  RefTo<AzurermManagedDisk> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_option` attribute.
  TfRef<String> get createOption =>
      TfRef.attribute<String>(this, 'create_option');

  /// Reference to `disk_access_id` attribute.
  TfRef<String> get diskAccessId =>
      TfRef.attribute<String>(this, 'disk_access_id');

  /// Reference to `disk_encryption_set_id` attribute.
  TfRef<String> get diskEncryptionSetId =>
      TfRef.attribute<String>(this, 'disk_encryption_set_id');

  /// Reference to `disk_iops_read_only` attribute.
  TfRef<num> get diskIopsReadOnly =>
      TfRef.attribute<num>(this, 'disk_iops_read_only');

  /// Reference to `disk_iops_read_write` attribute.
  TfRef<num> get diskIopsReadWrite =>
      TfRef.attribute<num>(this, 'disk_iops_read_write');

  /// Reference to `disk_mbps_read_only` attribute.
  TfRef<num> get diskMbpsReadOnly =>
      TfRef.attribute<num>(this, 'disk_mbps_read_only');

  /// Reference to `disk_mbps_read_write` attribute.
  TfRef<num> get diskMbpsReadWrite =>
      TfRef.attribute<num>(this, 'disk_mbps_read_write');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `gallery_image_reference_id` attribute.
  TfRef<String> get galleryImageReferenceId =>
      TfRef.attribute<String>(this, 'gallery_image_reference_id');

  /// Reference to `hyper_v_generation` attribute.
  TfRef<String> get hyperVGeneration =>
      TfRef.attribute<String>(this, 'hyper_v_generation');

  /// Reference to `image_reference_id` attribute.
  TfRef<String> get imageReferenceId =>
      TfRef.attribute<String>(this, 'image_reference_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logical_sector_size` attribute.
  TfRef<num> get logicalSectorSize =>
      TfRef.attribute<num>(this, 'logical_sector_size');

  /// Reference to `max_shares` attribute.
  TfRef<num> get maxShares => TfRef.attribute<num>(this, 'max_shares');

  /// Reference to `network_access_policy` attribute.
  TfRef<String> get networkAccessPolicy =>
      TfRef.attribute<String>(this, 'network_access_policy');

  /// Reference to `on_demand_bursting_enabled` attribute.
  TfRef<bool> get onDemandBurstingEnabled =>
      TfRef.attribute<bool>(this, 'on_demand_bursting_enabled');

  /// Reference to `optimized_frequent_attach_enabled` attribute.
  TfRef<bool> get optimizedFrequentAttachEnabled =>
      TfRef.attribute<bool>(this, 'optimized_frequent_attach_enabled');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `performance_plus_enabled` attribute.
  TfRef<bool> get performancePlusEnabled =>
      TfRef.attribute<bool>(this, 'performance_plus_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `secure_vm_disk_encryption_set_id` attribute.
  TfRef<String> get secureVmDiskEncryptionSetId =>
      TfRef.attribute<String>(this, 'secure_vm_disk_encryption_set_id');

  /// Reference to `security_type` attribute.
  TfRef<String> get securityType =>
      TfRef.attribute<String>(this, 'security_type');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `source_uri` attribute.
  TfRef<String> get sourceUri => TfRef.attribute<String>(this, 'source_uri');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_account_type` attribute.
  TfRef<String> get storageAccountType =>
      TfRef.attribute<String>(this, 'storage_account_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `trusted_launch_enabled` attribute.
  TfRef<bool> get trustedLaunchEnabled =>
      TfRef.attribute<bool>(this, 'trusted_launch_enabled');

  /// Reference to `upload_size_bytes` attribute.
  TfRef<num> get uploadSizeBytes =>
      TfRef.attribute<num>(this, 'upload_size_bytes');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
