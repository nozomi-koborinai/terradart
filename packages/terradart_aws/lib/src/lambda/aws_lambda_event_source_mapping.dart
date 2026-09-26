// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_event_source_mapping`.
const Set<String> _awsLambdaEventSourceMappingSensitive = <String>{};

/// Typed helper for the `amazon_managed_kafka_event_source_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfig({
    this.consumerGroupId,
    this.schemaRegistryConfig,
  });

  final TfArg<String>? consumerGroupId;

  final LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig?
  schemaRegistryConfig;

  Map<String, Object?> encode() => {
    if (consumerGroupId != null)
      'consumer_group_id': consumerGroupId!.toTfJson(),
    if (schemaRegistryConfig != null)
      'schema_registry_config': schemaRegistryConfig!.encode(),
  };
}

/// Typed helper for the `amazon_managed_kafka_event_source_config.schema_registry_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig({
    this.eventRecordFormat,
    this.schemaRegistryUri,
    this.accessConfig,
    this.schemaValidationConfig,
  });

  final TfArg<String>? eventRecordFormat;

  final TfArg<String>? schemaRegistryUri;

  final List<
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
  >?
  accessConfig;

  final List<
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
  >?
  schemaValidationConfig;

  Map<String, Object?> encode() => {
    if (eventRecordFormat != null)
      'event_record_format': eventRecordFormat!.toTfJson(),
    if (schemaRegistryUri != null)
      'schema_registry_uri': schemaRegistryUri!.toTfJson(),
    if (accessConfig != null)
      'access_config': [for (final e in accessConfig!) e.encode()],
    if (schemaValidationConfig != null)
      'schema_validation_config': [
        for (final e in schemaValidationConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `amazon_managed_kafka_event_source_config.schema_registry_config.access_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
    this.type,
    this.uri,
  });

  final TfArg<String>? type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `amazon_managed_kafka_event_source_config.schema_registry_config.schema_validation_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig({
    this.attribute,
  });

  final TfArg<String>? attribute;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
}

/// Typed helper for the `destination_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingDestinationConfig {
  const LambdaEventSourceMappingDestinationConfig({this.onFailure});

  final LambdaEventSourceMappingDestinationConfigOnFailure? onFailure;

  Map<String, Object?> encode() => {
    if (onFailure != null) 'on_failure': onFailure!.encode(),
  };
}

/// Typed helper for the `destination_config.on_failure` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingDestinationConfigOnFailure {
  const LambdaEventSourceMappingDestinationConfigOnFailure({
    required this.destinationArn,
  });

  final TfArg<String> destinationArn;

  Map<String, Object?> encode() => {
    'destination_arn': destinationArn.toTfJson(),
  };
}

/// Typed helper for the `document_db_event_source_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingDocumentDbEventSourceConfig {
  const LambdaEventSourceMappingDocumentDbEventSourceConfig({
    this.collectionName,
    required this.databaseName,
    this.fullDocument,
  });

  final TfArg<String>? collectionName;

  final TfArg<String> databaseName;

  final TfArg<String>? fullDocument;

  Map<String, Object?> encode() => {
    if (collectionName != null) 'collection_name': collectionName!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (fullDocument != null) 'full_document': fullDocument!.toTfJson(),
  };
}

/// Typed helper for the `filter_criteria` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingFilterCriteria {
  const LambdaEventSourceMappingFilterCriteria({this.filter});

  final List<LambdaEventSourceMappingFilterCriteriaFilter>? filter;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `filter_criteria.filter` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingFilterCriteriaFilter {
  const LambdaEventSourceMappingFilterCriteriaFilter({this.pattern});

  final TfArg<String>? pattern;

  Map<String, Object?> encode() => {
    if (pattern != null) 'pattern': pattern!.toTfJson(),
  };
}

/// Typed helper for the `metrics_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingMetricsConfig {
  const LambdaEventSourceMappingMetricsConfig({required this.metrics});

  final TfArg<List<Object?>> metrics;

  Map<String, Object?> encode() => {'metrics': metrics.toTfJson()};
}

