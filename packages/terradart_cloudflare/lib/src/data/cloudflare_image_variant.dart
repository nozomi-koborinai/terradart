// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_image_variant`.
const Set<String> _cloudflareImageVariantSensitive = <String>{};

/// Factory wrapper for `cloudflare_image_variant`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class DataCloudflareImageVariant extends Data {
  static const String tfType = 'cloudflare_image_variant';

  DataCloudflareImageVariant({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> variantId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'variant_id': variantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImageVariantSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
