// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambda_event_source_mapping`.
const Set<String> _awsLambdaEventSourceMappingSensitive = <String>{};

/// Lambda Event Source Mapping Function Response enum for `function_response_types`.
enum LambdaEventSourceMappingFunctionResponseTypes implements TerraformEnum {
  reportbatchitemfailures('ReportBatchItemFailures');

  const LambdaEventSourceMappingFunctionResponseTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lambda Event Source Mapping Starting enum for `starting_position`.
enum LambdaEventSourceMappingStartingPosition implements TerraformEnum {
  trimHorizon('TRIM_HORIZON'),
  latest('LATEST'),
  atTimestamp('AT_TIMESTAMP');

  const LambdaEventSourceMappingStartingPosition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `event_source_arn`, `self_managed_event_source` on `aws_lambda_event_source_mapping`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.eventSourceArn(...)`.
sealed class LambdaEventSourceMappingEventSource {
  const LambdaEventSourceMappingEventSource();

  /// Sets `event_source_arn`.
  const factory LambdaEventSourceMappingEventSource.eventSourceArn(
    TfArg<String> eventSourceArn,
  ) = LambdaEventSourceMappingEventSourceArn;

  /// Sets `self_managed_event_source`.
  const factory LambdaEventSourceMappingEventSource.selfManagedEventSource(
    LambdaEventSourceMappingSelfManagedEventSource selfManagedEventSource,
  ) = LambdaEventSourceMappingEventSourceSelfManagedEventSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LambdaEventSourceMappingEventSource.eventSourceArn] choice: sets `event_source_arn`.
final class LambdaEventSourceMappingEventSourceArn
    extends LambdaEventSourceMappingEventSource {
  const LambdaEventSourceMappingEventSourceArn(this.eventSourceArn);

  final TfArg<String> eventSourceArn;

  @override
  String get blockKey => 'event_source_arn';

  @override
  Map<String, Object?> encode() => {
    'event_source_arn': eventSourceArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'event_source_arn': eventSourceArn,
  };
}

/// The [LambdaEventSourceMappingEventSource.selfManagedEventSource] choice: sets `self_managed_event_source`.
final class LambdaEventSourceMappingEventSourceSelfManagedEventSource
    extends LambdaEventSourceMappingEventSource {
  const LambdaEventSourceMappingEventSourceSelfManagedEventSource(
    this.selfManagedEventSource,
  );

  final LambdaEventSourceMappingSelfManagedEventSource selfManagedEventSource;

  @override
  String get blockKey => 'self_managed_event_source';

  @override
  Map<String, Object?> encode() => {
    'self_managed_event_source': selfManagedEventSource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'self_managed_event_source': TfArg.literal(selfManagedEventSource.encode()),
  };
}

/// At most one of `amazon_managed_kafka_event_source_config`, `self_managed_kafka_event_source_config` on `aws_lambda_event_source_mapping`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.amazonManagedKafkaEventSourceConfig(...)`.
sealed class LambdaEventSourceMappingManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingManagedKafkaEventSourceConfig();

  /// Sets `amazon_managed_kafka_event_source_config`.
  const factory LambdaEventSourceMappingManagedKafkaEventSourceConfig.amazonManagedKafkaEventSourceConfig(
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfig
    amazonManagedKafkaEventSourceConfig,
  ) = LambdaEventSourceMappingManagedKafkaEventSourceConfigAmazonManagedKafkaEventSourceConfig;

  /// Sets `self_managed_kafka_event_source_config`.
  const factory LambdaEventSourceMappingManagedKafkaEventSourceConfig.selfManagedKafkaEventSourceConfig(
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfig
    selfManagedKafkaEventSourceConfig,
  ) = LambdaEventSourceMappingManagedKafkaEventSourceConfigSelfManagedKafkaEventSourceConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LambdaEventSourceMappingManagedKafkaEventSourceConfig.amazonManagedKafkaEventSourceConfig] choice: sets `amazon_managed_kafka_event_source_config`.
final class LambdaEventSourceMappingManagedKafkaEventSourceConfigAmazonManagedKafkaEventSourceConfig
    extends LambdaEventSourceMappingManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingManagedKafkaEventSourceConfigAmazonManagedKafkaEventSourceConfig(
    this.amazonManagedKafkaEventSourceConfig,
  );

  final LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfig
  amazonManagedKafkaEventSourceConfig;

  @override
  String get blockKey => 'amazon_managed_kafka_event_source_config';

