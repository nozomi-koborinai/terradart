// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_managed_disk`.
const Set<String> _azurermManagedDiskSensitive = <String>{};

/// Managed Disk Hyper V enum for `hyper_v_generation`.
extension type const ManagedDiskHyperVGeneration._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDiskHyperVGeneration.variable(String name)
    : this._(TfArg.variable(name));
  ManagedDiskHyperVGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDiskHyperVGeneration.arg(TfArg<String> arg) : this._(arg);

  static const v1 = ManagedDiskHyperVGeneration._(TfArgLiteral('V1'));
  static const v2 = ManagedDiskHyperVGeneration._(TfArgLiteral('V2'));

  static const List<ManagedDiskHyperVGeneration> values = [v1, v2];
}

/// Managed Disk Network Access enum for `network_access_policy`.
extension type const ManagedDiskNetworkAccessPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDiskNetworkAccessPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ManagedDiskNetworkAccessPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDiskNetworkAccessPolicy.arg(TfArg<String> arg) : this._(arg);

  static const allowall = ManagedDiskNetworkAccessPolicy._(
    TfArgLiteral('AllowAll'),
  );
  static const allowprivate = ManagedDiskNetworkAccessPolicy._(
    TfArgLiteral('AllowPrivate'),
  );
  static const denyall = ManagedDiskNetworkAccessPolicy._(
    TfArgLiteral('DenyAll'),
  );

  static const List<ManagedDiskNetworkAccessPolicy> values = [
    allowall,
    allowprivate,
    denyall,
  ];
}

/// Managed Disk Os enum for `os_type`.
extension type const ManagedDiskOsType._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDiskOsType.variable(String name) : this._(TfArg.variable(name));
  ManagedDiskOsType.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDiskOsType.arg(TfArg<String> arg) : this._(arg);

  static const linux = ManagedDiskOsType._(TfArgLiteral('Linux'));
  static const windows = ManagedDiskOsType._(TfArgLiteral('Windows'));

  static const List<ManagedDiskOsType> values = [linux, windows];
}

/// Managed Disk Storage Account enum for `storage_account_type`.
extension type const ManagedDiskStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDiskStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  ManagedDiskStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDiskStorageAccountType.arg(TfArg<String> arg) : this._(arg);

  static const premiumLrs = ManagedDiskStorageAccountType._(
    TfArgLiteral('Premium_LRS'),
  );
  static const premiumv2Lrs = ManagedDiskStorageAccountType._(
    TfArgLiteral('PremiumV2_LRS'),
  );
  static const premiumZrs = ManagedDiskStorageAccountType._(
    TfArgLiteral('Premium_ZRS'),
  );
  static const standardLrs = ManagedDiskStorageAccountType._(
    TfArgLiteral('Standard_LRS'),
  );
  static const standardssdLrs = ManagedDiskStorageAccountType._(
    TfArgLiteral('StandardSSD_LRS'),
  );
  static const standardssdZrs = ManagedDiskStorageAccountType._(
    TfArgLiteral('StandardSSD_ZRS'),
  );
  static const ultrassdLrs = ManagedDiskStorageAccountType._(
    TfArgLiteral('UltraSSD_LRS'),
  );

  static const List<ManagedDiskStorageAccountType> values = [
    premiumLrs,
    premiumv2Lrs,
    premiumZrs,
    standardLrs,
    standardssdLrs,
    standardssdZrs,
    ultrassdLrs,
  ];
}

/// At most one of `disk_encryption_set_id`, `secure_vm_disk_encryption_set_id` on `azurerm_managed_disk`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.diskEncryptionSetId(...)`.
sealed class ManagedDiskEncryption {
  const ManagedDiskEncryption();

  /// Sets `disk_encryption_set_id`.
  const factory ManagedDiskEncryption.diskEncryptionSetId(
    TfArg<String> diskEncryptionSetId,
  ) = ManagedDiskEncryptionSetId;

  /// Sets `secure_vm_disk_encryption_set_id`.
  const factory ManagedDiskEncryption.secureVmDiskEncryptionSetId(
    TfArg<String> secureVmDiskEncryptionSetId,
  ) = ManagedDiskEncryptionSecureVmDiskEncryptionSetId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ManagedDiskEncryption.diskEncryptionSetId] choice: sets `disk_encryption_set_id`.
