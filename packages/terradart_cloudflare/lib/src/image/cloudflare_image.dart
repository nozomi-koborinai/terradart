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
final class CloudflareImage extends Resource {
  static const String tfType = 'cloudflare_image';

  CloudflareImage({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? creator,
    TfArg<String>? file,
    required TfArg<String> id,
    TfArg<String>? metadata,
    TfArg<bool>? requireSignedUrls,
    TfArg<String>? url,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (creator != null) 'creator': creator,
           if (file != null) 'file': file,
           'id': id,
           if (metadata != null) 'metadata': metadata,
           if (requireSignedUrls != null)
             'require_signed_urls': requireSignedUrls,
           if (url != null) 'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `uploaded` attribute.
  TfRef<String> get uploaded => TfRef.attribute<String>(this, 'uploaded');

  /// Reference to `variants` attribute.
  TfRef<List<String>> get variants =>
      TfRef.attribute<List<String>>(this, 'variants');
}