  @override
  Map<String, Object?> encode() => {
    'amazon_managed_kafka_event_source_config':
        amazonManagedKafkaEventSourceConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'amazon_managed_kafka_event_source_config': TfArg.literal(
      amazonManagedKafkaEventSourceConfig.encode(),
    ),
  };
}

/// The [LambdaEventSourceMappingManagedKafkaEventSourceConfig.selfManagedKafkaEventSourceConfig] choice: sets `self_managed_kafka_event_source_config`.
final class LambdaEventSourceMappingManagedKafkaEventSourceConfigSelfManagedKafkaEventSourceConfig
    extends LambdaEventSourceMappingManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingManagedKafkaEventSourceConfigSelfManagedKafkaEventSourceConfig(
    this.selfManagedKafkaEventSourceConfig,
  );

  final LambdaEventSourceMappingSelfManagedKafkaEventSourceConfig
  selfManagedKafkaEventSourceConfig;

  @override
  String get blockKey => 'self_managed_kafka_event_source_config';

  @override
  Map<String, Object?> encode() => {
    'self_managed_kafka_event_source_config': selfManagedKafkaEventSourceConfig
        .encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'self_managed_kafka_event_source_config': TfArg.literal(
      selfManagedKafkaEventSourceConfig.encode(),
    ),
  };
}

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
    'consumer_group_id': ?consumerGroupId?.toTfJson(),
    'schema_registry_config': ?schemaRegistryConfig?.encode(),
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

  final TfArg<
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat
  >?
  eventRecordFormat;

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
    'event_record_format': ?eventRecordFormat?.toTfJson(),
    'schema_registry_uri': ?schemaRegistryUri?.toTfJson(),
    if (accessConfig != null)
      'access_config': [for (final e in accessConfig!) e.encode()],
    if (schemaValidationConfig != null)
      'schema_validation_config': [
        for (final e in schemaValidationConfig!) e.encode(),
      ],
  };
}

