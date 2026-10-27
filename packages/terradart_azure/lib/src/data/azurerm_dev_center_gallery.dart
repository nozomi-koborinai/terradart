// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_gallery.dart';

/// Sensitive field paths for `azurerm_dev_center_gallery`.
const Set<String> _azurermDevCenterGallerySensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_gallery`.
final class DataAzurermDevCenterGallery extends Data {
  static const String tfType = 'azurerm_dev_center_gallery';

  DataAzurermDevCenterGallery(
    super.localName, {
    required TfArg<String> devCenterId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'dev_center_id': devCenterId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterGallerySensitive;

  /// A reference to the `azurerm_dev_center_gallery` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterGallery>`.
  RefTo<AzurermDevCenterGallery> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `shared_gallery_id` attribute.
  TfRef<String> get sharedGalleryId =>
      TfRef.attribute<String>(this, 'shared_gallery_id');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');
}
