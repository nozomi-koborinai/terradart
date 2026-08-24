// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_queue`.
const Set<String> _cloudflareQueueSensitive = <String>{};

/// Typed helper for the `settings` block of
/// `cloudflare_queue` (derived from provider schema).
@immutable
final class QueueSettings {
  const QueueSettings({
    this.deliveryDelay,
    this.deliveryPaused,
    this.messageRetentionPeriod,
  });

  final TfArg<num>? deliveryDelay;

  final TfArg<bool>? deliveryPaused;

  final TfArg<num>? messageRetentionPeriod;

  Map<String, Object?> encode() => {
    if (deliveryDelay != null) 'delivery_delay': deliveryDelay!.toTfJson(),
    if (deliveryPaused != null) 'delivery_paused': deliveryPaused!.toTfJson(),
    if (messageRetentionPeriod != null)
      'message_retention_period': messageRetentionPeriod!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_queue`.
///
/// Accepted Permissions
///
/// - `Queues Read` - `Queues Write` - `Workers Scripts Read` - `Workers Scripts
/// Write`
final class CloudflareQueue extends Resource {
  static const String tfType = 'cloudflare_queue';

  CloudflareQueue({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> queueName,
    QueueSettings? settings,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'queue_name': queueName,
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
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

  /// Reference to `queue_id` attribute.
  TfRef<String> get queueId => TfRef.attribute<String>(this, 'queue_id');
}