/// Typed helper for the `provisioned_poller_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingProvisionedPollerConfig {
  const LambdaEventSourceMappingProvisionedPollerConfig({
    this.maximumPollers,
    this.minimumPollers,
    this.pollerGroupName,
  });

  final TfArg<num>? maximumPollers;

  final TfArg<num>? minimumPollers;

  final TfArg<String>? pollerGroupName;

  Map<String, Object?> encode() => {
    if (maximumPollers != null) 'maximum_pollers': maximumPollers!.toTfJson(),
    if (minimumPollers != null) 'minimum_pollers': minimumPollers!.toTfJson(),
    if (pollerGroupName != null)
      'poller_group_name': pollerGroupName!.toTfJson(),
  };
}

/// Typed helper for the `scaling_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingScalingConfig {
  const LambdaEventSourceMappingScalingConfig({this.maximumConcurrency});

  final TfArg<num>? maximumConcurrency;

  Map<String, Object?> encode() => {
    if (maximumConcurrency != null)
      'maximum_concurrency': maximumConcurrency!.toTfJson(),
  };
}

/// Typed helper for the `self_managed_event_source` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSelfManagedEventSource {
  const LambdaEventSourceMappingSelfManagedEventSource({
    required this.endpoints,
  });

  final TfArg<Map<String, String>> endpoints;

  Map<String, Object?> encode() => {'endpoints': endpoints.toTfJson()};
}

/// Typed helper for the `self_managed_kafka_event_source_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSelfManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfig({
    this.consumerGroupId,
    this.schemaRegistryConfig,
  });

  final TfArg<String>? consumerGroupId;

  final LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig?
  schemaRegistryConfig;

  Map<String, Object?> encode() => {
    if (consumerGroupId != null)
      'consumer_group_id': consumerGroupId!.toTfJson(),
    if (schemaRegistryConfig != null)
      'schema_registry_config': schemaRegistryConfig!.encode(),
  };
}

