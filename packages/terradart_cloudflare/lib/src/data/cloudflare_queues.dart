// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_queues`.
const Set<String> _cloudflareQueuesSensitive = <String>{};

/// Factory wrapper for `cloudflare_queues`.
///
/// Accepted Permissions
///
/// - `Queues Read` - `Queues Write` - `Workers Scripts Read` - `Workers Scripts
/// Write`
final class DataCloudflareQueues extends Data {
  static const String tfType = 'cloudflare_queues';

  DataCloudflareQueues({
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
  Set<String> get sensitiveFields => _cloudflareQueuesSensitive;
}
