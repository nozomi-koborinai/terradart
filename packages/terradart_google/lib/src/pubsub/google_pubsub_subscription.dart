// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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

// ===========================================================================
// Factory
// ===========================================================================

/// At most one of `bigquery_config`, `push_config`, `cloud_storage_config` on `google_pubsub_subscription`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.bigqueryConfig(...)`.
sealed class PubsubSubscriptionDelivery {
  const PubsubSubscriptionDelivery();

  /// Sets `bigquery_config`.
  const factory PubsubSubscriptionDelivery.bigqueryConfig(
    PubsubSubscriptionBigqueryConfig bigqueryConfig,
  ) = PubsubSubscriptionDeliveryBigqueryConfig;

  /// Sets `push_config`.
  const factory PubsubSubscriptionDelivery.pushConfig(
    PubsubSubscriptionPushConfig pushConfig,
  ) = PubsubSubscriptionDeliveryPushConfig;

  /// Sets `cloud_storage_config`.
  const factory PubsubSubscriptionDelivery.cloudStorageConfig(
    PubsubSubscriptionCloudStorageConfig cloudStorageConfig,
  ) = PubsubSubscriptionDeliveryCloudStorageConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PubsubSubscriptionDelivery.bigqueryConfig] choice: sets `bigquery_config`.
final class PubsubSubscriptionDeliveryBigqueryConfig
    extends PubsubSubscriptionDelivery {
  const PubsubSubscriptionDeliveryBigqueryConfig(this.bigqueryConfig);

  final PubsubSubscriptionBigqueryConfig bigqueryConfig;

  @override
  String get blockKey => 'bigquery_config';

  @override
  Map<String, Object?> encode() => {'bigquery_config': bigqueryConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'bigquery_config': TfArg.literal(bigqueryConfig.encode()),
  };
}

/// The [PubsubSubscriptionDelivery.pushConfig] choice: sets `push_config`.
final class PubsubSubscriptionDeliveryPushConfig
    extends PubsubSubscriptionDelivery {
  const PubsubSubscriptionDeliveryPushConfig(this.pushConfig);

  final PubsubSubscriptionPushConfig pushConfig;

  @override
  String get blockKey => 'push_config';

  @override
  Map<String, Object?> encode() => {'push_config': pushConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'push_config': TfArg.literal(pushConfig.encode()),
  };
}

/// The [PubsubSubscriptionDelivery.cloudStorageConfig] choice: sets `cloud_storage_config`.
final class PubsubSubscriptionDeliveryCloudStorageConfig
    extends PubsubSubscriptionDelivery {
  const PubsubSubscriptionDeliveryCloudStorageConfig(this.cloudStorageConfig);

  final PubsubSubscriptionCloudStorageConfig cloudStorageConfig;

  @override
  String get blockKey => 'cloud_storage_config';

  @override
  Map<String, Object?> encode() => {
    'cloud_storage_config': cloudStorageConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cloud_storage_config': TfArg.literal(cloudStorageConfig.encode()),
  };
}

/// Typed helper for the `bigquery_config` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionBigqueryConfig {
  const PubsubSubscriptionBigqueryConfig({
    this.dropUnknownFields,
    this.serviceAccountEmail,
    required this.table,
    this.schema,
    this.writeMetadata,
  });

  final TfArg<bool>? dropUnknownFields;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final TfArg<String> table;

  final PubsubSubscriptionSchema? schema;

  final TfArg<bool>? writeMetadata;

  Map<String, Object?> encode() => {
    'drop_unknown_fields': ?dropUnknownFields?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'table': table.toTfJson(),
    ...?schema?.encode(),
    'write_metadata': ?writeMetadata?.toTfJson(),
  };
}

/// At most one of `use_topic_schema`, `use_table_schema` on the `bigquery_config` block of `google_pubsub_subscription`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.useTopicSchema(...)`.
sealed class PubsubSubscriptionSchema {
  const PubsubSubscriptionSchema();

  /// Sets `use_topic_schema`.
  const factory PubsubSubscriptionSchema.useTopicSchema(
    TfArg<bool> useTopicSchema,
  ) = PubsubSubscriptionUseTopicSchema;

  /// Sets `use_table_schema`.
  const factory PubsubSubscriptionSchema.useTableSchema(
    TfArg<bool> useTableSchema,
  ) = PubsubSubscriptionUseTableSchema;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PubsubSubscriptionSchema.useTopicSchema] choice: sets `use_topic_schema`.
final class PubsubSubscriptionUseTopicSchema extends PubsubSubscriptionSchema {
  const PubsubSubscriptionUseTopicSchema(this.useTopicSchema);

  final TfArg<bool> useTopicSchema;

  @override
  String get blockKey => 'use_topic_schema';

  @override
  Map<String, Object?> encode() => {
    'use_topic_schema': useTopicSchema.toTfJson(),
  };
}

/// The [PubsubSubscriptionSchema.useTableSchema] choice: sets `use_table_schema`.
final class PubsubSubscriptionUseTableSchema extends PubsubSubscriptionSchema {
  const PubsubSubscriptionUseTableSchema(this.useTableSchema);

