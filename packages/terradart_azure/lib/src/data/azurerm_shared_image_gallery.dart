// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_shared_image_gallery.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_shared_image_gallery`.
const Set<String> _azurermSharedImageGallerySensitive = <String>{};

/// Factory wrapper for `azurerm_shared_image_gallery`.
final class DataAzurermSharedImageGallery extends Data {
  static const String tfType = 'azurerm_shared_image_gallery';

  DataAzurermSharedImageGallery(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSharedImageGallerySensitive;

  /// A reference to the `azurerm_shared_image_gallery` this data source reads, for
  /// arguments typed `RefTo<AzurermSharedImageGallery>`.
  RefTo<AzurermSharedImageGallery> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `image_names` attribute.
  TfRef<List<String>> get imageNames =>
      TfRef.attribute<List<String>>(this, 'image_names');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `unique_name` attribute.
  TfRef<String> get uniqueName => TfRef.attribute<String>(this, 'unique_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
