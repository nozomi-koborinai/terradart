// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_images`.
const Set<String> _cloudflareImagesSensitive = <String>{};

/// Factory wrapper for `cloudflare_images`.
///
/// Accepted Permissions
///
/// - `Images Read` - `Images Write`
final class DataCloudflareImages extends Data {
  static const String tfType = 'cloudflare_images';

  DataCloudflareImages({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? creator,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'creator': ?creator,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImagesSensitive;
}
