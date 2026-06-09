// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_subscription`.
const Set<String> _googlePubsubSubscriptionSensitive = <String>{};

// ===========================================================================
// Nested-block helper classes
// ===========================================================================
//
// Each helper exposes an `encode()` method returning `Map<String, Object?>`.
// The factory wraps the result via `TfArg.literal(nested.encode())` so the
// `argMap` invariant `Map<String, TfArg<dynamic>?>` holds. Synth then calls
// `arg.toTfJson()` and recursively encodes any nested `TfArg` instances.

/// `push_config` block. Pair with [pushEndpoint]; optionally attach an
/// [oidcToken] (recommended for authenticated webhooks) or [noWrapper].
@immutable
class PubsubSubscriptionPushConfig {
  const PubsubSubscriptionPushConfig({
    required this.pushEndpoint,
    this.attributes,
    this.oidcToken,
    this.noWrapper,
  });

  final TfArg<String> pushEndpoint;
  final TfArg<Map<String, String>>? attributes;
  final PubsubSubscriptionOidcToken? oidcToken;
  final PubsubSubscriptionNoWrapper? noWrapper;

  Map<String, Object?> encode() => {
    'push_endpoint': pushEndpoint.toTfJson(),
    if (attributes != null) 'attributes': attributes!.toTfJson(),
    if (oidcToken != null) 'oidc_token': oidcToken!.encode(),
    if (noWrapper != null) 'no_wrapper': noWrapper!.encode(),
  };
}

/// OIDC token configuration for authenticated push subscriptions.
@immutable
class PubsubSubscriptionOidcToken {
  const PubsubSubscriptionOidcToken({
    required this.serviceAccountEmail,
    this.audience,
  });

  final TfArg<String> serviceAccountEmail;
  final TfArg<String>? audience;

  Map<String, Object?> encode() => {
    'service_account_email': serviceAccountEmail.toTfJson(),
    if (audience != null) 'audience': audience!.toTfJson(),
  };
}

/// `no_wrapper` payload-shape override for push subscriptions.
@immutable
class PubsubSubscriptionNoWrapper {
  const PubsubSubscriptionNoWrapper({required this.writeMetadata});

  final TfArg<bool> writeMetadata;

  Map<String, Object?> encode() => {'write_metadata': writeMetadata.toTfJson()};
}

/// `bigquery_config` block.
@immutable
class PubsubSubscriptionBigQueryConfig {
  const PubsubSubscriptionBigQueryConfig({
    required this.table,
    this.useTopicSchema,
    this.useTableSchema,
    this.writeMetadata,
    this.dropUnknownFields,
    this.serviceAccountEmail,
  });

  final TfArg<String> table;
  final TfArg<bool>? useTopicSchema;
  final TfArg<bool>? useTableSchema;
  final TfArg<bool>? writeMetadata;
  final TfArg<bool>? dropUnknownFields;
  final TfArg<String>? serviceAccountEmail;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (useTopicSchema != null) 'use_topic_schema': useTopicSchema!.toTfJson(),
    if (useTableSchema != null) 'use_table_schema': useTableSchema!.toTfJson(),
    if (writeMetadata != null) 'write_metadata': writeMetadata!.toTfJson(),
    if (dropUnknownFields != null)
      'drop_unknown_fields': dropUnknownFields!.toTfJson(),
    if (serviceAccountEmail != null)
      'service_account_email': serviceAccountEmail!.toTfJson(),
  };
}

/// `cloud_storage_config` block.
@immutable
class PubsubSubscriptionCloudStorageConfig {
  const PubsubSubscriptionCloudStorageConfig({
    required this.bucket,
    this.filenamePrefix,
    this.filenameSuffix,
    this.filenameDatetimeFormat,
    this.maxDuration,
    this.maxBytes,
    this.maxMessages,
    this.serviceAccountEmail,
  });

  final TfArg<String> bucket;
  final TfArg<String>? filenamePrefix;
  final TfArg<String>? filenameSuffix;
  final TfArg<String>? filenameDatetimeFormat;
  final TfArg<String>? maxDuration;
  final TfArg<int>? maxBytes;
  final TfArg<int>? maxMessages;
  final TfArg<String>? serviceAccountEmail;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (filenamePrefix != null) 'filename_prefix': filenamePrefix!.toTfJson(),
    if (filenameSuffix != null) 'filename_suffix': filenameSuffix!.toTfJson(),
    if (filenameDatetimeFormat != null)
      'filename_datetime_format': filenameDatetimeFormat!.toTfJson(),
    if (maxDuration != null) 'max_duration': maxDuration!.toTfJson(),
    if (maxBytes != null) 'max_bytes': maxBytes!.toTfJson(),
    if (maxMessages != null) 'max_messages': maxMessages!.toTfJson(),
    if (serviceAccountEmail != null)
      'service_account_email': serviceAccountEmail!.toTfJson(),
  };
}

