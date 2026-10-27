// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_system_topic_event_subscription`.
const Set<String> _azurermEventgridSystemTopicEventSubscriptionSensitive =
    <String>{'delivery_property.value'};

/// Typed helper for the `advanced_filter` block of
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionAdvancedFilter {
  const EventgridSystemTopicEventSubscriptionAdvancedFilter({
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

  final List<EventgridSystemTopicEventSubscriptionBoolEquals>? boolEquals;

  final List<EventgridSystemTopicEventSubscriptionIsNotNull>? isNotNull;

  final List<EventgridSystemTopicEventSubscriptionIsNullOrUndefined>?
  isNullOrUndefined;

  final List<EventgridSystemTopicEventSubscriptionNumberGreaterThan>?
  numberGreaterThan;

  final List<EventgridSystemTopicEventSubscriptionNumberGreaterThanOrEquals>?
  numberGreaterThanOrEquals;

  final List<EventgridSystemTopicEventSubscriptionNumberIn>? numberIn;

  final List<EventgridSystemTopicEventSubscriptionNumberInRange>? numberInRange;

  final List<EventgridSystemTopicEventSubscriptionNumberLessThan>?
  numberLessThan;

  final List<EventgridSystemTopicEventSubscriptionNumberLessThanOrEquals>?
  numberLessThanOrEquals;

  final List<EventgridSystemTopicEventSubscriptionNumberNotIn>? numberNotIn;

  final List<EventgridSystemTopicEventSubscriptionNumberNotInRange>?
  numberNotInRange;

  final List<EventgridSystemTopicEventSubscriptionStringBeginsWith>?
  stringBeginsWith;

  final List<EventgridSystemTopicEventSubscriptionStringContains>?
  stringContains;

  final List<EventgridSystemTopicEventSubscriptionStringEndsWith>?
  stringEndsWith;

  final List<EventgridSystemTopicEventSubscriptionStringIn>? stringIn;

  final List<EventgridSystemTopicEventSubscriptionStringNotBeginsWith>?
  stringNotBeginsWith;

  final List<EventgridSystemTopicEventSubscriptionStringNotContains>?
  stringNotContains;

  final List<EventgridSystemTopicEventSubscriptionStringNotEndsWith>?
  stringNotEndsWith;

  final List<EventgridSystemTopicEventSubscriptionStringNotIn>? stringNotIn;

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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionBoolEquals {
  const EventgridSystemTopicEventSubscriptionBoolEquals({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionIsNotNull {
  const EventgridSystemTopicEventSubscriptionIsNotNull({required this.key});

  final TfArg<String> key;

  @internal
  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `advanced_filter.is_null_or_undefined` block of
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionIsNullOrUndefined {
  const EventgridSystemTopicEventSubscriptionIsNullOrUndefined({
    required this.key,
  });

  final TfArg<String> key;

  @internal
  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `advanced_filter.number_greater_than` block of
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberGreaterThan {
  const EventgridSystemTopicEventSubscriptionNumberGreaterThan({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberGreaterThanOrEquals {
  const EventgridSystemTopicEventSubscriptionNumberGreaterThanOrEquals({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberIn {
  const EventgridSystemTopicEventSubscriptionNumberIn({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberInRange {
  const EventgridSystemTopicEventSubscriptionNumberInRange({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberLessThan {
  const EventgridSystemTopicEventSubscriptionNumberLessThan({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberLessThanOrEquals {
  const EventgridSystemTopicEventSubscriptionNumberLessThanOrEquals({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberNotIn {
  const EventgridSystemTopicEventSubscriptionNumberNotIn({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionNumberNotInRange {
  const EventgridSystemTopicEventSubscriptionNumberNotInRange({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringBeginsWith {
  const EventgridSystemTopicEventSubscriptionStringBeginsWith({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringContains {
  const EventgridSystemTopicEventSubscriptionStringContains({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringEndsWith {
  const EventgridSystemTopicEventSubscriptionStringEndsWith({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringIn {
  const EventgridSystemTopicEventSubscriptionStringIn({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringNotBeginsWith {
  const EventgridSystemTopicEventSubscriptionStringNotBeginsWith({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringNotContains {
  const EventgridSystemTopicEventSubscriptionStringNotContains({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringNotEndsWith {
  const EventgridSystemTopicEventSubscriptionStringNotEndsWith({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStringNotIn {
  const EventgridSystemTopicEventSubscriptionStringNotIn({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionAzureFunctionEndpoint {
  const EventgridSystemTopicEventSubscriptionAzureFunctionEndpoint({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionDeadLetterIdentity {
  const EventgridSystemTopicEventSubscriptionDeadLetterIdentity({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionDeliveryIdentity {
  const EventgridSystemTopicEventSubscriptionDeliveryIdentity({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionDeliveryProperty {
  const EventgridSystemTopicEventSubscriptionDeliveryProperty({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionRetryPolicy {
  const EventgridSystemTopicEventSubscriptionRetryPolicy({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStorageBlobDeadLetterDestination {
  const EventgridSystemTopicEventSubscriptionStorageBlobDeadLetterDestination({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionStorageQueueEndpoint {
  const EventgridSystemTopicEventSubscriptionStorageQueueEndpoint({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionSubjectFilter {
  const EventgridSystemTopicEventSubscriptionSubjectFilter({
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
/// `azurerm_eventgrid_system_topic_event_subscription` (derived from provider schema).
@immutable
final class EventgridSystemTopicEventSubscriptionWebhookEndpoint {
  const EventgridSystemTopicEventSubscriptionWebhookEndpoint({
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

/// Factory wrapper for `azurerm_eventgrid_system_topic_event_subscription`.
final class AzurermEventgridSystemTopicEventSubscription extends Resource {
  static const String tfType =
      'azurerm_eventgrid_system_topic_event_subscription';

  AzurermEventgridSystemTopicEventSubscription(
    super.localName, {
    TfArg<bool>? advancedFilteringOnArraysEnabled,
    TfArg<String>? eventDeliverySchema,
    TfArg<String>? eventhubId,
    TfArg<String>? expirationTimeUtc,
    TfArg<String>? hybridConnectionId,
    TfArg<List<String>>? includedEventTypes,
    TfArg<List<String>>? labels,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? serviceBusQueueId,
    TfArg<String>? serviceBusTopicId,
    required TfArg<String> systemTopic,
    EventgridSystemTopicEventSubscriptionAdvancedFilter? advancedFilter,
    EventgridSystemTopicEventSubscriptionAzureFunctionEndpoint?
    azureFunctionEndpoint,
    EventgridSystemTopicEventSubscriptionDeadLetterIdentity? deadLetterIdentity,
    EventgridSystemTopicEventSubscriptionDeliveryIdentity? deliveryIdentity,
    List<EventgridSystemTopicEventSubscriptionDeliveryProperty>?
    deliveryProperty,
    EventgridSystemTopicEventSubscriptionRetryPolicy? retryPolicy,
    EventgridSystemTopicEventSubscriptionStorageBlobDeadLetterDestination?
    storageBlobDeadLetterDestination,
    EventgridSystemTopicEventSubscriptionStorageQueueEndpoint?
    storageQueueEndpoint,
    EventgridSystemTopicEventSubscriptionSubjectFilter? subjectFilter,
    EventgridSystemTopicEventSubscriptionWebhookEndpoint? webhookEndpoint,
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
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_bus_queue_id': ?serviceBusQueueId,
           'service_bus_topic_id': ?serviceBusTopicId,
           'system_topic': systemTopic,
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
      _azurermEventgridSystemTopicEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridSystemTopicEventSubscription>`.
  RefTo<AzurermEventgridSystemTopicEventSubscription> get ref => RefTo.of(this);

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

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_bus_queue_id` attribute.
  TfRef<String> get serviceBusQueueId =>
      TfRef.attribute<String>(this, 'service_bus_queue_id');

  /// Reference to `service_bus_topic_id` attribute.
  TfRef<String> get serviceBusTopicId =>
      TfRef.attribute<String>(this, 'service_bus_topic_id');

  /// Reference to `system_topic` attribute.
  TfRef<String> get systemTopic =>
      TfRef.attribute<String>(this, 'system_topic');
}