final class ManagedDiskEncryptionSetId extends ManagedDiskEncryption {
  const ManagedDiskEncryptionSetId(this.diskEncryptionSetId);

  final TfArg<String> diskEncryptionSetId;

  @internal
  @override
  String get blockKey => 'disk_encryption_set_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'disk_encryption_set_id': diskEncryptionSetId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'disk_encryption_set_id': diskEncryptionSetId,
  };
}

/// The [ManagedDiskEncryption.secureVmDiskEncryptionSetId] choice: sets `secure_vm_disk_encryption_set_id`.
final class ManagedDiskEncryptionSecureVmDiskEncryptionSetId
    extends ManagedDiskEncryption {
  const ManagedDiskEncryptionSecureVmDiskEncryptionSetId(
    this.secureVmDiskEncryptionSetId,
  );

  final TfArg<String> secureVmDiskEncryptionSetId;

  @internal
  @override
  String get blockKey => 'secure_vm_disk_encryption_set_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'secure_vm_disk_encryption_set_id': secureVmDiskEncryptionSetId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'secure_vm_disk_encryption_set_id': secureVmDiskEncryptionSetId,
  };
}

/// At most one of `gallery_image_reference_id`, `image_reference_id` on `azurerm_managed_disk`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.galleryImageReferenceId(...)`.
sealed class ManagedDiskImage {
  const ManagedDiskImage();

  /// Sets `gallery_image_reference_id`.
  const factory ManagedDiskImage.galleryImageReferenceId(
    TfArg<String> galleryImageReferenceId,
  ) = ManagedDiskImageGalleryImageReferenceId;

  /// Sets `image_reference_id`.
  const factory ManagedDiskImage.imageReferenceId(
    TfArg<String> imageReferenceId,
  ) = ManagedDiskImageReferenceId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ManagedDiskImage.galleryImageReferenceId] choice: sets `gallery_image_reference_id`.
final class ManagedDiskImageGalleryImageReferenceId extends ManagedDiskImage {
  const ManagedDiskImageGalleryImageReferenceId(this.galleryImageReferenceId);

  final TfArg<String> galleryImageReferenceId;

  @internal
  @override
  String get blockKey => 'gallery_image_reference_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'gallery_image_reference_id': galleryImageReferenceId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gallery_image_reference_id': galleryImageReferenceId,
  };
}

/// The [ManagedDiskImage.imageReferenceId] choice: sets `image_reference_id`.
final class ManagedDiskImageReferenceId extends ManagedDiskImage {
  const ManagedDiskImageReferenceId(this.imageReferenceId);

  final TfArg<String> imageReferenceId;

  @internal
  @override
  String get blockKey => 'image_reference_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'image_reference_id': imageReferenceId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'image_reference_id': imageReferenceId,
  };
}

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
    ManagedDiskEncryption? encryption,
    TfArg<num>? diskIopsReadOnly,
    TfArg<num>? diskIopsReadWrite,
    TfArg<num>? diskMbpsReadOnly,
    TfArg<num>? diskMbpsReadWrite,
    TfArg<num>? diskSizeGb,
    TfArg<String>? edgeZone,
    ManagedDiskImage? image,
    ManagedDiskHyperVGeneration? hyperVGeneration,
    required TfArg<String> location,
    TfArg<num>? logicalSectorSize,
    TfArg<num>? maxShares,
    required TfArg<String> name,
    ManagedDiskNetworkAccessPolicy? networkAccessPolicy,
    TfArg<bool>? onDemandBurstingEnabled,
    TfArg<bool>? optimizedFrequentAttachEnabled,
    ManagedDiskOsType? osType,
    TfArg<bool>? performancePlusEnabled,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? securityType,
    TfArg<String>? sourceResourceId,
    TfArg<String>? sourceUri,
    RefTo<AzurermStorageAccount>? storageAccountId,
    required ManagedDiskStorageAccountType storageAccountType,
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
           ...?encryption?.argMap,
           'disk_iops_read_only': ?diskIopsReadOnly,
           'disk_iops_read_write': ?diskIopsReadWrite,
           'disk_mbps_read_only': ?diskMbpsReadOnly,
           'disk_mbps_read_write': ?diskMbpsReadWrite,
           'disk_size_gb': ?diskSizeGb,
           'edge_zone': ?edgeZone,
           ...?image?.argMap,
           'hyper_v_generation': ?hyperVGeneration,
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
