// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_shared_image_version`.
const Set<String> _azurermSharedImageVersionSensitive = <String>{};

/// Shared Image Version Replication enum for `replication_mode`.
extension type const SharedImageVersionReplicationMode._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageVersionReplicationMode.variable(String name)
    : this._(TfArg.variable(name));
  SharedImageVersionReplicationMode.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageVersionReplicationMode.arg(TfArg<String> arg) : this._(arg);

  static const full = SharedImageVersionReplicationMode._(TfArgLiteral('Full'));
  static const shallow = SharedImageVersionReplicationMode._(
    TfArgLiteral('Shallow'),
  );

  static const List<SharedImageVersionReplicationMode> values = [full, shallow];
}

/// Exactly one of `blob_uri`, `managed_image_id`, `os_disk_snapshot_id` on `azurerm_shared_image_version`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.blobUri(...)`.
sealed class SharedImageVersionSource {
  const SharedImageVersionSource();

  /// Sets `blob_uri`.
  const factory SharedImageVersionSource.blobUri(TfArg<String> blobUri) =
      SharedImageVersionSourceBlobUri;

  /// Sets `managed_image_id`.
  const factory SharedImageVersionSource.managedImageId(
    TfArg<String> managedImageId,
  ) = SharedImageVersionSourceManagedImageId;

  /// Sets `os_disk_snapshot_id`.
  const factory SharedImageVersionSource.osDiskSnapshotId(
    TfArg<String> osDiskSnapshotId,
  ) = SharedImageVersionSourceOsDiskSnapshotId;

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

/// The [SharedImageVersionSource.blobUri] choice: sets `blob_uri`.
final class SharedImageVersionSourceBlobUri extends SharedImageVersionSource {
  const SharedImageVersionSourceBlobUri(this.blobUri);

  final TfArg<String> blobUri;

  @internal
  @override
  String get blockKey => 'blob_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'blob_uri': blobUri.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'blob_uri': blobUri};
}

/// The [SharedImageVersionSource.managedImageId] choice: sets `managed_image_id`.
final class SharedImageVersionSourceManagedImageId
    extends SharedImageVersionSource {
  const SharedImageVersionSourceManagedImageId(this.managedImageId);

  final TfArg<String> managedImageId;

  @internal
  @override
  String get blockKey => 'managed_image_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'managed_image_id': managedImageId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'managed_image_id': managedImageId,
  };
}

/// The [SharedImageVersionSource.osDiskSnapshotId] choice: sets `os_disk_snapshot_id`.
final class SharedImageVersionSourceOsDiskSnapshotId
    extends SharedImageVersionSource {
  const SharedImageVersionSourceOsDiskSnapshotId(this.osDiskSnapshotId);

  final TfArg<String> osDiskSnapshotId;

  @internal
  @override
  String get blockKey => 'os_disk_snapshot_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'os_disk_snapshot_id': osDiskSnapshotId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'os_disk_snapshot_id': osDiskSnapshotId,
  };
}

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

  final SharedImageVersionStorageAccountType? storageAccountType;

  @internal
  Map<String, Object?> encode() => {
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'exclude_from_latest_enabled': ?excludeFromLatestEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'regional_replica_count': regionalReplicaCount.toTfJson(),
    'storage_account_type': ?storageAccountType?.toTfJson(),
  };
}

/// `storage_account_type` — derived from the provider schema description.
extension type const SharedImageVersionStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageVersionStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  SharedImageVersionStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageVersionStorageAccountType.arg(TfArg<String> arg)
    : this._(arg);

  static const premiumLrs = SharedImageVersionStorageAccountType._(
    TfArgLiteral('Premium_LRS'),
  );
  static const standardLrs = SharedImageVersionStorageAccountType._(
    TfArgLiteral('Standard_LRS'),
  );
  static const standardZrs = SharedImageVersionStorageAccountType._(
    TfArgLiteral('Standard_ZRS'),
  );

  static const List<SharedImageVersionStorageAccountType> values = [
    premiumLrs,
    standardLrs,
    standardZrs,
  ];
}

/// Typed helper for the `uefi` block of
/// `azurerm_shared_image_version` (derived from provider schema).
@immutable
final class SharedImageVersionUefi {
  const SharedImageVersionUefi({
    required this.signatureTemplateNames,
    this.additionalSignatures,
  });

  final List<SharedImageVersionSignatureTemplateNames> signatureTemplateNames;

  final SharedImageVersionAdditionalSignatures? additionalSignatures;

  @internal
  Map<String, Object?> encode() => {
    'signature_template_names': [
      for (final e in signatureTemplateNames) e.toTfJson(),
    ],
    'additional_signatures': ?additionalSignatures?.encode(),
  };
}

/// `signature_template_names` — derived from the provider schema description.
extension type const SharedImageVersionSignatureTemplateNames._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageVersionSignatureTemplateNames.variable(String name)
    : this._(TfArg.variable(name));
  SharedImageVersionSignatureTemplateNames.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageVersionSignatureTemplateNames.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftueficertificateauthoritytemplate =
      SharedImageVersionSignatureTemplateNames._(
        TfArgLiteral('MicrosoftUefiCertificateAuthorityTemplate'),
      );
  static const microsoftwindowstemplate =
      SharedImageVersionSignatureTemplateNames._(
        TfArgLiteral('MicrosoftWindowsTemplate'),
      );
  static const nosignaturetemplate = SharedImageVersionSignatureTemplateNames._(
    TfArgLiteral('NoSignatureTemplate'),
  );

  static const List<SharedImageVersionSignatureTemplateNames> values = [
    microsoftueficertificateauthoritytemplate,
    microsoftwindowstemplate,
    nosignaturetemplate,
  ];
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
    required SharedImageVersionSource source,
    TfArg<bool>? deletionOfReplicatedLocationsEnabled,
    TfArg<String>? endOfLifeDate,
    TfArg<bool>? excludeFromLatest,
    required TfArg<String> galleryName,
    required TfArg<String> imageName,
    required TfArg<String> location,
    required TfArg<String> name,
    SharedImageVersionReplicationMode? replicationMode,
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
           ...source.argMap,
           'deletion_of_replicated_locations_enabled':
               ?deletionOfReplicatedLocationsEnabled,
           'end_of_life_date': ?endOfLifeDate,
           'exclude_from_latest': ?excludeFromLatest,
           'gallery_name': galleryName,
           'image_name': imageName,
           'location': location,
           'name': name,
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
