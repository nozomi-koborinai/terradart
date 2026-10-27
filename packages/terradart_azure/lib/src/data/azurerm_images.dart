// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_images`.
const Set<String> _azurermImagesSensitive = <String>{};

/// Factory wrapper for `azurerm_images`.
final class DataAzurermImages extends Data {
  static const String tfType = 'azurerm_images';

  DataAzurermImages(
    super.localName, {
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tagsFilter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags_filter': ?tagsFilter,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermImagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `images` attribute.
  TfRef<List<Map<String, Object?>>> get images =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'images');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags_filter` attribute.
  TfRef<Map<String, String>> get tagsFilter =>
      TfRef.attribute<Map<String, String>>(this, 'tags_filter');
}
