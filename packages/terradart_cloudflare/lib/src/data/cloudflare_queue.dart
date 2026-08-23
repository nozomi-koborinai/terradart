// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_queue`.
const Set<String> _cloudflareQueueSensitive = <String>{};

/// Factory wrapper for `cloudflare_queue`.
///
/// Accepted Permissions
///
/// - `Queues Read` - `Queues Write` - `Workers Scripts Read` - `Workers Scripts
/// Write`
final class DataCloudflareQueue extends Data {
  static const String tfType = 'cloudflare_queue';

  DataCloudflareQueue({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> queueId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'queue_id': queueId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareQueueSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `consumers_total_count` attribute.
  TfRef<num> get consumersTotalCount =>
      TfRef.attribute<num>(this, 'consumers_total_count');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `producers_total_count` attribute.
  TfRef<num> get producersTotalCount =>
      TfRef.attribute<num>(this, 'producers_total_count');

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueName => TfRef.attribute<String>(this, 'queue_name');
}
