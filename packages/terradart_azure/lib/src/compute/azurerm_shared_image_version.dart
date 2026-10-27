// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_shared_image_version`.
const Set<String> _azurermSharedImageVersionSensitive = <String>{};

/// Typed helper for the `target_region` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionTargetRegion {
  const SharedImageVersionTargetRegion({
    this.diskEncryptionSetId,
    this.excludeFromLatestEnabled,
    required this.name,
    required this.regionalReplicaCount,
    this.storageAccountType,
  });

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<bool>? excludeFromLatestEnabled;

  final TfArg<String> name;

  final TfArg<num> regionalReplicaCount;

  final TfArg<String>? storageAccountType;

  @internal
  Map<String, Object?> encode() => {
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'exclude_from_latest_enabled': ?excludeFromLatestEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'regional_replica_count': regionalReplicaCount.toTfJson(),
    'storage_account_type': ?storageAccountType?.toTfJson(),
  };
}

/// Typed helper for the `uefi` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionUefi {
  const SharedImageVersionUefi({
    required this.signatureTemplateNames,
    this.additionalSignatures,
  });

  final TfArg<List<String>> signatureTemplateNames;

  final SharedImageVersionAdditionalSignatures? additionalSignatures;

  @internal
  Map<String, Object?> encode() => {
    'signature_template_names': signatureTemplateNames.toTfJson(),
    'additional_signatures': ?additionalSignatures?.encode(),
  };
}

/// Typed helper for the `uefi.additional_signatures` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionAdditionalSignatures {
  const SharedImageVersionAdditionalSignatures({
    this.db,
    this.dbx,
    this.kek,
    this.pk,
  });

  final List<SharedImageVersionDb>? db;

  final List<SharedImageVersionDbx>? dbx;

  final List<SharedImageVersionKek>? kek;

  final SharedImageVersionPk? pk;

  @internal
  Map<String, Object?> encode() => {
    if (db != null) 'db': [for (final e in db!) e.encode()],
    if (dbx != null) 'dbx': [for (final e in dbx!) e.encode()],
    if (kek != null) 'kek': [for (final e in kek!) e.encode()],
    'pk': ?pk?.encode(),
  };
}

/// Typed helper for the `uefi.additional_signatures.db` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionDb {
  const SharedImageVersionDb({required this.type, required this.valuesBase64});

  final TfArg<String> type;

  final TfArg<List<String>> valuesBase64;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'values_base64': valuesBase64.toTfJson(),
  };
}

/// Typed helper for the `uefi.additional_signatures.dbx` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionDbx {
  const SharedImageVersionDbx({required this.type, required this.valuesBase64});

  final TfArg<String> type;

  final TfArg<List<String>> valuesBase64;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'values_base64': valuesBase64.toTfJson(),
  };
}

/// Typed helper for the `uefi.additional_signatures.kek` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionKek {
  const SharedImageVersionKek({required this.type, required this.valuesBase64});

  final TfArg<String> type;

  final TfArg<List<String>> valuesBase64;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'values_base64': valuesBase64.toTfJson(),
  };
}

/// Typed helper for the `uefi.additional_signatures.pk` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionPk {
  const SharedImageVersionPk({required this.type, required this.valuesBase64});

  final TfArg<String> type;

  final TfArg<List<String>> valuesBase64;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'values_base64': valuesBase64.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_shared_image_version`.
final class AzurermSharedImageVersion extends Resource {
  static const String tfType = 'azurerm_shared_image_version';

  AzurermSharedImageVersion(
    super.localName, {
    TfArg<String>? blobUri,
    TfArg<bool>? deletionOfReplicatedLocationsEnabled,
    TfArg<String>? endOfLifeDate,
    TfArg<bool>? excludeFromLatest,
    required TfArg<String> galleryName,
    required TfArg<String> imageName,
    required TfArg<String> location,
    TfArg<String>? managedImageId,
    required TfArg<String> name,
    TfArg<String>? osDiskSnapshotId,
    TfArg<String>? replicationMode,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    RefTo<AzurermStorageAccount>? storageAccountId,
    TfArg<Map<String, String>>? tags,
    required List<SharedImageVersionTargetRegion> targetRegion,
    SharedImageVersionUefi? uefi,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blob_uri': ?blobUri,
           'deletion_of_replicated_locations_enabled':
               ?deletionOfReplicatedLocationsEnabled,
           'end_of_life_date': ?endOfLifeDate,
           'exclude_from_latest': ?excludeFromLatest,
           'gallery_name': galleryName,
           'image_name': imageName,
           'location': location,
           'managed_image_id': ?managedImageId,
           'name': name,
           'os_disk_snapshot_id': ?osDiskSnapshotId,
           'replication_mode': ?replicationMode,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_id': ?storageAccountId?.encodeAs('id'),
           'tags': ?tags,
           'target_region': TfArg.literal([
             for (final e in targetRegion) e.encode(),
           ]),
           if (uefi != null) 'uefi': TfArg.literal(uefi.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSharedImageVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSharedImageVersion>`.
  RefTo<AzurermSharedImageVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blob_uri` attribute.
  TfRef<String> get blobUri => TfRef.attribute<String>(this, 'blob_uri');

  /// Reference to `deletion_of_replicated_locations_enabled` attribute.
  TfRef<bool> get deletionOfReplicatedLocationsEnabled =>
      TfRef.attribute<bool>(this, 'deletion_of_replicated_locations_enabled');

  /// Reference to `end_of_life_date` attribute.
  TfRef<String> get endOfLifeDate =>
      TfRef.attribute<String>(this, 'end_of_life_date');

  /// Reference to `exclude_from_latest` attribute.
  TfRef<bool> get excludeFromLatest =>
      TfRef.attribute<bool>(this, 'exclude_from_latest');

  /// Reference to `gallery_name` attribute.
  TfRef<String> get galleryName =>
      TfRef.attribute<String>(this, 'gallery_name');

  /// Reference to `image_name` attribute.
  TfRef<String> get imageName => TfRef.attribute<String>(this, 'image_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_image_id` attribute.
  TfRef<String> get managedImageId =>
      TfRef.attribute<String>(this, 'managed_image_id');

  /// Reference to `os_disk_snapshot_id` attribute.
  TfRef<String> get osDiskSnapshotId =>
      TfRef.attribute<String>(this, 'os_disk_snapshot_id');

  /// Reference to `replication_mode` attribute.
  TfRef<String> get replicationMode =>
      TfRef.attribute<String>(this, 'replication_mode');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
