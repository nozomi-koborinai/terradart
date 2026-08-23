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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (creator != null) 'creator': creator,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareImagesSensitive;
}
