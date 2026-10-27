// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_shared_image_version.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_shared_image_version`.
const Set<String> _azurermSharedImageVersionSensitive = <String>{};

/// Factory wrapper for `azurerm_shared_image_version`.
final class DataAzurermSharedImageVersion extends Data {
  static const String tfType = 'azurerm_shared_image_version';

  DataAzurermSharedImageVersion(
    super.localName, {
    required TfArg<String> galleryName,
    required TfArg<String> imageName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? sortVersionsBySemver,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gallery_name': galleryName,
           'image_name': imageName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sort_versions_by_semver': ?sortVersionsBySemver,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSharedImageVersionSensitive;

  /// A reference to the `azurerm_shared_image_version` this data source reads, for
  /// arguments typed `RefTo<AzurermSharedImageVersion>`.
  RefTo<AzurermSharedImageVersion> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `exclude_from_latest` attribute.
  TfRef<bool> get excludeFromLatest =>
      TfRef.attribute<bool>(this, 'exclude_from_latest');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_image_id` attribute.
  TfRef<String> get managedImageId =>
      TfRef.attribute<String>(this, 'managed_image_id');

  /// Reference to `os_disk_image_size_gb` attribute.
  TfRef<num> get osDiskImageSizeGb =>
      TfRef.attribute<num>(this, 'os_disk_image_size_gb');

  /// Reference to `os_disk_snapshot_id` attribute.
  TfRef<String> get osDiskSnapshotId =>
      TfRef.attribute<String>(this, 'os_disk_snapshot_id');

  /// Reference to `target_region` attribute.
  TfRef<List<Map<String, Object?>>> get targetRegion =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'target_region');

  /// Reference to `gallery_name` attribute.
  TfRef<String> get galleryName =>
      TfRef.attribute<String>(this, 'gallery_name');

  /// Reference to `image_name` attribute.
  TfRef<String> get imageName => TfRef.attribute<String>(this, 'image_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sort_versions_by_semver` attribute.
  TfRef<bool> get sortVersionsBySemver =>
      TfRef.attribute<bool>(this, 'sort_versions_by_semver');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
