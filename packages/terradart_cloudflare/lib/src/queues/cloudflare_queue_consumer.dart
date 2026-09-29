// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_queue_consumer`.
const Set<String> _cloudflareQueueConsumerSensitive = <String>{};

/// Queue Consumer enum for `type`.
enum QueueConsumerType implements TerraformEnum {
  worker('worker'),
  httpPull('http_pull'),
  notification('notification');

  const QueueConsumerType(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<QueueConsumerSettingsEmail>? email;

  final List<QueueConsumerSettingsPagerduty>? pagerduty;

  final List<QueueConsumerSettingsWebhooks>? webhooks;

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
final class QueueConsumerSettingsEmail {
  const QueueConsumerSettingsEmail({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `settings.pagerduty` block of
/// `cloudflare_queue_consumer` (derived from provider schema).
@immutable
final class QueueConsumerSettingsPagerduty {
  const QueueConsumerSettingsPagerduty({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `settings.webhooks` block of
/// `cloudflare_queue_consumer` (derived from provider schema).
@immutable
final class QueueConsumerSettingsWebhooks {
  const QueueConsumerSettingsWebhooks({required this.id});

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

  CloudflareQueueConsumer({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? deadLetterQueue,
    required TfArg<String> queueId,
    TfArg<String>? scriptName,
    required TfArg<QueueConsumerType> type,
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
}
