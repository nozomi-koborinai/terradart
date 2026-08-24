// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream_watermarks`.
const Set<String> _cloudflareStreamWatermarksSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_watermarks`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreamWatermarks extends Data {
  static const String tfType = 'cloudflare_stream_watermarks';

  DataCloudflareStreamWatermarks({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamWatermarksSensitive;
}
