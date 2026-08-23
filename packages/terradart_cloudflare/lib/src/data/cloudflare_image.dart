// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_image`.
const Set<String> _cloudflareImageSensitive = <String>{};

/// Factory wrapper for `cloudflare_image`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class DataCloudflareImage extends Data {
  static const String tfType = 'cloudflare_image';

  DataCloudflareImage({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> imageId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'image_id': imageId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `require_signed_urls` attribute.
  TfRef<bool> get requireSignedUrls =>
      TfRef.attribute<bool>(this, 'require_signed_urls');

  /// Reference to `uploaded` attribute.
  TfRef<String> get uploaded => TfRef.attribute<String>(this, 'uploaded');

  /// Reference to `variants` attribute.
  TfRef<List<String>> get variants =>
      TfRef.attribute<List<String>>(this, 'variants');
}
