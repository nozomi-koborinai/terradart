// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_image_variant`.
const Set<String> _cloudflareImageVariantSensitive = <String>{};

/// Typed helper for the `options` block of
/// `cloudflare_image_variant` (derived from provider schema).
@immutable
final class ImageVariantOptions {
  const ImageVariantOptions({
    required this.fit,
    required this.height,
    required this.metadata,
    required this.width,
  });

  final TfArg<String> fit;

  final TfArg<num> height;

  final TfArg<String> metadata;

  final TfArg<num> width;

  Map<String, Object?> encode() => {
    'fit': fit.toTfJson(),
    'height': height.toTfJson(),
    'metadata': metadata.toTfJson(),
    'width': width.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_image_variant`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class CloudflareImageVariant extends Resource {
  static const String tfType = 'cloudflare_image_variant';

  CloudflareImageVariant({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> id,
    TfArg<bool>? neverRequireSignedUrls,
    required ImageVariantOptions options,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'id': id,
           if (neverRequireSignedUrls != null)
             'never_require_signed_urls': neverRequireSignedUrls,
           'options': TfArg.literal(options.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImageVariantSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
