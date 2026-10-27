// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_shared_image_versions`.
const Set<String> _azurermSharedImageVersionsSensitive = <String>{};

/// Factory wrapper for `azurerm_shared_image_versions`.
final class DataAzurermSharedImageVersions extends Data {
  static const String tfType = 'azurerm_shared_image_versions';

  DataAzurermSharedImageVersions(
    super.localName, {
    required TfArg<String> galleryName,
    required TfArg<String> imageName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tagsFilter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gallery_name': galleryName,
           'image_name': imageName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags_filter': ?tagsFilter,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSharedImageVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `images` attribute.
  TfRef<List<Map<String, Object?>>> get images =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'images');

  /// Reference to `gallery_name` attribute.
  TfRef<String> get galleryName =>
      TfRef.attribute<String>(this, 'gallery_name');

  /// Reference to `image_name` attribute.
  TfRef<String> get imageName => TfRef.attribute<String>(this, 'image_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags_filter` attribute.
  TfRef<Map<String, String>> get tagsFilter =>
      TfRef.attribute<Map<String, String>>(this, 'tags_filter');
}
