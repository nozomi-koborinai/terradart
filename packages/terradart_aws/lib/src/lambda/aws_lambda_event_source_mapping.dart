// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
sealed class LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource {
  const LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource();

  /// Sets `event_source_arn`.
  const factory LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource.eventSourceArn(
    TfArg<String> eventSourceArn,
  ) = LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceEventSourceArn;

  /// Sets `self_managed_event_source`.
  const factory LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource.selfManagedEventSource(
    LambdaEventSourceMappingSelfManagedEventSource selfManagedEventSource,
  ) = LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceSelfManagedEventSource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource.eventSourceArn] choice: sets `event_source_arn`.
final class LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceEventSourceArn
    extends LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource {
  const LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceEventSourceArn(
    this.eventSourceArn,
  );

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

/// The [LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource.selfManagedEventSource] choice: sets `self_managed_event_source`.
final class LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceSelfManagedEventSource
    extends LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource {
  const LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceSelfManagedEventSource(
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
sealed class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig();

  /// Sets `amazon_managed_kafka_event_source_config`.
  const factory LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig.amazonManagedKafkaEventSourceConfig(
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfig
    amazonManagedKafkaEventSourceConfig,
  ) = LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigAmazonManagedKafkaEventSourceConfig;

  /// Sets `self_managed_kafka_event_source_config`.
  const factory LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig.selfManagedKafkaEventSourceConfig(
    LambdaEventSourceMappingSelfManagedKafkaEventSourceConfig
    selfManagedKafkaEventSourceConfig,
  ) = LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigSelfManagedKafkaEventSourceConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig.amazonManagedKafkaEventSourceConfig] choice: sets `amazon_managed_kafka_event_source_config`.
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigAmazonManagedKafkaEventSourceConfig
    extends
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigAmazonManagedKafkaEventSourceConfig(
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

/// The [LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig.selfManagedKafkaEventSourceConfig] choice: sets `self_managed_kafka_event_source_config`.
final class LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigSelfManagedKafkaEventSourceConfig
    extends
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig {
  const LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigSelfManagedKafkaEventSourceConfig(
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
    if (type != null) 'type': type!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
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

  final TfArg<LambdaEventSourceMappingDocumentDbEventSourceConfigFullDocument>?
  fullDocument;

  Map<String, Object?> encode() => {
    if (collectionName != null) 'collection_name': collectionName!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (fullDocument != null) 'full_document': fullDocument!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (pattern != null) 'pattern': pattern!.toTfJson(),
  };
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
    if (type != null) 'type': type!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
  };
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
    required LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource
    eventSourceArnOrSelfManagedEventSource,
    required TfArg<String> functionName,
    List<TfArg<LambdaEventSourceMappingFunctionResponseTypes>>?
    functionResponseTypes,
    TfArg<String>? kmsKeyArn,
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
    LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig?
    amazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig,
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
           if (batchSize != null) 'batch_size': batchSize,
           if (bisectBatchOnFunctionError != null)
             'bisect_batch_on_function_error': bisectBatchOnFunctionError,
           if (enabled != null) 'enabled': enabled,
           ...eventSourceArnOrSelfManagedEventSource.argMap,
           'function_name': functionName,
           if (functionResponseTypes != null)
             'function_response_types': TfArg.literal([
               for (final e in functionResponseTypes) e.toTfJson(),
             ]),
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
           ...?amazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig
               ?.argMap,
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
