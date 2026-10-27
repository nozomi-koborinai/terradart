// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_eventgrid_event_subscription`.
const Set<String> _azurermEventgridEventSubscriptionSensitive = <String>{
  'delivery_property.value',
};

/// Typed helper for the `advanced_filter` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionAdvancedFilter {
  const EventgridEventSubscriptionAdvancedFilter({
    this.boolEquals,
    this.isNotNull,
    this.isNullOrUndefined,
    this.numberGreaterThan,
    this.numberGreaterThanOrEquals,
    this.numberIn,
    this.numberInRange,
    this.numberLessThan,
    this.numberLessThanOrEquals,
    this.numberNotIn,
    this.numberNotInRange,
    this.stringBeginsWith,
    this.stringContains,
    this.stringEndsWith,
    this.stringIn,
    this.stringNotBeginsWith,
    this.stringNotContains,
    this.stringNotEndsWith,
    this.stringNotIn,
  });

  final List<EventgridEventSubscriptionBoolEquals>? boolEquals;

  final List<EventgridEventSubscriptionIsNotNull>? isNotNull;

  final List<EventgridEventSubscriptionIsNullOrUndefined>? isNullOrUndefined;

  final List<EventgridEventSubscriptionNumberGreaterThan>? numberGreaterThan;

  final List<EventgridEventSubscriptionNumberGreaterThanOrEquals>?
  numberGreaterThanOrEquals;

  final List<EventgridEventSubscriptionNumberIn>? numberIn;

  final List<EventgridEventSubscriptionNumberInRange>? numberInRange;

  final List<EventgridEventSubscriptionNumberLessThan>? numberLessThan;

  final List<EventgridEventSubscriptionNumberLessThanOrEquals>?
  numberLessThanOrEquals;

  final List<EventgridEventSubscriptionNumberNotIn>? numberNotIn;

  final List<EventgridEventSubscriptionNumberNotInRange>? numberNotInRange;

  final List<EventgridEventSubscriptionStringBeginsWith>? stringBeginsWith;

  final List<EventgridEventSubscriptionStringContains>? stringContains;

  final List<EventgridEventSubscriptionStringEndsWith>? stringEndsWith;

  final List<EventgridEventSubscriptionStringIn>? stringIn;

  final List<EventgridEventSubscriptionStringNotBeginsWith>?
  stringNotBeginsWith;

  final List<EventgridEventSubscriptionStringNotContains>? stringNotContains;

  final List<EventgridEventSubscriptionStringNotEndsWith>? stringNotEndsWith;

  final List<EventgridEventSubscriptionStringNotIn>? stringNotIn;

  @internal
  Map<String, Object?> encode() => {
    if (boolEquals != null)
      'bool_equals': [for (final e in boolEquals!) e.encode()],
    if (isNotNull != null)
      'is_not_null': [for (final e in isNotNull!) e.encode()],
    if (isNullOrUndefined != null)
      'is_null_or_undefined': [for (final e in isNullOrUndefined!) e.encode()],
    if (numberGreaterThan != null)
      'number_greater_than': [for (final e in numberGreaterThan!) e.encode()],
    if (numberGreaterThanOrEquals != null)
      'number_greater_than_or_equals': [
        for (final e in numberGreaterThanOrEquals!) e.encode(),
      ],
    if (numberIn != null) 'number_in': [for (final e in numberIn!) e.encode()],
    if (numberInRange != null)
      'number_in_range': [for (final e in numberInRange!) e.encode()],
    if (numberLessThan != null)
      'number_less_than': [for (final e in numberLessThan!) e.encode()],
    if (numberLessThanOrEquals != null)
      'number_less_than_or_equals': [
        for (final e in numberLessThanOrEquals!) e.encode(),
      ],
    if (numberNotIn != null)
      'number_not_in': [for (final e in numberNotIn!) e.encode()],
    if (numberNotInRange != null)
      'number_not_in_range': [for (final e in numberNotInRange!) e.encode()],
    if (stringBeginsWith != null)
      'string_begins_with': [for (final e in stringBeginsWith!) e.encode()],
    if (stringContains != null)
      'string_contains': [for (final e in stringContains!) e.encode()],
    if (stringEndsWith != null)
      'string_ends_with': [for (final e in stringEndsWith!) e.encode()],
    if (stringIn != null) 'string_in': [for (final e in stringIn!) e.encode()],
    if (stringNotBeginsWith != null)
      'string_not_begins_with': [
        for (final e in stringNotBeginsWith!) e.encode(),
      ],
    if (stringNotContains != null)
      'string_not_contains': [for (final e in stringNotContains!) e.encode()],
    if (stringNotEndsWith != null)
      'string_not_ends_with': [for (final e in stringNotEndsWith!) e.encode()],
    if (stringNotIn != null)
      'string_not_in': [for (final e in stringNotIn!) e.encode()],
  };
}

