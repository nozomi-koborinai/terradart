// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_queue_consumers`.
const Set<String> _cloudflareQueueConsumersSensitive = <String>{};

/// Factory wrapper for `cloudflare_queue_consumers`.
///
/// Accepted Permissions
///
/// - `Queues Read` - `Queues Write` - `Workers Scripts Read` - `Workers Scripts
/// Write`
final class DataCloudflareQueueConsumers extends Data {
  static const String tfType = 'cloudflare_queue_consumers';

  DataCloudflareQueueConsumers({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    required TfArg<String> queueId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'queue_id': queueId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareQueueConsumersSensitive;
}
