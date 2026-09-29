// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_bigquery_analytics_hub_listing_subscription`.
const Set<String> _googleBigqueryAnalyticsHubListingSubscriptionSensitive =
    <String>{};

/// Exactly one of `destination_dataset`, `destination_pubsub_subscription` on `google_bigquery_analytics_hub_listing_subscription`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.destinationDataset(...)`.
sealed class BigqueryAnalyticsHubListingSubscriptionDestination {
  const BigqueryAnalyticsHubListingSubscriptionDestination();

  /// Sets `destination_dataset`.
  const factory BigqueryAnalyticsHubListingSubscriptionDestination.destinationDataset(
    BigqueryAnalyticsHubListingSubscriptionDestinationDataset
    destinationDataset,
  ) = BigqueryAnalyticsHubListingSubscriptionDestinationDatasetChoice;

  /// Sets `destination_pubsub_subscription`.
  const factory BigqueryAnalyticsHubListingSubscriptionDestination.destinationPubsubSubscription(
    BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscription
    destinationPubsubSubscription,
  ) = BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigqueryAnalyticsHubListingSubscriptionDestination.destinationDataset] choice: sets `destination_dataset`.
final class BigqueryAnalyticsHubListingSubscriptionDestinationDatasetChoice
    extends BigqueryAnalyticsHubListingSubscriptionDestination {
  const BigqueryAnalyticsHubListingSubscriptionDestinationDatasetChoice(
    this.destinationDataset,
  );

  final BigqueryAnalyticsHubListingSubscriptionDestinationDataset
  destinationDataset;

  @override
  String get blockKey => 'destination_dataset';

  @override
  Map<String, Object?> encode() => {
    'destination_dataset': destinationDataset.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_dataset': TfArg.literal(destinationDataset.encode()),
  };
}

/// The [BigqueryAnalyticsHubListingSubscriptionDestination.destinationPubsubSubscription] choice: sets `destination_pubsub_subscription`.
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionChoice
    extends BigqueryAnalyticsHubListingSubscriptionDestination {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionChoice(
    this.destinationPubsubSubscription,
  );

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscription
  destinationPubsubSubscription;

  @override
  String get blockKey => 'destination_pubsub_subscription';

  @override
  Map<String, Object?> encode() => {
    'destination_pubsub_subscription': destinationPubsubSubscription.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_pubsub_subscription': TfArg.literal(
      destinationPubsubSubscription.encode(),
    ),
  };
}

/// Typed helper for the `destination_dataset` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationDataset {
  const BigqueryAnalyticsHubListingSubscriptionDestinationDataset({
    this.description,
    this.friendlyName,
    this.labels,
    required this.location,
    this.replicaLocations,
    required this.datasetReference,
  });

  final TfArg<String>? description;

  final TfArg<String>? friendlyName;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> location;

  final TfArg<List<Object?>>? replicaLocations;

  final BigqueryAnalyticsHubListingSubscriptionDestinationDatasetDatasetReference
  datasetReference;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'friendly_name': ?friendlyName?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'location': location.toTfJson(),
    'replica_locations': ?replicaLocations?.toTfJson(),
    'dataset_reference': datasetReference.encode(),
  };
}

