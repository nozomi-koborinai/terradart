// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_platform_image`.
const Set<String> _azurermPlatformImageSensitive = <String>{};

/// Factory wrapper for `azurerm_platform_image`.
final class DataAzurermPlatformImage extends Data {
  static const String tfType = 'azurerm_platform_image';

  DataAzurermPlatformImage(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> offer,
    required TfArg<String> publisher,
    required TfArg<String> sku,
    TfArg<String>? version,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'offer': offer,
           'publisher': publisher,
           'sku': sku,
           'version': ?version,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPlatformImageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `offer` attribute.
  TfRef<String> get offer => TfRef.attribute<String>(this, 'offer');

  /// Reference to `publisher` attribute.
  TfRef<String> get publisher => TfRef.attribute<String>(this, 'publisher');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