/// Typed helper for the `advanced_filter.bool_equals` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionBoolEquals {
  const EventgridEventSubscriptionBoolEquals({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<bool> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.is_not_null` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionIsNotNull {
  const EventgridEventSubscriptionIsNotNull({required this.key});

  final TfArg<String> key;

  @internal
  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `advanced_filter.is_null_or_undefined` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionIsNullOrUndefined {
  const EventgridEventSubscriptionIsNullOrUndefined({required this.key});

  final TfArg<String> key;

  @internal
  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `advanced_filter.number_greater_than` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberGreaterThan {
  const EventgridEventSubscriptionNumberGreaterThan({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.number_greater_than_or_equals` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberGreaterThanOrEquals {
  const EventgridEventSubscriptionNumberGreaterThanOrEquals({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.number_in` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberIn {
  const EventgridEventSubscriptionNumberIn({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<num>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.number_in_range` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberInRange {
  const EventgridEventSubscriptionNumberInRange({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.number_less_than` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberLessThan {
  const EventgridEventSubscriptionNumberLessThan({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.number_less_than_or_equals` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberLessThanOrEquals {
  const EventgridEventSubscriptionNumberLessThanOrEquals({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.number_not_in` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberNotIn {
  const EventgridEventSubscriptionNumberNotIn({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<num>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.number_not_in_range` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionNumberNotInRange {
  const EventgridEventSubscriptionNumberNotInRange({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_begins_with` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringBeginsWith {
  const EventgridEventSubscriptionStringBeginsWith({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_contains` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringContains {
  const EventgridEventSubscriptionStringContains({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_ends_with` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringEndsWith {
  const EventgridEventSubscriptionStringEndsWith({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_in` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringIn {
  const EventgridEventSubscriptionStringIn({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_not_begins_with` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringNotBeginsWith {
  const EventgridEventSubscriptionStringNotBeginsWith({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_not_contains` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringNotContains {
  const EventgridEventSubscriptionStringNotContains({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_not_ends_with` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringNotEndsWith {
  const EventgridEventSubscriptionStringNotEndsWith({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `advanced_filter.string_not_in` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStringNotIn {
  const EventgridEventSubscriptionStringNotIn({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `azure_function_endpoint` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionAzureFunctionEndpoint {
  const EventgridEventSubscriptionAzureFunctionEndpoint({
    required this.functionId,
    this.maxEventsPerBatch,
    this.preferredBatchSizeInKilobytes,
  });

  final TfArg<String> functionId;

  final TfArg<num>? maxEventsPerBatch;

  final TfArg<num>? preferredBatchSizeInKilobytes;

  @internal
  Map<String, Object?> encode() => {
    'function_id': functionId.toTfJson(),
    'max_events_per_batch': ?maxEventsPerBatch?.toTfJson(),
    'preferred_batch_size_in_kilobytes': ?preferredBatchSizeInKilobytes
        ?.toTfJson(),
  };
}

/// Typed helper for the `dead_letter_identity` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionDeadLetterIdentity {
  const EventgridEventSubscriptionDeadLetterIdentity({
    required this.type,
    this.userAssignedIdentity,
  });

  final TfArg<String> type;

  final TfArg<String>? userAssignedIdentity;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'user_assigned_identity': ?userAssignedIdentity?.toTfJson(),
  };
}

/// Typed helper for the `delivery_identity` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionDeliveryIdentity {
  const EventgridEventSubscriptionDeliveryIdentity({
    required this.type,
    this.userAssignedIdentity,
  });

  final TfArg<String> type;

  final TfArg<String>? userAssignedIdentity;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'user_assigned_identity': ?userAssignedIdentity?.toTfJson(),
  };
}

/// Typed helper for the `delivery_property` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionDeliveryProperty {
  const EventgridEventSubscriptionDeliveryProperty({
    required this.headerName,
    this.secret,
    this.sourceField,
    required this.type,
    this.value,
  });

  final TfArg<String> headerName;

  final TfArg<bool>? secret;

  final TfArg<String>? sourceField;

  final TfArg<String> type;

  final Sensitive<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'secret': ?secret?.toTfJson(),
    'source_field': ?sourceField?.toTfJson(),
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `retry_policy` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionRetryPolicy {
  const EventgridEventSubscriptionRetryPolicy({
    required this.eventTimeToLive,
    required this.maxDeliveryAttempts,
  });

  final TfArg<num> eventTimeToLive;

  final TfArg<num> maxDeliveryAttempts;

  @internal
  Map<String, Object?> encode() => {
    'event_time_to_live': eventTimeToLive.toTfJson(),
    'max_delivery_attempts': maxDeliveryAttempts.toTfJson(),
  };
}

/// Typed helper for the `storage_blob_dead_letter_destination` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStorageBlobDeadLetterDestination {
  const EventgridEventSubscriptionStorageBlobDeadLetterDestination({
    required this.storageAccountId,
    required this.storageBlobContainerName,
  });

  final TfArg<String> storageAccountId;

  final TfArg<String> storageBlobContainerName;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_id': storageAccountId.toTfJson(),
    'storage_blob_container_name': storageBlobContainerName.toTfJson(),
  };
}

/// Typed helper for the `storage_queue_endpoint` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionStorageQueueEndpoint {
  const EventgridEventSubscriptionStorageQueueEndpoint({
    this.queueMessageTimeToLiveInSeconds,
    required this.queueName,
    required this.storageAccountId,
  });

  final TfArg<num>? queueMessageTimeToLiveInSeconds;

  final TfArg<String> queueName;

  final TfArg<String> storageAccountId;

  @internal
  Map<String, Object?> encode() => {
    'queue_message_time_to_live_in_seconds': ?queueMessageTimeToLiveInSeconds
        ?.toTfJson(),
    'queue_name': queueName.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
  };
}

/// Typed helper for the `subject_filter` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionSubjectFilter {
  const EventgridEventSubscriptionSubjectFilter({
    this.caseSensitive,
    this.subjectBeginsWith,
    this.subjectEndsWith,
  });

  final TfArg<bool>? caseSensitive;

  final TfArg<String>? subjectBeginsWith;

  final TfArg<String>? subjectEndsWith;

  @internal
  Map<String, Object?> encode() => {
    'case_sensitive': ?caseSensitive?.toTfJson(),
    'subject_begins_with': ?subjectBeginsWith?.toTfJson(),
    'subject_ends_with': ?subjectEndsWith?.toTfJson(),
  };
}

/// Typed helper for the `webhook_endpoint` block of
/// `azurerm_eventgrid_event_subscription` (derived from provider schema).
@immutable
final class EventgridEventSubscriptionWebhookEndpoint {
  const EventgridEventSubscriptionWebhookEndpoint({
    this.activeDirectoryAppIdOrUri,
    this.activeDirectoryTenantId,
    this.maxEventsPerBatch,
    this.preferredBatchSizeInKilobytes,
    required this.url,
  });

  final TfArg<String>? activeDirectoryAppIdOrUri;

  final TfArg<String>? activeDirectoryTenantId;

  final TfArg<num>? maxEventsPerBatch;

  final TfArg<num>? preferredBatchSizeInKilobytes;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'active_directory_app_id_or_uri': ?activeDirectoryAppIdOrUri?.toTfJson(),
    'active_directory_tenant_id': ?activeDirectoryTenantId?.toTfJson(),
    'max_events_per_batch': ?maxEventsPerBatch?.toTfJson(),
    'preferred_batch_size_in_kilobytes': ?preferredBatchSizeInKilobytes
        ?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_eventgrid_event_subscription`.
final class AzurermEventgridEventSubscription extends Resource {
  static const String tfType = 'azurerm_eventgrid_event_subscription';

  AzurermEventgridEventSubscription(
    super.localName, {
    TfArg<bool>? advancedFilteringOnArraysEnabled,
    TfArg<String>? eventDeliverySchema,
    TfArg<String>? eventhubId,
    TfArg<String>? expirationTimeUtc,
    TfArg<String>? hybridConnectionId,
    TfArg<List<String>>? includedEventTypes,
    TfArg<List<String>>? labels,
    required TfArg<String> name,
    required TfArg<String> scope,
    TfArg<String>? serviceBusQueueId,
    TfArg<String>? serviceBusTopicId,
    EventgridEventSubscriptionAdvancedFilter? advancedFilter,
    EventgridEventSubscriptionAzureFunctionEndpoint? azureFunctionEndpoint,
    EventgridEventSubscriptionDeadLetterIdentity? deadLetterIdentity,
    EventgridEventSubscriptionDeliveryIdentity? deliveryIdentity,
    List<EventgridEventSubscriptionDeliveryProperty>? deliveryProperty,
    EventgridEventSubscriptionRetryPolicy? retryPolicy,
    EventgridEventSubscriptionStorageBlobDeadLetterDestination?
    storageBlobDeadLetterDestination,
    EventgridEventSubscriptionStorageQueueEndpoint? storageQueueEndpoint,
    EventgridEventSubscriptionSubjectFilter? subjectFilter,
    EventgridEventSubscriptionWebhookEndpoint? webhookEndpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'advanced_filtering_on_arrays_enabled':
               ?advancedFilteringOnArraysEnabled,
           'event_delivery_schema': ?eventDeliverySchema,
           'eventhub_id': ?eventhubId,
           'expiration_time_utc': ?expirationTimeUtc,
           'hybrid_connection_id': ?hybridConnectionId,
           'included_event_types': ?includedEventTypes,
           'labels': ?labels,
           'name': name,
           'scope': scope,
           'service_bus_queue_id': ?serviceBusQueueId,
           'service_bus_topic_id': ?serviceBusTopicId,
           if (advancedFilter != null)
             'advanced_filter': TfArg.literal(advancedFilter.encode()),
           if (azureFunctionEndpoint != null)
             'azure_function_endpoint': TfArg.literal(
               azureFunctionEndpoint.encode(),
             ),
           if (deadLetterIdentity != null)
             'dead_letter_identity': TfArg.literal(deadLetterIdentity.encode()),
           if (deliveryIdentity != null)
             'delivery_identity': TfArg.literal(deliveryIdentity.encode()),
           if (deliveryProperty != null)
             'delivery_property': TfArg.literal([
               for (final e in deliveryProperty) e.encode(),
             ]),
           if (retryPolicy != null)
             'retry_policy': TfArg.literal(retryPolicy.encode()),
           if (storageBlobDeadLetterDestination != null)
             'storage_blob_dead_letter_destination': TfArg.literal(
               storageBlobDeadLetterDestination.encode(),
             ),
           if (storageQueueEndpoint != null)
             'storage_queue_endpoint': TfArg.literal(
               storageQueueEndpoint.encode(),
             ),
           if (subjectFilter != null)
             'subject_filter': TfArg.literal(subjectFilter.encode()),
           if (webhookEndpoint != null)
             'webhook_endpoint': TfArg.literal(webhookEndpoint.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEventgridEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridEventSubscription>`.
  RefTo<AzurermEventgridEventSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `advanced_filtering_on_arrays_enabled` attribute.
  TfRef<bool> get advancedFilteringOnArraysEnabled =>
      TfRef.attribute<bool>(this, 'advanced_filtering_on_arrays_enabled');

  /// Reference to `event_delivery_schema` attribute.
  TfRef<String> get eventDeliverySchema =>
      TfRef.attribute<String>(this, 'event_delivery_schema');

  /// Reference to `eventhub_id` attribute.
  TfRef<String> get eventhubId => TfRef.attribute<String>(this, 'eventhub_id');

  /// Reference to `expiration_time_utc` attribute.
  TfRef<String> get expirationTimeUtc =>
      TfRef.attribute<String>(this, 'expiration_time_utc');

  /// Reference to `hybrid_connection_id` attribute.
  TfRef<String> get hybridConnectionId =>
      TfRef.attribute<String>(this, 'hybrid_connection_id');

  /// Reference to `included_event_types` attribute.
  TfRef<List<String>> get includedEventTypes =>
      TfRef.attribute<List<String>>(this, 'included_event_types');

  /// Reference to `labels` attribute.
  TfRef<List<String>> get labels =>
      TfRef.attribute<List<String>>(this, 'labels');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `service_bus_queue_id` attribute.
  TfRef<String> get serviceBusQueueId =>
      TfRef.attribute<String>(this, 'service_bus_queue_id');

  /// Reference to `service_bus_topic_id` attribute.
  TfRef<String> get serviceBusTopicId =>
      TfRef.attribute<String>(this, 'service_bus_topic_id');
}