/// `dead_letter_policy` block.
@immutable
class PubsubSubscriptionDeadLetterPolicy {
  const PubsubSubscriptionDeadLetterPolicy({
    this.deadLetterTopic,
    this.maxDeliveryAttempts,
  });

  final TfArg<String>? deadLetterTopic;
  final TfArg<int>? maxDeliveryAttempts;

  Map<String, Object?> encode() => {
    if (deadLetterTopic != null)
      'dead_letter_topic': deadLetterTopic!.toTfJson(),
    if (maxDeliveryAttempts != null)
      'max_delivery_attempts': maxDeliveryAttempts!.toTfJson(),
  };
}

/// `retry_policy` block.
@immutable
class PubsubSubscriptionRetryPolicy {
  const PubsubSubscriptionRetryPolicy({
    this.minimumBackoff,
    this.maximumBackoff,
  });

  final TfArg<String>? minimumBackoff;
  final TfArg<String>? maximumBackoff;

  Map<String, Object?> encode() => {
    if (minimumBackoff != null) 'minimum_backoff': minimumBackoff!.toTfJson(),
    if (maximumBackoff != null) 'maximum_backoff': maximumBackoff!.toTfJson(),
  };
}

/// `expiration_policy` block.
@immutable
class PubsubSubscriptionExpirationPolicy {
  const PubsubSubscriptionExpirationPolicy({required this.ttl});

  final TfArg<String> ttl;

  Map<String, Object?> encode() => {'ttl': ttl.toTfJson()};
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_pubsub_subscription`.
///
/// A named resource representing the stream of messages from a single, specific
/// topic, to be delivered to the subscribing application.
///
/// Pass `topic` as the full topic path via `TfArg.ref(otherTopic.id)`
/// (NOT `topic.nameRef`) so it resolves to
/// `projects/{project}/topics/{name}`.
///
/// Example (push subscription):
/// ```dart
/// final push = GooglePubsubSubscription(
///   localName: 'orders_push',
///   name: TfArg.literal('orders-push'),
///   topic: TfArg.ref(orders.id),
///   pushConfig: const PubsubSubscriptionPushConfig(
///     pushEndpoint: TfArgLiteral('https://app.example.com/push'),
///   ),
/// );
/// ```
final class GooglePubsubSubscription extends Resource {
  static const String tfType = 'google_pubsub_subscription';

  GooglePubsubSubscription({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> topic,
    TfArg<Map<String, String>>? labels,
    PubsubSubscriptionBigQueryConfig? bigqueryConfig,
    PubsubSubscriptionCloudStorageConfig? cloudStorageConfig,
    PubsubSubscriptionPushConfig? pushConfig,
    TfArg<int>? ackDeadlineSeconds,
    TfArg<String>? messageRetentionDuration,
    TfArg<bool>? retainAckedMessages,
    PubsubSubscriptionExpirationPolicy? expirationPolicy,
    TfArg<String>? filter,
    PubsubSubscriptionDeadLetterPolicy? deadLetterPolicy,
    PubsubSubscriptionRetryPolicy? retryPolicy,
    TfArg<bool>? enableMessageOrdering,
    TfArg<bool>? enableExactlyOnceDelivery,
    TfArg<List<Map<String, dynamic>>>? messageTransforms,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'topic': topic,
           if (labels != null) 'labels': labels,
           if (bigqueryConfig != null)
             'bigquery_config': TfArg.literal(bigqueryConfig.encode()),
           if (cloudStorageConfig != null)
             'cloud_storage_config': TfArg.literal(cloudStorageConfig.encode()),
           if (pushConfig != null)
             'push_config': TfArg.literal(pushConfig.encode()),
           if (ackDeadlineSeconds != null)
             'ack_deadline_seconds': ackDeadlineSeconds,
           if (messageRetentionDuration != null)
             'message_retention_duration': messageRetentionDuration,
           if (retainAckedMessages != null)
             'retain_acked_messages': retainAckedMessages,
           if (expirationPolicy != null)
             'expiration_policy': TfArg.literal(expirationPolicy.encode()),
           if (filter != null) 'filter': filter,
           if (deadLetterPolicy != null)
             'dead_letter_policy': TfArg.literal(deadLetterPolicy.encode()),
           if (retryPolicy != null)
             'retry_policy': TfArg.literal(retryPolicy.encode()),
           if (enableMessageOrdering != null)
             'enable_message_ordering': enableMessageOrdering,
           if (enableExactlyOnceDelivery != null)
             'enable_exactly_once_delivery': enableExactlyOnceDelivery,
           if (messageTransforms != null)
             'message_transforms': messageTransforms,
           if (tags != null) 'tags': tags,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSubscriptionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
