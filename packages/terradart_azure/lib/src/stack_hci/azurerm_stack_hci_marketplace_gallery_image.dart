// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stack_hci_marketplace_gallery_image`.
const Set<String> _azurermStackHciMarketplaceGalleryImageSensitive = <String>{};

/// Stack Hci Marketplace Gallery Image Hyperv enum for `hyperv_generation`.
extension type const StackHciMarketplaceGalleryImageHypervGeneration._(
  TfArg<String> _
) implements TfArg<String> {
  StackHciMarketplaceGalleryImageHypervGeneration.variable(String name)
    : this._(TfArg.variable(name));
  StackHciMarketplaceGalleryImageHypervGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciMarketplaceGalleryImageHypervGeneration.arg(TfArg<String> arg)
    : this._(arg);

  static const v1 = StackHciMarketplaceGalleryImageHypervGeneration._(
    TfArgLiteral('V1'),
  );
  static const v2 = StackHciMarketplaceGalleryImageHypervGeneration._(
    TfArgLiteral('V2'),
  );

  static const List<StackHciMarketplaceGalleryImageHypervGeneration> values = [
    v1,
    v2,
  ];
}

/// Stack Hci Marketplace Gallery Image Os enum for `os_type`.
extension type const StackHciMarketplaceGalleryImageOsType._(TfArg<String> _)
    implements TfArg<String> {
  StackHciMarketplaceGalleryImageOsType.variable(String name)
    : this._(TfArg.variable(name));
  StackHciMarketplaceGalleryImageOsType.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciMarketplaceGalleryImageOsType.arg(TfArg<String> arg)
    : this._(arg);

  static const linux = StackHciMarketplaceGalleryImageOsType._(
    TfArgLiteral('Linux'),
  );
  static const windows = StackHciMarketplaceGalleryImageOsType._(
    TfArgLiteral('Windows'),
  );

  static const List<StackHciMarketplaceGalleryImageOsType> values = [
    linux,
    windows,
  ];
}

/// Typed helper for the `identifier` block of
/// `azurerm_stack_hci_marketplace_gallery_image` (derived from provider schema).
@immutable
final class StackHciMarketplaceGalleryImageIdentifier {
  const StackHciMarketplaceGalleryImageIdentifier({
    required this.offer,
    required this.publisher,
    required this.sku,
  });

  final TfArg<String> offer;

  final TfArg<String> publisher;

  final TfArg<String> sku;

  @internal
  Map<String, Object?> encode() => {
    'offer': offer.toTfJson(),
    'publisher': publisher.toTfJson(),
    'sku': sku.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_stack_hci_marketplace_gallery_image`.
final class AzurermStackHciMarketplaceGalleryImage extends Resource {
  static const String tfType = 'azurerm_stack_hci_marketplace_gallery_image';

  AzurermStackHciMarketplaceGalleryImage(
    super.localName, {
    required TfArg<String> customLocationId,
    required StackHciMarketplaceGalleryImageHypervGeneration hypervGeneration,
    required TfArg<String> location,
    required TfArg<String> name,
    required StackHciMarketplaceGalleryImageOsType osType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? storagePathId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> version,
    required StackHciMarketplaceGalleryImageIdentifier identifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_location_id': customLocationId,
           'hyperv_generation': hypervGeneration,
           'location': location,
           'name': name,
           'os_type': osType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_path_id': ?storagePathId,
           'tags': ?tags,
           'version': version,
           'identifier': TfArg.literal(identifier.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStackHciMarketplaceGalleryImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStackHciMarketplaceGalleryImage>`.
  RefTo<AzurermStackHciMarketplaceGalleryImage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_location_id` attribute.
  TfRef<String> get customLocationId =>
      TfRef.attribute<String>(this, 'custom_location_id');

  /// Reference to `hyperv_generation` attribute.
  TfRef<String> get hypervGeneration =>
      TfRef.attribute<String>(this, 'hyperv_generation');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_path_id` attribute.
  TfRef<String> get storagePathId =>
      TfRef.attribute<String>(this, 'storage_path_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