/// Typed helper for the `self_managed_kafka_event_source_config.schema_registry_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig {
  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig({
    this.eventRecordFormat,
    this.schemaRegistryUri,
    this.accessConfig,
    this.schemaValidationConfig,
  });

  final TfArg<String>? eventRecordFormat;

  final TfArg<String>? schemaRegistryUri;

  final List<
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig
  >?
  accessConfig;

  final List<
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig
  >?
  schemaValidationConfig;

  Map<String, Object?> encode() => {
    if (eventRecordFormat != null)
      'event_record_format': eventRecordFormat!.toTfJson(),
    if (schemaRegistryUri != null)
      'schema_registry_uri': schemaRegistryUri!.toTfJson(),
    if (accessConfig != null)
      'access_config': [for (final e in accessConfig!) e.encode()],
    if (schemaValidationConfig != null)
      'schema_validation_config': [
        for (final e in schemaValidationConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `self_managed_kafka_event_source_config.schema_registry_config.access_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
    this.type,
    this.uri,
  });

  final TfArg<String>? type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `self_managed_kafka_event_source_config.schema_registry_config.schema_validation_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig {
  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig({
    this.attribute,
  });

  final TfArg<String>? attribute;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
}

/// Typed helper for the `source_access_configuration` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSourceAccessConfiguration {
  const LambdaEventSourceMappingSourceAccessConfiguration({
    required this.type,
    required this.uri,
  });

  final TfArg<String> type;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Factory wrapper for `aws_lambda_event_source_mapping`.
final class AwsLambdaEventSourceMapping extends Resource {
  static const String tfType = 'aws_lambda_event_source_mapping';

  AwsLambdaEventSourceMapping({
    required super.localName,
    TfArg<num>? batchSize,
    TfArg<bool>? bisectBatchOnFunctionError,
    TfArg<bool>? enabled,
    TfArg<String>? eventSourceArn,
    required TfArg<String> functionName,
    TfArg<List<String>>? functionResponseTypes,
    TfArg<String>? kmsKeyArn,
    TfArg<num>? maximumBatchingWindowInSeconds,
    TfArg<num>? maximumRecordAgeInSeconds,
    TfArg<num>? maximumRetryAttempts,
    TfArg<num>? parallelizationFactor,
    TfArg<List<String>>? queues,
    TfArg<String>? region,
    TfArg<String>? startingPosition,
    TfArg<String>? startingPositionTimestamp,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? topics,
    TfArg<num>? tumblingWindowInSeconds,
    TfArg<bool>? useResourceTimeoutForPropagation,
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfig?
    amazonManagedKafkaEventSourceConfig,
    LambdaEventSourceMappingDestinationConfig? destinationConfig,
    LambdaEventSourceMappingDocumentDbEventSourceConfig?
    documentDbEventSourceConfig,
    LambdaEventSourceMappingFilterCriteria? filterCriteria,
    LambdaEventSourceMappingMetricsConfig? metricsConfig,
    LambdaEventSourceMappingProvisionedPollerConfig? provisionedPollerConfig,
    LambdaEventSourceMappingScalingConfig? scalingConfig,
    LambdaEventSourceMappingSelfManagedEventSource? selfManagedEventSource,
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfig?
    selfManagedKafkaEventSourceConfig,
    List<LambdaEventSourceMappingSourceAccessConfiguration>?
    sourceAccessConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (batchSize != null) 'batch_size': batchSize,
           if (bisectBatchOnFunctionError != null)
             'bisect_batch_on_function_error': bisectBatchOnFunctionError,
           if (enabled != null) 'enabled': enabled,
           if (eventSourceArn != null) 'event_source_arn': eventSourceArn,
           'function_name': functionName,
           if (functionResponseTypes != null)
             'function_response_types': functionResponseTypes,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (maximumBatchingWindowInSeconds != null)
             'maximum_batching_window_in_seconds':
                 maximumBatchingWindowInSeconds,
           if (maximumRecordAgeInSeconds != null)
             'maximum_record_age_in_seconds': maximumRecordAgeInSeconds,
           if (maximumRetryAttempts != null)
             'maximum_retry_attempts': maximumRetryAttempts,
           if (parallelizationFactor != null)
             'parallelization_factor': parallelizationFactor,
           if (queues != null) 'queues': queues,
           if (region != null) 'region': region,
           if (startingPosition != null) 'starting_position': startingPosition,
           if (startingPositionTimestamp != null)
             'starting_position_timestamp': startingPositionTimestamp,
           if (tags != null) 'tags': tags,
           if (topics != null) 'topics': topics,
           if (tumblingWindowInSeconds != null)
             'tumbling_window_in_seconds': tumblingWindowInSeconds,
           if (useResourceTimeoutForPropagation != null)
             'use_resource_timeout_for_propagation':
                 useResourceTimeoutForPropagation,
           if (amazonManagedKafkaEventSourceConfig != null)
             'amazon_managed_kafka_event_source_config': TfArg.literal(
               amazonManagedKafkaEventSourceConfig.encode(),
             ),
           if (destinationConfig != null)
             'destination_config': TfArg.literal(destinationConfig.encode()),
           if (documentDbEventSourceConfig != null)
             'document_db_event_source_config': TfArg.literal(
               documentDbEventSourceConfig.encode(),
             ),
           if (filterCriteria != null)
             'filter_criteria': TfArg.literal(filterCriteria.encode()),
           if (metricsConfig != null)
             'metrics_config': TfArg.literal(metricsConfig.encode()),
           if (provisionedPollerConfig != null)
             'provisioned_poller_config': TfArg.literal(
               provisionedPollerConfig.encode(),
             ),
           if (scalingConfig != null)
             'scaling_config': TfArg.literal(scalingConfig.encode()),
           if (selfManagedEventSource != null)
             'self_managed_event_source': TfArg.literal(
               selfManagedEventSource.encode(),
             ),
           if (selfManagedKafkaEventSourceConfig != null)
             'self_managed_kafka_event_source_config': TfArg.literal(
               selfManagedKafkaEventSourceConfig.encode(),
             ),
           if (sourceAccessConfiguration != null)
             'source_access_configuration': TfArg.literal([
               for (final e in sourceAccessConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaEventSourceMappingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `function_arn` attribute.
  TfRef<String> get functionArn =>
      TfRef.attribute<String>(this, 'function_arn');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `last_processing_result` attribute.
  TfRef<String> get lastProcessingResult =>
      TfRef.attribute<String>(this, 'last_processing_result');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_transition_reason` attribute.
  TfRef<String> get stateTransitionReason =>
      TfRef.attribute<String>(this, 'state_transition_reason');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');
}
