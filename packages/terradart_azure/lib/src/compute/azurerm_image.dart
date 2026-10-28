// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_image`.
const Set<String> _azurermImageSensitive = <String>{};

/// Image Hyper V enum for `hyper_v_generation`.
extension type const ImageHyperVGeneration._(TfArg<String> _)
    implements TfArg<String> {
  ImageHyperVGeneration.variable(String name) : this._(TfArg.variable(name));
  ImageHyperVGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const ImageHyperVGeneration.arg(TfArg<String> arg) : this._(arg);

  static const v1 = ImageHyperVGeneration._(TfArgLiteral('V1'));
  static const v2 = ImageHyperVGeneration._(TfArgLiteral('V2'));

  static const List<ImageHyperVGeneration> values = [v1, v2];
}

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

  final ImageCaching? caching;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? lun;

  final TfArg<String>? managedDiskId;

  final TfArg<num>? sizeGb;

  final ImageStorageType storageType;

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

/// `caching` — derived from the provider schema description.
extension type const ImageCaching._(TfArg<String> _) implements TfArg<String> {
  ImageCaching.variable(String name) : this._(TfArg.variable(name));
  ImageCaching.expression(String template) : this._(TfArg.expression(template));
  const ImageCaching.arg(TfArg<String> arg) : this._(arg);

  static const none = ImageCaching._(TfArgLiteral('None'));
  static const readonly = ImageCaching._(TfArgLiteral('ReadOnly'));
  static const readwrite = ImageCaching._(TfArgLiteral('ReadWrite'));

  static const List<ImageCaching> values = [none, readonly, readwrite];
}

/// `storage_type` — derived from the provider schema description.
extension type const ImageStorageType._(TfArg<String> _)
    implements TfArg<String> {
  ImageStorageType.variable(String name) : this._(TfArg.variable(name));
  ImageStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const ImageStorageType.arg(TfArg<String> arg) : this._(arg);

  static const premiumLrs = ImageStorageType._(TfArgLiteral('Premium_LRS'));
  static const premiumv2Lrs = ImageStorageType._(TfArgLiteral('PremiumV2_LRS'));
  static const premiumZrs = ImageStorageType._(TfArgLiteral('Premium_ZRS'));
  static const standardLrs = ImageStorageType._(TfArgLiteral('Standard_LRS'));
  static const standardssdLrs = ImageStorageType._(
    TfArgLiteral('StandardSSD_LRS'),
  );
  static const standardssdZrs = ImageStorageType._(
    TfArgLiteral('StandardSSD_ZRS'),
  );
  static const ultrassdLrs = ImageStorageType._(TfArgLiteral('UltraSSD_LRS'));

  static const List<ImageStorageType> values = [
    premiumLrs,
    premiumv2Lrs,
    premiumZrs,
    standardLrs,
    standardssdLrs,
    standardssdZrs,
    ultrassdLrs,
  ];
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

  final ImageCaching? caching;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<String>? managedDiskId;

  final ImageOsState? osState;

  final ImageOsType? osType;

  final TfArg<num>? sizeGb;

  final ImageStorageType storageType;

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

/// `os_state` — derived from the provider schema description.
extension type const ImageOsState._(TfArg<String> _) implements TfArg<String> {
  ImageOsState.variable(String name) : this._(TfArg.variable(name));
  ImageOsState.expression(String template) : this._(TfArg.expression(template));
  const ImageOsState.arg(TfArg<String> arg) : this._(arg);

  static const generalized = ImageOsState._(TfArgLiteral('Generalized'));
  static const specialized = ImageOsState._(TfArgLiteral('Specialized'));

  static const List<ImageOsState> values = [generalized, specialized];
}

/// `os_type` — derived from the provider schema description.
extension type const ImageOsType._(TfArg<String> _) implements TfArg<String> {
  ImageOsType.variable(String name) : this._(TfArg.variable(name));
  ImageOsType.expression(String template) : this._(TfArg.expression(template));
  const ImageOsType.arg(TfArg<String> arg) : this._(arg);

  static const linux = ImageOsType._(TfArgLiteral('Linux'));
  static const windows = ImageOsType._(TfArgLiteral('Windows'));

  static const List<ImageOsType> values = [linux, windows];
}

/// Factory wrapper for `azurerm_image`.
final class AzurermImage extends Resource {
  static const String tfType = 'azurerm_image';

  AzurermImage(
    super.localName, {
    ImageHyperVGeneration? hyperVGeneration,
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