  final TfArg<bool> useTableSchema;

  @override
  String get blockKey => 'use_table_schema';

  @override
  Map<String, Object?> encode() => {
    'use_table_schema': useTableSchema.toTfJson(),
  };
}

/// Typed helper for the `cloud_storage_config` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionCloudStorageConfig {
  const PubsubSubscriptionCloudStorageConfig({
    required this.bucket,
    this.filenameDatetimeFormat,
    this.filenamePrefix,
    this.filenameSuffix,
    this.maxBytes,
    this.maxDuration,
    this.maxMessages,
    this.serviceAccountEmail,
    this.avroConfig,
    this.textConfig,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String>? filenameDatetimeFormat;

  final TfArg<String>? filenamePrefix;

  final TfArg<String>? filenameSuffix;

  final TfArg<num>? maxBytes;

  final TfArg<String>? maxDuration;

  final TfArg<num>? maxMessages;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final PubsubSubscriptionAvroConfig? avroConfig;

  final PubsubSubscriptionTextConfig? textConfig;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'filename_datetime_format': ?filenameDatetimeFormat?.toTfJson(),
    'filename_prefix': ?filenamePrefix?.toTfJson(),
    'filename_suffix': ?filenameSuffix?.toTfJson(),
    'max_bytes': ?maxBytes?.toTfJson(),
    'max_duration': ?maxDuration?.toTfJson(),
    'max_messages': ?maxMessages?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'avro_config': ?avroConfig?.encode(),
    'text_config': ?textConfig?.encode(),
  };
}

/// Typed helper for the `cloud_storage_config.avro_config` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionAvroConfig {
  const PubsubSubscriptionAvroConfig({this.useTopicSchema, this.writeMetadata});

  final TfArg<bool>? useTopicSchema;

  final TfArg<bool>? writeMetadata;

  Map<String, Object?> encode() => {
    'use_topic_schema': ?useTopicSchema?.toTfJson(),
    'write_metadata': ?writeMetadata?.toTfJson(),
  };
}

/// Typed helper for the `cloud_storage_config.text_config` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionTextConfig {
  const PubsubSubscriptionTextConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `dead_letter_policy` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionDeadLetterPolicy {
  const PubsubSubscriptionDeadLetterPolicy({
    this.deadLetterTopic,
    this.maxDeliveryAttempts,
  });

  final TfArg<String>? deadLetterTopic;

  final TfArg<num>? maxDeliveryAttempts;

  Map<String, Object?> encode() => {
    'dead_letter_topic': ?deadLetterTopic?.toTfJson(),
    'max_delivery_attempts': ?maxDeliveryAttempts?.toTfJson(),
  };
}

/// Typed helper for the `expiration_policy` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionExpirationPolicy {
  const PubsubSubscriptionExpirationPolicy({required this.ttl});

  final TfArg<String> ttl;

  Map<String, Object?> encode() => {'ttl': ttl.toTfJson()};
}

/// Typed helper for the `message_transforms` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionMessageTransforms {
  const PubsubSubscriptionMessageTransforms({
    this.disabled,
    this.aiInference,
    this.javascriptUdf,
  });

  final TfArg<bool>? disabled;

  final PubsubSubscriptionAiInference? aiInference;

  final PubsubSubscriptionJavascriptUdf? javascriptUdf;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'ai_inference': ?aiInference?.encode(),
    'javascript_udf': ?javascriptUdf?.encode(),
  };
}

/// Typed helper for the `message_transforms.ai_inference` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionAiInference {
  const PubsubSubscriptionAiInference({
    required this.endpoint,
    this.serviceAccountEmail,
    this.unstructuredInference,
  });

  final TfArg<String> endpoint;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final PubsubSubscriptionUnstructuredInference? unstructuredInference;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'unstructured_inference': ?unstructuredInference?.encode(),
  };
}

/// Typed helper for the `message_transforms.ai_inference.unstructured_inference` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionUnstructuredInference {
  const PubsubSubscriptionUnstructuredInference({this.parameters});

  final TfArg<Map<String, String>>? parameters;

  Map<String, Object?> encode() => {'parameters': ?parameters?.toTfJson()};
}

/// Typed helper for the `message_transforms.javascript_udf` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionJavascriptUdf {
  const PubsubSubscriptionJavascriptUdf({
    required this.code,
    required this.functionName,
  });

  final TfArg<String> code;

  final TfArg<String> functionName;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'function_name': functionName.toTfJson(),
  };
}

/// Typed helper for the `push_config` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionPushConfig {
  const PubsubSubscriptionPushConfig({
    this.attributes,
    required this.pushEndpoint,
    this.noWrapper,
    this.oidcToken,
  });

  final TfArg<Map<String, String>>? attributes;

  final TfArg<String> pushEndpoint;

  final PubsubSubscriptionNoWrapper? noWrapper;

  final PubsubSubscriptionOidcToken? oidcToken;

  Map<String, Object?> encode() => {
    'attributes': ?attributes?.toTfJson(),
    'push_endpoint': pushEndpoint.toTfJson(),
    'no_wrapper': ?noWrapper?.encode(),
    'oidc_token': ?oidcToken?.encode(),
  };
}