/// Typed helper for the `destination_dataset.dataset_reference` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationDatasetDatasetReference {
  const BigqueryAnalyticsHubListingSubscriptionDestinationDatasetDatasetReference({
    required this.datasetId,
    required this.projectId,
  });

  final TfArg<String> datasetId;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `destination_pubsub_subscription` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscription {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscription({
    required this.pubsubSubscription,
  });

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription
  pubsubSubscription;

  Map<String, Object?> encode() => {
    'pubsub_subscription': pubsubSubscription.encode(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription({
    this.ackDeadlineSeconds,
    this.detached,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.filter,
    this.labels,
    this.messageRetentionDuration,
    required this.name,
    this.retainAckedMessages,
    this.bigqueryConfig,
    this.cloudStorageConfig,
    this.deadLetterPolicy,
    this.expirationPolicy,
    this.pushConfig,
    this.retryPolicy,
  });

  final TfArg<num>? ackDeadlineSeconds;

  final TfArg<bool>? detached;

  final TfArg<bool>? enableExactlyOnceDelivery;

  final TfArg<bool>? enableMessageOrdering;

  final TfArg<String>? filter;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? messageRetentionDuration;

  final TfArg<String> name;

  final TfArg<bool>? retainAckedMessages;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig?
  bigqueryConfig;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig?
  cloudStorageConfig;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionDeadLetterPolicy?
  deadLetterPolicy;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy?
  expirationPolicy;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfig?
  pushConfig;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy?
  retryPolicy;

  Map<String, Object?> encode() => {
    'ack_deadline_seconds': ?ackDeadlineSeconds?.toTfJson(),
    'detached': ?detached?.toTfJson(),
    'enable_exactly_once_delivery': ?enableExactlyOnceDelivery?.toTfJson(),
    'enable_message_ordering': ?enableMessageOrdering?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'message_retention_duration': ?messageRetentionDuration?.toTfJson(),
    'name': name.toTfJson(),
    'retain_acked_messages': ?retainAckedMessages?.toTfJson(),
    'bigquery_config': ?bigqueryConfig?.encode(),
    'cloud_storage_config': ?cloudStorageConfig?.encode(),
    'dead_letter_policy': ?deadLetterPolicy?.encode(),
    'expiration_policy': ?expirationPolicy?.encode(),
    'push_config': ?pushConfig?.encode(),
    'retry_policy': ?retryPolicy?.encode(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.bigquery_config` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig({
    this.dropUnknownFields,
    this.serviceAccountEmail,
    this.table,
    this.useTableSchema,
    this.useTopicSchema,
    this.writeMetadata,
  });

  final TfArg<bool>? dropUnknownFields;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final TfArg<String>? table;

  final TfArg<bool>? useTableSchema;

  final TfArg<bool>? useTopicSchema;

  final TfArg<bool>? writeMetadata;

  Map<String, Object?> encode() => {
    'drop_unknown_fields': ?dropUnknownFields?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'table': ?table?.toTfJson(),
    'use_table_schema': ?useTableSchema?.toTfJson(),
    'use_topic_schema': ?useTopicSchema?.toTfJson(),
    'write_metadata': ?writeMetadata?.toTfJson(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.cloud_storage_config` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig({
    this.bucket,
    this.filenameDatetimeFormat,
    this.filenamePrefix,
    this.filenameSuffix,
    this.maxBytes,
    this.maxDuration,
    this.maxMessages,
    this.serviceAccountEmail,
    this.avroConfig,
  });

  final RefTo<GoogleStorageBucket>? bucket;

  final TfArg<String>? filenameDatetimeFormat;

  final TfArg<String>? filenamePrefix;

  final TfArg<String>? filenameSuffix;

  final TfArg<String>? maxBytes;

  final TfArg<String>? maxDuration;

  final TfArg<String>? maxMessages;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig?
  avroConfig;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('name').toTfJson(),
    'filename_datetime_format': ?filenameDatetimeFormat?.toTfJson(),
    'filename_prefix': ?filenamePrefix?.toTfJson(),
    'filename_suffix': ?filenameSuffix?.toTfJson(),
    'max_bytes': ?maxBytes?.toTfJson(),
    'max_duration': ?maxDuration?.toTfJson(),
    'max_messages': ?maxMessages?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'avro_config': ?avroConfig?.encode(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.cloud_storage_config.avro_config` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig({
    this.useTopicSchema,
    this.writeMetadata,
  });

  final TfArg<bool>? useTopicSchema;

  final TfArg<bool>? writeMetadata;

  Map<String, Object?> encode() => {
    'use_topic_schema': ?useTopicSchema?.toTfJson(),
    'write_metadata': ?writeMetadata?.toTfJson(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.dead_letter_policy` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionDeadLetterPolicy {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionDeadLetterPolicy({
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

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.expiration_policy` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy({
    this.ttl,
  });

  final TfArg<String>? ttl;

  Map<String, Object?> encode() => {'ttl': ?ttl?.toTfJson()};
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.push_config` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfig {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfig({
    this.attributes,
    this.pushEndpoint,
    this.noWrapper,
    this.oidcToken,
  });

  final TfArg<Map<String, String>>? attributes;

  final TfArg<String>? pushEndpoint;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper?
  noWrapper;

  final BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken?
  oidcToken;

  Map<String, Object?> encode() => {
    'attributes': ?attributes?.toTfJson(),
    'push_endpoint': ?pushEndpoint?.toTfJson(),
    'no_wrapper': ?noWrapper?.encode(),
    'oidc_token': ?oidcToken?.encode(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.push_config.no_wrapper` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigNoWrapper({
    this.writeMetadata,
  });

  final TfArg<bool>? writeMetadata;

  Map<String, Object?> encode() => {
    'write_metadata': ?writeMetadata?.toTfJson(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.push_config.oidc_token` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken({
    this.audience,
    this.serviceAccountEmail,
  });

  final TfArg<String>? audience;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `destination_pubsub_subscription.pubsub_subscription.retry_policy` block of
/// `google_bigquery_analytics_hub_listing_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy {
  const BigqueryAnalyticsHubListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy({
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

/// Factory wrapper for `google_bigquery_analytics_hub_listing_subscription`.
///
/// A Bigquery Analytics Hub listing subscription
final class GoogleBigqueryAnalyticsHubListingSubscription extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_listing_subscription';

  GoogleBigqueryAnalyticsHubListingSubscription({
    required super.localName,
    required TfArg<String> dataExchangeId,
    required TfArg<String> listingId,
    required TfArg<String> location,
    TfArg<String>? project,
    required BigqueryAnalyticsHubListingSubscriptionDestination destination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'listing_id': listingId,
           'location': location,
           'project': ?project,
           ...destination.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubListingSubscription>`.
  RefTo<GoogleBigqueryAnalyticsHubListingSubscription> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `commercial_info` attribute.
  TfRef<List<Map<String, Object?>>> get commercialInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'commercial_info');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modify_time` attribute.
  TfRef<String> get lastModifyTime =>
      TfRef.attribute<String>(this, 'last_modify_time');

  /// Reference to `linked_dataset_map` attribute.
  TfRef<List<Map<String, Object?>>> get linkedDatasetMap =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'linked_dataset_map');

  /// Reference to `linked_resources` attribute.
  TfRef<List<Map<String, Object?>>> get linkedResources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'linked_resources');

  /// Reference to `log_linked_dataset_query_user_email` attribute.
  TfRef<bool> get logLinkedDatasetQueryUserEmail =>
      TfRef.attribute<bool>(this, 'log_linked_dataset_query_user_email');

  /// Reference to `organization_display_name` attribute.
  TfRef<String> get organizationDisplayName =>
      TfRef.attribute<String>(this, 'organization_display_name');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subscriber_contact` attribute.
  TfRef<String> get subscriberContact =>
      TfRef.attribute<String>(this, 'subscriber_contact');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
