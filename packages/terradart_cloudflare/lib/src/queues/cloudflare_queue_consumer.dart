// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_queue_consumer`.
const Set<String> _cloudflareQueueConsumerSensitive = <String>{};

/// Queue Consumer enum for `type`.
extension type const QueueConsumerType._(TfArg<String> _)
    implements TfArg<String> {
  QueueConsumerType.variable(String name) : this._(TfArg.variable(name));
  QueueConsumerType.expression(String template)
    : this._(TfArg.expression(template));
  const QueueConsumerType.arg(TfArg<String> arg) : this._(arg);

  static const worker = QueueConsumerType._(TfArgLiteral('worker'));
  static const httpPull = QueueConsumerType._(TfArgLiteral('http_pull'));
  static const notification = QueueConsumerType._(TfArgLiteral('notification'));

  static const List<QueueConsumerType> values = [
    worker,
    httpPull,
    notification,
  ];
}

/// Typed helper for the `settings` block of
/// `cloudflare_queue_consumer` (derived from provider schema).
@immutable
final class QueueConsumerSettings {
  const QueueConsumerSettings({
    this.batchSize,
    this.maxConcurrency,
    this.maxRetries,
    this.maxWaitTimeMs,
    this.retryDelay,
    this.visibilityTimeoutMs,
    this.email,
    this.pagerduty,
    this.webhooks,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? maxConcurrency;

  final TfArg<num>? maxRetries;

  final TfArg<num>? maxWaitTimeMs;

  final TfArg<num>? retryDelay;

  final TfArg<num>? visibilityTimeoutMs;

  final List<QueueConsumerEmail>? email;

  final List<QueueConsumerPagerduty>? pagerduty;

  final List<QueueConsumerWebhooks>? webhooks;

  Map<String, Object?> encode() => {
    'batch_size': ?batchSize?.toTfJson(),
    'max_concurrency': ?maxConcurrency?.toTfJson(),
    'max_retries': ?maxRetries?.toTfJson(),
    'max_wait_time_ms': ?maxWaitTimeMs?.toTfJson(),
    'retry_delay': ?retryDelay?.toTfJson(),
    'visibility_timeout_ms': ?visibilityTimeoutMs?.toTfJson(),
    if (email != null) 'email': [for (final e in email!) e.encode()],
    if (pagerduty != null)
      'pagerduty': [for (final e in pagerduty!) e.encode()],
    if (webhooks != null) 'webhooks': [for (final e in webhooks!) e.encode()],
  };
}

/// Typed helper for the `settings.email` block of
/// `cloudflare_queue_consumer` (derived from provider schema).
@immutable
final class QueueConsumerEmail {
  const QueueConsumerEmail({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `settings.pagerduty` block of
/// `cloudflare_queue_consumer` (derived from provider schema).
@immutable
final class QueueConsumerPagerduty {
  const QueueConsumerPagerduty({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `settings.webhooks` block of
/// `cloudflare_queue_consumer` (derived from provider schema).
@immutable
final class QueueConsumerWebhooks {
  const QueueConsumerWebhooks({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `cloudflare_queue_consumer`.
///
/// Accepted Permissions
///
/// - `Queues Read` - `Queues Write` - `Workers Scripts Read` - `Workers Scripts
/// Write`
final class CloudflareQueueConsumer extends Resource {
  static const String tfType = 'cloudflare_queue_consumer';

  CloudflareQueueConsumer(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? deadLetterQueue,
    required TfArg<String> queueId,
    TfArg<String>? scriptName,
    required QueueConsumerType type,
    QueueConsumerSettings? settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'dead_letter_queue': ?deadLetterQueue,
           'queue_id': queueId,
           'script_name': ?scriptName,
           'type': type,
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareQueueConsumerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareQueueConsumer>`.
  RefTo<CloudflareQueueConsumer> get ref => RefTo.of(this);

  /// Reference to `consumer_id` attribute.
  TfRef<String> get consumerId => TfRef.attribute<String>(this, 'consumer_id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueName => TfRef.attribute<String>(this, 'queue_name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dead_letter_queue` attribute.
  TfRef<String> get deadLetterQueue =>
      TfRef.attribute<String>(this, 'dead_letter_queue');

  /// Reference to `queue_id` attribute.
  TfRef<String> get queueId => TfRef.attribute<String>(this, 'queue_id');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