/// `event_record_format` — derived from the provider schema description.
enum LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat
    implements TerraformEnum {
  json('JSON'),
  source('SOURCE');

  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `amazon_managed_kafka_event_source_config.schema_registry_config.access_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
    this.type,
    this.uri,
  });

  final TfArg<
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType
  >?
  type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType
    implements TerraformEnum {
  basicAuth('BASIC_AUTH'),
  clientCertificateTlsAuth('CLIENT_CERTIFICATE_TLS_AUTH'),
  serverRootCaCertificate('SERVER_ROOT_CA_CERTIFICATE');

  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `amazon_managed_kafka_event_source_config.schema_registry_config.schema_validation_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig({
    this.attribute,
  });

  final TfArg<
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute
  >?
  attribute;

  Map<String, Object?> encode() => {'attribute': ?attribute?.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute
    implements TerraformEnum {
  key('KEY'),
  value('VALUE');

  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingDestinationConfig {
  const LambdaEventSourceMappingDestinationConfig({this.onFailure});

  final LambdaEventSourceMappingDestinationConfigOnFailure? onFailure;

  Map<String, Object?> encode() => {'on_failure': ?onFailure?.encode()};
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

  final TfArg<LambdaEventSourceMappingDocumentDbEventSourceConfigFullDocument>?
  fullDocument;

  Map<String, Object?> encode() => {
    'collection_name': ?collectionName?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'full_document': ?fullDocument?.toTfJson(),
  };
}

/// `full_document` — derived from the provider schema description.
enum LambdaEventSourceMappingDocumentDbEventSourceConfigFullDocument
    implements TerraformEnum {
  updatelookup('UpdateLookup'),
  defaultCase('Default');

  const LambdaEventSourceMappingDocumentDbEventSourceConfigFullDocument(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  Map<String, Object?> encode() => {'pattern': ?pattern?.toTfJson()};
}

/// Typed helper for the `metrics_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingMetricsConfig {
  const LambdaEventSourceMappingMetricsConfig({required this.metrics});

  final List<TfArg<LambdaEventSourceMappingMetricsConfigMetrics>> metrics;

  Map<String, Object?> encode() => {
    'metrics': [for (final e in metrics) e.toTfJson()],
  };
}

/// `metrics` — derived from the provider schema description.
enum LambdaEventSourceMappingMetricsConfigMetrics implements TerraformEnum {
  eventcount('EventCount'),
  errorcount('ErrorCount'),
  kafkametrics('KafkaMetrics');

  const LambdaEventSourceMappingMetricsConfigMetrics(this.terraformValue);
  @override
  final String terraformValue;
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
    'maximum_pollers': ?maximumPollers?.toTfJson(),
    'minimum_pollers': ?minimumPollers?.toTfJson(),
    'poller_group_name': ?pollerGroupName?.toTfJson(),
  };
}

/// Typed helper for the `scaling_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingScalingConfig {
  const LambdaEventSourceMappingScalingConfig({this.maximumConcurrency});

  final TfArg<num>? maximumConcurrency;

  Map<String, Object?> encode() => {
    'maximum_concurrency': ?maximumConcurrency?.toTfJson(),
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
    'consumer_group_id': ?consumerGroupId?.toTfJson(),
    'schema_registry_config': ?schemaRegistryConfig?.encode(),
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

  final TfArg<
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat
  >?
  eventRecordFormat;

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
    'event_record_format': ?eventRecordFormat?.toTfJson(),
    'schema_registry_uri': ?schemaRegistryUri?.toTfJson(),
    if (accessConfig != null)
      'access_config': [for (final e in accessConfig!) e.encode()],
    if (schemaValidationConfig != null)
      'schema_validation_config': [
        for (final e in schemaValidationConfig!) e.encode(),
      ],
  };
}

/// `event_record_format` — derived from the provider schema description.
enum LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat
    implements TerraformEnum {
  json('JSON'),
  source('SOURCE');

  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `self_managed_kafka_event_source_config.schema_registry_config.access_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
    this.type,
    this.uri,
  });

  final TfArg<
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType
  >?
  type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType
    implements TerraformEnum {
  basicAuth('BASIC_AUTH'),
  clientCertificateTlsAuth('CLIENT_CERTIFICATE_TLS_AUTH'),
  serverRootCaCertificate('SERVER_ROOT_CA_CERTIFICATE');

  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `self_managed_kafka_event_source_config.schema_registry_config.schema_validation_config` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig {
  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig({
    this.attribute,
  });

  final TfArg<
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute
  >?
  attribute;

  Map<String, Object?> encode() => {'attribute': ?attribute?.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute
    implements TerraformEnum {
  key('KEY'),
  value('VALUE');

  const LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_access_configuration` block of
/// `aws_lambda_event_source_mapping` (derived from provider schema).
@immutable
final class LambdaEventSourceMappingSourceAccessConfiguration {
  const LambdaEventSourceMappingSourceAccessConfiguration({
    required this.type,
    required this.uri,
  });

  final TfArg<LambdaEventSourceMappingSourceAccessConfigurationType> type;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum LambdaEventSourceMappingSourceAccessConfigurationType
    implements TerraformEnum {
  basicAuth('BASIC_AUTH'),
  vpcSubnet('VPC_SUBNET'),
  vpcSecurityGroup('VPC_SECURITY_GROUP'),
  saslScram512Auth('SASL_SCRAM_512_AUTH'),
  saslScram256Auth('SASL_SCRAM_256_AUTH'),
  virtualHost('VIRTUAL_HOST'),
  clientCertificateTlsAuth('CLIENT_CERTIFICATE_TLS_AUTH'),
  serverRootCaCertificate('SERVER_ROOT_CA_CERTIFICATE');

  const LambdaEventSourceMappingSourceAccessConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lambda_event_source_mapping`.
final class AwsLambdaEventSourceMapping extends Resource {
  static const String tfType = 'aws_lambda_event_source_mapping';

  AwsLambdaEventSourceMapping({
    required super.localName,
    TfArg<num>? batchSize,
    TfArg<bool>? bisectBatchOnFunctionError,
    TfArg<bool>? enabled,
    required LambdaEventSourceMappingEventSource eventSource,
    required RefTo<AwsLambdaFunction> functionName,
    List<TfArg<LambdaEventSourceMappingFunctionResponseTypes>>?
    functionResponseTypes,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<num>? maximumBatchingWindowInSeconds,
    TfArg<num>? maximumRecordAgeInSeconds,
    TfArg<num>? maximumRetryAttempts,
    TfArg<num>? parallelizationFactor,
    TfArg<List<String>>? queues,
    TfArg<String>? region,
    TfArg<LambdaEventSourceMappingStartingPosition>? startingPosition,
    TfArg<String>? startingPositionTimestamp,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? topics,
    TfArg<num>? tumblingWindowInSeconds,
    TfArg<bool>? useResourceTimeoutForPropagation,
    LambdaEventSourceMappingManagedKafkaEventSourceConfig?
    managedKafkaEventSourceConfig,
    LambdaEventSourceMappingDestinationConfig? destinationConfig,
    LambdaEventSourceMappingDocumentDbEventSourceConfig?
    documentDbEventSourceConfig,
    LambdaEventSourceMappingFilterCriteria? filterCriteria,
    LambdaEventSourceMappingMetricsConfig? metricsConfig,
    LambdaEventSourceMappingProvisionedPollerConfig? provisionedPollerConfig,
    LambdaEventSourceMappingScalingConfig? scalingConfig,
    List<LambdaEventSourceMappingSourceAccessConfiguration>?
    sourceAccessConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'batch_size': ?batchSize,
           'bisect_batch_on_function_error': ?bisectBatchOnFunctionError,
           'enabled': ?enabled,
           ...eventSource.argMap,
           'function_name': functionName.encodeAs('function_name'),
           if (functionResponseTypes != null)
             'function_response_types': TfArg.literal([
               for (final e in functionResponseTypes) e.toTfJson(),
             ]),
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'maximum_batching_window_in_seconds':
               ?maximumBatchingWindowInSeconds,
           'maximum_record_age_in_seconds': ?maximumRecordAgeInSeconds,
           'maximum_retry_attempts': ?maximumRetryAttempts,
           'parallelization_factor': ?parallelizationFactor,
           'queues': ?queues,
           'region': ?region,
           'starting_position': ?startingPosition,
           'starting_position_timestamp': ?startingPositionTimestamp,
           'tags': ?tags,
           'topics': ?topics,
           'tumbling_window_in_seconds': ?tumblingWindowInSeconds,
           'use_resource_timeout_for_propagation':
               ?useResourceTimeoutForPropagation,
           ...?managedKafkaEventSourceConfig?.argMap,
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
           if (sourceAccessConfiguration != null)
             'source_access_configuration': TfArg.literal([
               for (final e in sourceAccessConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaEventSourceMappingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdaEventSourceMapping>`.
  RefTo<AwsLambdaEventSourceMapping> get ref => RefTo.of(this);

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

  /// Reference to `batch_size` attribute.
  TfRef<num> get batchSizeRef => TfRef.attribute<num>(this, 'batch_size');

  /// Reference to `bisect_batch_on_function_error` attribute.
  TfRef<bool> get bisectBatchOnFunctionErrorRef =>
      TfRef.attribute<bool>(this, 'bisect_batch_on_function_error');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `event_source_arn` attribute.
  TfRef<String> get eventSourceArnRef =>
      TfRef.attribute<String>(this, 'event_source_arn');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionNameRef =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `function_response_types` attribute.
  TfRef<List<String>> get functionResponseTypesRef =>
      TfRef.attribute<List<String>>(this, 'function_response_types');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArnRef =>
      TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `maximum_batching_window_in_seconds` attribute.
  TfRef<num> get maximumBatchingWindowInSecondsRef =>
      TfRef.attribute<num>(this, 'maximum_batching_window_in_seconds');

  /// Reference to `maximum_record_age_in_seconds` attribute.
  TfRef<num> get maximumRecordAgeInSecondsRef =>
      TfRef.attribute<num>(this, 'maximum_record_age_in_seconds');

  /// Reference to `maximum_retry_attempts` attribute.
  TfRef<num> get maximumRetryAttemptsRef =>
      TfRef.attribute<num>(this, 'maximum_retry_attempts');

  /// Reference to `parallelization_factor` attribute.
  TfRef<num> get parallelizationFactorRef =>
      TfRef.attribute<num>(this, 'parallelization_factor');

  /// Reference to `queues` attribute.
  TfRef<List<String>> get queuesRef =>
      TfRef.attribute<List<String>>(this, 'queues');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `starting_position` attribute.
  TfRef<String> get startingPositionRef =>
      TfRef.attribute<String>(this, 'starting_position');

  /// Reference to `starting_position_timestamp` attribute.
  TfRef<String> get startingPositionTimestampRef =>
      TfRef.attribute<String>(this, 'starting_position_timestamp');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `topics` attribute.
  TfRef<List<String>> get topicsRef =>
      TfRef.attribute<List<String>>(this, 'topics');

  /// Reference to `tumbling_window_in_seconds` attribute.
  TfRef<num> get tumblingWindowInSecondsRef =>
      TfRef.attribute<num>(this, 'tumbling_window_in_seconds');

  /// Reference to `use_resource_timeout_for_propagation` attribute.
  TfRef<bool> get useResourceTimeoutForPropagationRef =>
      TfRef.attribute<bool>(this, 'use_resource_timeout_for_propagation');
}
