// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_queue_consumer`.
const Set<String> _cloudflareQueueConsumerSensitive = <String>{};

/// Factory wrapper for `cloudflare_queue_consumer`.
///
/// Accepted Permissions
///
/// - `Queues Read` - `Queues Write` - `Workers Scripts Read` - `Workers Scripts
/// Write`
final class DataCloudflareQueueConsumer extends Data {
  static const String tfType = 'cloudflare_queue_consumer';

  DataCloudflareQueueConsumer({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> queueId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'queue_id': queueId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareQueueConsumerSensitive;

  /// Reference to `consumer_id` attribute.
  TfRef<String> get consumerId => TfRef.attribute<String>(this, 'consumer_id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `dead_letter_queue` attribute.
  TfRef<String> get deadLetterQueue =>
      TfRef.attribute<String>(this, 'dead_letter_queue');

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueName => TfRef.attribute<String>(this, 'queue_name');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
