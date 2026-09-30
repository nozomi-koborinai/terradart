// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_queue`.
const Set<String> _cloudflareQueueSensitive = <String>{};

/// Queue enum for `jurisdiction`.
enum QueueJurisdiction implements TerraformEnum {
  eu('eu'),
  us('us'),
  fedramp('fedramp');

  const QueueJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

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
    'delivery_delay': ?deliveryDelay?.toTfJson(),
    'delivery_paused': ?deliveryPaused?.toTfJson(),
    'message_retention_period': ?messageRetentionPeriod?.toTfJson(),
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
    required RefTo<CloudflareAccount> accountId,
    TfArg<QueueJurisdiction>? jurisdiction,
    required TfArg<String> queueName,
    QueueSettings? settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'jurisdiction': ?jurisdiction,
           'queue_name': queueName,
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareQueueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareQueue>`.
  RefTo<CloudflareQueue> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdictionRef =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueNameRef => TfRef.attribute<String>(this, 'queue_name');
}
