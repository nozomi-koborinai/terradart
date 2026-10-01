// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_image`.
const Set<String> _cloudflareImageSensitive = <String>{};

/// Factory wrapper for `cloudflare_image`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class CloudflareImage extends Resource {
  static const String tfType = 'cloudflare_image';

  CloudflareImage(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? creator,
    TfArg<String>? file,
    required TfArg<String> id,
    TfArg<String>? metadata,
    TfArg<bool>? requireSignedUrls,
    TfArg<String>? url,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'creator': ?creator,
           'file': ?file,
           'id': id,
           'metadata': ?metadata,
           'require_signed_urls': ?requireSignedUrls,
           'url': ?url,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareImage>`.
  RefTo<CloudflareImage> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `file` attribute.
  TfRef<String> get file => TfRef.attribute<String>(this, 'file');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `require_signed_urls` attribute.
  TfRef<bool> get requireSignedUrls =>
      TfRef.attribute<bool>(this, 'require_signed_urls');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
