// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_image`.
const Set<String> _azurermImageSensitive = <String>{};

/// Typed helper for the `data_disk` block of
/// `azurerm_image` (derived from provider schema).
@immutable
final class ImageDataDisk {
  const ImageDataDisk({
    this.blobUri,
    this.caching,
    this.diskEncryptionSetId,
    this.lun,
    this.managedDiskId,
    this.sizeGb,
    required this.storageType,
  });

  final TfArg<String>? blobUri;

  final TfArg<String>? caching;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? lun;

  final TfArg<String>? managedDiskId;

  final TfArg<num>? sizeGb;

  final TfArg<String> storageType;

  @internal
  Map<String, Object?> encode() => {
    'blob_uri': ?blobUri?.toTfJson(),
    'caching': ?caching?.toTfJson(),
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'lun': ?lun?.toTfJson(),
    'managed_disk_id': ?managedDiskId?.toTfJson(),
    'size_gb': ?sizeGb?.toTfJson(),
    'storage_type': storageType.toTfJson(),
  };
}

/// Typed helper for the `os_disk` block of
/// `azurerm_image` (derived from provider schema).
@immutable
final class ImageOsDisk {
  const ImageOsDisk({
    this.blobUri,
    this.caching,
    this.diskEncryptionSetId,
    this.managedDiskId,
    this.osState,
    this.osType,
    this.sizeGb,
    required this.storageType,
  });

  final TfArg<String>? blobUri;

  final TfArg<String>? caching;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<String>? managedDiskId;

  final TfArg<String>? osState;

  final TfArg<String>? osType;

  final TfArg<num>? sizeGb;

  final TfArg<String> storageType;

  @internal
  Map<String, Object?> encode() => {
    'blob_uri': ?blobUri?.toTfJson(),
    'caching': ?caching?.toTfJson(),
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'managed_disk_id': ?managedDiskId?.toTfJson(),
    'os_state': ?osState?.toTfJson(),
    'os_type': ?osType?.toTfJson(),
    'size_gb': ?sizeGb?.toTfJson(),
    'storage_type': storageType.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_image`.
final class AzurermImage extends Resource {
  static const String tfType = 'azurerm_image';

  AzurermImage(
    super.localName, {
    TfArg<String>? hyperVGeneration,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sourceVirtualMachineId,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? zoneResilient,
    List<ImageDataDisk>? dataDisk,
    ImageOsDisk? osDisk,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hyper_v_generation': ?hyperVGeneration,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_virtual_machine_id': ?sourceVirtualMachineId,
           'tags': ?tags,
           'zone_resilient': ?zoneResilient,
           if (dataDisk != null)
             'data_disk': TfArg.literal([for (final e in dataDisk) e.encode()]),
           if (osDisk != null) 'os_disk': TfArg.literal(osDisk.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermImage>`.
  RefTo<AzurermImage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hyper_v_generation` attribute.
  TfRef<String> get hyperVGeneration =>
      TfRef.attribute<String>(this, 'hyper_v_generation');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_virtual_machine_id` attribute.
  TfRef<String> get sourceVirtualMachineId =>
      TfRef.attribute<String>(this, 'source_virtual_machine_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_resilient` attribute.
  TfRef<bool> get zoneResilient =>
      TfRef.attribute<bool>(this, 'zone_resilient');
}
