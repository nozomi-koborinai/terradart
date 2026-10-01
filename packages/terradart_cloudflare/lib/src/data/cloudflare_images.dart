// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_images`.
const Set<String> _cloudflareImagesSensitive = <String>{};

/// Factory wrapper for `cloudflare_images`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class DataCloudflareImages extends Data {
  static const String tfType = 'cloudflare_images';

  DataCloudflareImages(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? creator,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'creator': ?creator,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImagesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