/// Typed helper for the `push_config.no_wrapper` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionNoWrapper {
  const PubsubSubscriptionNoWrapper({required this.writeMetadata});

  final TfArg<bool> writeMetadata;

  Map<String, Object?> encode() => {'write_metadata': writeMetadata.toTfJson()};
}

/// Typed helper for the `push_config.oidc_token` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionOidcToken {
  const PubsubSubscriptionOidcToken({
    this.audience,
    required this.serviceAccountEmail,
  });

  final TfArg<String>? audience;

  final RefTo<GoogleServiceAccount> serviceAccountEmail;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'service_account_email': serviceAccountEmail.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `retry_policy` block of
/// `google_pubsub_subscription` (derived from provider schema).
@immutable
final class PubsubSubscriptionRetryPolicy {
  const PubsubSubscriptionRetryPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  final TfArg<String>? maximumBackoff;

  final TfArg<String>? minimumBackoff;

  Map<String, Object?> encode() => {
    'maximum_backoff': ?maximumBackoff?.toTfJson(),
    'minimum_backoff': ?minimumBackoff?.toTfJson(),
  };
}

/// Factory wrapper for `google_pubsub_subscription`.
///
/// A named resource representing the stream of messages from a single, specific
/// topic, to be delivered to the subscribing application.
///
/// Pass `topic` as `otherTopic.ref`: it emits the topic `id`, the full
/// path `projects/{project}/topics/{name}`.
///
/// Example (push subscription):
/// ```dart
/// final push = GooglePubsubSubscription(
///   localName: 'orders_push',
///   name: .literal('orders-push'),
///   topic: .of(orders),
///   delivery: .pushConfig(
///     .new(
///       pushEndpoint: .literal('https://app.example.com/push'),
///     ),
///   ),
/// );
/// ```
final class GooglePubsubSubscription extends Resource {
  static const String tfType = 'google_pubsub_subscription';

  GooglePubsubSubscription({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GooglePubsubTopic> topic,
    TfArg<Map<String, String>>? labels,
    PubsubSubscriptionDelivery? delivery,
    TfArg<int>? ackDeadlineSeconds,
    TfArg<String>? messageRetentionDuration,
    TfArg<bool>? retainAckedMessages,
    PubsubSubscriptionExpirationPolicy? expirationPolicy,
    TfArg<String>? filter,
    PubsubSubscriptionDeadLetterPolicy? deadLetterPolicy,
    PubsubSubscriptionRetryPolicy? retryPolicy,
    TfArg<bool>? enableMessageOrdering,
    TfArg<bool>? enableExactlyOnceDelivery,
    List<PubsubSubscriptionMessageTransforms>? messageTransforms,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'topic': topic.encodeAs('id'),
           'labels': ?labels,
           ...?delivery?.argMap,
           'ack_deadline_seconds': ?ackDeadlineSeconds,
           'message_retention_duration': ?messageRetentionDuration,
           'retain_acked_messages': ?retainAckedMessages,
           if (expirationPolicy != null)
             'expiration_policy': TfArg.literal(expirationPolicy.encode()),
           'filter': ?filter,
           if (deadLetterPolicy != null)
             'dead_letter_policy': TfArg.literal(deadLetterPolicy.encode()),
           if (retryPolicy != null)
             'retry_policy': TfArg.literal(retryPolicy.encode()),
           'enable_message_ordering': ?enableMessageOrdering,
           'enable_exactly_once_delivery': ?enableExactlyOnceDelivery,
           if (messageTransforms != null)
             'message_transforms': TfArg.literal([
               for (final e in messageTransforms) e.encode(),
             ]),
           'tags': ?tags,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubSubscription>`.
  RefTo<GooglePubsubSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `ack_deadline_seconds` attribute.
  TfRef<num> get ackDeadlineSeconds =>
      TfRef.attribute<num>(this, 'ack_deadline_seconds');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `enable_exactly_once_delivery` attribute.
  TfRef<bool> get enableExactlyOnceDelivery =>
      TfRef.attribute<bool>(this, 'enable_exactly_once_delivery');

  /// Reference to `enable_message_ordering` attribute.
  TfRef<bool> get enableMessageOrdering =>
      TfRef.attribute<bool>(this, 'enable_message_ordering');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `message_retention_duration` attribute.
  TfRef<String> get messageRetentionDuration =>
      TfRef.attribute<String>(this, 'message_retention_duration');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `retain_acked_messages` attribute.
  TfRef<bool> get retainAckedMessages =>
      TfRef.attribute<bool>(this, 'retain_acked_messages');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `topic` attribute.
  TfRef<String> get topic => TfRef.attribute<String>(this, 'topic');
}
