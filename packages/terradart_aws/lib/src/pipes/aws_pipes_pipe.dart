// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_pipes_pipe`.
const Set<String> _awsPipesPipeSensitive = <String>{};

/// Pipes Pipe Desired enum for `desired_state`.
enum PipesPipeDesiredState implements TerraformEnum {
  running('RUNNING'),
  stopped('STOPPED');

  const PipesPipeDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_pipes_pipe`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class PipesPipeName {
  const PipesPipeName();

  /// Sets `name`.
  const factory PipesPipeName.name(TfArg<String> name) = PipesPipeNameName;

  /// Sets `name_prefix`.
  const factory PipesPipeName.namePrefix(TfArg<String> namePrefix) =
      PipesPipeNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PipesPipeName.name] choice: sets `name`.
final class PipesPipeNameName extends PipesPipeName {
  const PipesPipeNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [PipesPipeName.namePrefix] choice: sets `name_prefix`.
final class PipesPipeNameNamePrefix extends PipesPipeName {
  const PipesPipeNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `enrichment_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeEnrichmentParameters {
  const PipesPipeEnrichmentParameters({
    this.inputTemplate,
    this.httpParameters,
  });

  final TfArg<String>? inputTemplate;

  final PipesPipeEnrichmentParametersHttpParameters? httpParameters;

  Map<String, Object?> encode() => {
    if (inputTemplate != null) 'input_template': inputTemplate!.toTfJson(),
    if (httpParameters != null) 'http_parameters': httpParameters!.encode(),
  };
}

/// Typed helper for the `enrichment_parameters.http_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeEnrichmentParametersHttpParameters {
  const PipesPipeEnrichmentParametersHttpParameters({
    this.headerParameters,
    this.pathParameterValues,
    this.queryStringParameters,
  });

  final TfArg<Map<String, String>>? headerParameters;

  final TfArg<List<Object?>>? pathParameterValues;

  final TfArg<Map<String, String>>? queryStringParameters;

  Map<String, Object?> encode() => {
    if (headerParameters != null)
      'header_parameters': headerParameters!.toTfJson(),
    if (pathParameterValues != null)
      'path_parameter_values': pathParameterValues!.toTfJson(),
    if (queryStringParameters != null)
      'query_string_parameters': queryStringParameters!.toTfJson(),
  };
}

/// Typed helper for the `log_configuration` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeLogConfiguration {
  const PipesPipeLogConfiguration({
    this.includeExecutionData,
    required this.level,
    this.cloudwatchLogsLogDestination,
    this.firehoseLogDestination,
    this.s3LogDestination,
  });

  final List<TfArg<PipesPipeLogConfigurationIncludeExecutionData>>?
  includeExecutionData;

  final TfArg<PipesPipeLogConfigurationLevel> level;

  final PipesPipeLogConfigurationCloudwatchLogsLogDestination?
  cloudwatchLogsLogDestination;

  final PipesPipeLogConfigurationFirehoseLogDestination? firehoseLogDestination;

  final PipesPipeLogConfigurationS3LogDestination? s3LogDestination;

  Map<String, Object?> encode() => {
    if (includeExecutionData != null)
      'include_execution_data': [
        for (final e in includeExecutionData!) e.toTfJson(),
      ],
    'level': level.toTfJson(),
    if (cloudwatchLogsLogDestination != null)
      'cloudwatch_logs_log_destination': cloudwatchLogsLogDestination!.encode(),
    if (firehoseLogDestination != null)
      'firehose_log_destination': firehoseLogDestination!.encode(),
    if (s3LogDestination != null)
      's3_log_destination': s3LogDestination!.encode(),
  };
}

/// `include_execution_data` — derived from the provider schema description.
enum PipesPipeLogConfigurationIncludeExecutionData implements TerraformEnum {
  all('ALL');

  const PipesPipeLogConfigurationIncludeExecutionData(this.terraformValue);
  @override
  final String terraformValue;
}

/// `level` — derived from the provider schema description.
enum PipesPipeLogConfigurationLevel implements TerraformEnum {
  off('OFF'),
  error('ERROR'),
  info('INFO'),
  trace('TRACE');

  const PipesPipeLogConfigurationLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `log_configuration.cloudwatch_logs_log_destination` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeLogConfigurationCloudwatchLogsLogDestination {
  const PipesPipeLogConfigurationCloudwatchLogsLogDestination({
    required this.logGroupArn,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroupArn;

  Map<String, Object?> encode() => {
    'log_group_arn': logGroupArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `log_configuration.firehose_log_destination` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeLogConfigurationFirehoseLogDestination {
  const PipesPipeLogConfigurationFirehoseLogDestination({
    required this.deliveryStreamArn,
  });

  final TfArg<String> deliveryStreamArn;

  Map<String, Object?> encode() => {
    'delivery_stream_arn': deliveryStreamArn.toTfJson(),
  };
}

/// Typed helper for the `log_configuration.s3_log_destination` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeLogConfigurationS3LogDestination {
  const PipesPipeLogConfigurationS3LogDestination({
    required this.bucketName,
    required this.bucketOwner,
    this.outputFormat,
    this.prefix,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String> bucketOwner;

  final TfArg<PipesPipeLogConfigurationS3LogDestinationOutputFormat>?
  outputFormat;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_owner': bucketOwner.toTfJson(),
    if (outputFormat != null) 'output_format': outputFormat!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// `output_format` — derived from the provider schema description.
enum PipesPipeLogConfigurationS3LogDestinationOutputFormat
    implements TerraformEnum {
  json('json'),
  plain('plain'),
  w3c('w3c');

  const PipesPipeLogConfigurationS3LogDestinationOutputFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParameters {
  const PipesPipeSourceParameters({this.parameters, this.filterCriteria});

  final PipesPipeSourceParametersParameters? parameters;

  final PipesPipeSourceParametersFilterCriteria? filterCriteria;

  Map<String, Object?> encode() => {
    ...?parameters?.encode(),
    if (filterCriteria != null) 'filter_criteria': filterCriteria!.encode(),
  };
}

/// At most one of `activemq_broker_parameters`, `dynamodb_stream_parameters`, `kinesis_stream_parameters`, `managed_streaming_kafka_parameters`, `rabbitmq_broker_parameters`, `self_managed_kafka_parameters`, `sqs_queue_parameters` on the `source_parameters` block of `aws_pipes_pipe`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.activemqBrokerParameters(...)`.
sealed class PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParameters();

  /// Sets `activemq_broker_parameters`.
  const factory PipesPipeSourceParametersParameters.activemqBrokerParameters(
    PipesPipeSourceParametersActivemqBrokerParameters activemqBrokerParameters,
  ) = PipesPipeSourceParametersParametersActivemqBrokerParameters;

  /// Sets `dynamodb_stream_parameters`.
  const factory PipesPipeSourceParametersParameters.dynamodbStreamParameters(
    PipesPipeSourceParametersDynamodbStreamParameters dynamodbStreamParameters,
  ) = PipesPipeSourceParametersParametersDynamodbStreamParameters;

  /// Sets `kinesis_stream_parameters`.
  const factory PipesPipeSourceParametersParameters.kinesisStreamParameters(
    PipesPipeSourceParametersKinesisStreamParameters kinesisStreamParameters,
  ) = PipesPipeSourceParametersParametersKinesisStreamParameters;

  /// Sets `managed_streaming_kafka_parameters`.
  const factory PipesPipeSourceParametersParameters.managedStreamingKafkaParameters(
    PipesPipeSourceParametersManagedStreamingKafkaParameters
    managedStreamingKafkaParameters,
  ) = PipesPipeSourceParametersParametersManagedStreamingKafkaParameters;

  /// Sets `rabbitmq_broker_parameters`.
  const factory PipesPipeSourceParametersParameters.rabbitmqBrokerParameters(
    PipesPipeSourceParametersRabbitmqBrokerParameters rabbitmqBrokerParameters,
  ) = PipesPipeSourceParametersParametersRabbitmqBrokerParameters;

  /// Sets `self_managed_kafka_parameters`.
  const factory PipesPipeSourceParametersParameters.selfManagedKafkaParameters(
    PipesPipeSourceParametersSelfManagedKafkaParameters
    selfManagedKafkaParameters,
  ) = PipesPipeSourceParametersParametersSelfManagedKafkaParameters;

  /// Sets `sqs_queue_parameters`.
  const factory PipesPipeSourceParametersParameters.sqsQueueParameters(
    PipesPipeSourceParametersSqsQueueParameters sqsQueueParameters,
  ) = PipesPipeSourceParametersParametersSqsQueueParameters;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PipesPipeSourceParametersParameters.activemqBrokerParameters] choice: sets `activemq_broker_parameters`.
final class PipesPipeSourceParametersParametersActivemqBrokerParameters
    extends PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParametersActivemqBrokerParameters(
    this.activemqBrokerParameters,
  );

  final PipesPipeSourceParametersActivemqBrokerParameters
  activemqBrokerParameters;

  @override
  String get blockKey => 'activemq_broker_parameters';

  @override
  Map<String, Object?> encode() => {
    'activemq_broker_parameters': activemqBrokerParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersParameters.dynamodbStreamParameters] choice: sets `dynamodb_stream_parameters`.
final class PipesPipeSourceParametersParametersDynamodbStreamParameters
    extends PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParametersDynamodbStreamParameters(
    this.dynamodbStreamParameters,
  );

  final PipesPipeSourceParametersDynamodbStreamParameters
  dynamodbStreamParameters;

  @override
  String get blockKey => 'dynamodb_stream_parameters';

  @override
  Map<String, Object?> encode() => {
    'dynamodb_stream_parameters': dynamodbStreamParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersParameters.kinesisStreamParameters] choice: sets `kinesis_stream_parameters`.
final class PipesPipeSourceParametersParametersKinesisStreamParameters
    extends PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParametersKinesisStreamParameters(
    this.kinesisStreamParameters,
  );

  final PipesPipeSourceParametersKinesisStreamParameters
  kinesisStreamParameters;

  @override
  String get blockKey => 'kinesis_stream_parameters';

  @override
  Map<String, Object?> encode() => {
    'kinesis_stream_parameters': kinesisStreamParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersParameters.managedStreamingKafkaParameters] choice: sets `managed_streaming_kafka_parameters`.
final class PipesPipeSourceParametersParametersManagedStreamingKafkaParameters
    extends PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParametersManagedStreamingKafkaParameters(
    this.managedStreamingKafkaParameters,
  );

  final PipesPipeSourceParametersManagedStreamingKafkaParameters
  managedStreamingKafkaParameters;

  @override
  String get blockKey => 'managed_streaming_kafka_parameters';

  @override
  Map<String, Object?> encode() => {
    'managed_streaming_kafka_parameters': managedStreamingKafkaParameters
        .encode(),
  };
}

/// The [PipesPipeSourceParametersParameters.rabbitmqBrokerParameters] choice: sets `rabbitmq_broker_parameters`.
final class PipesPipeSourceParametersParametersRabbitmqBrokerParameters
    extends PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParametersRabbitmqBrokerParameters(
    this.rabbitmqBrokerParameters,
  );

  final PipesPipeSourceParametersRabbitmqBrokerParameters
  rabbitmqBrokerParameters;

  @override
  String get blockKey => 'rabbitmq_broker_parameters';

  @override
  Map<String, Object?> encode() => {
    'rabbitmq_broker_parameters': rabbitmqBrokerParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersParameters.selfManagedKafkaParameters] choice: sets `self_managed_kafka_parameters`.
final class PipesPipeSourceParametersParametersSelfManagedKafkaParameters
    extends PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParametersSelfManagedKafkaParameters(
    this.selfManagedKafkaParameters,
  );

  final PipesPipeSourceParametersSelfManagedKafkaParameters
  selfManagedKafkaParameters;

  @override
  String get blockKey => 'self_managed_kafka_parameters';

  @override
  Map<String, Object?> encode() => {
    'self_managed_kafka_parameters': selfManagedKafkaParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersParameters.sqsQueueParameters] choice: sets `sqs_queue_parameters`.
final class PipesPipeSourceParametersParametersSqsQueueParameters
    extends PipesPipeSourceParametersParameters {
  const PipesPipeSourceParametersParametersSqsQueueParameters(
    this.sqsQueueParameters,
  );

  final PipesPipeSourceParametersSqsQueueParameters sqsQueueParameters;

  @override
  String get blockKey => 'sqs_queue_parameters';

  @override
  Map<String, Object?> encode() => {
    'sqs_queue_parameters': sqsQueueParameters.encode(),
  };
}

/// Typed helper for the `source_parameters.activemq_broker_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersActivemqBrokerParameters {
  const PipesPipeSourceParametersActivemqBrokerParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
    required this.queueName,
    required this.credentials,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<String> queueName;

  final PipesPipeSourceParametersActivemqBrokerParametersCredentials
  credentials;

  Map<String, Object?> encode() => {
    if (batchSize != null) 'batch_size': batchSize!.toTfJson(),
    if (maximumBatchingWindowInSeconds != null)
      'maximum_batching_window_in_seconds': maximumBatchingWindowInSeconds!
          .toTfJson(),
    'queue_name': queueName.toTfJson(),
    'credentials': credentials.encode(),
  };
}

/// Typed helper for the `source_parameters.activemq_broker_parameters.credentials` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersActivemqBrokerParametersCredentials {
  const PipesPipeSourceParametersActivemqBrokerParametersCredentials({
    required this.basicAuth,
  });

  final TfArg<String> basicAuth;

  Map<String, Object?> encode() => {'basic_auth': basicAuth.toTfJson()};
}

/// Typed helper for the `source_parameters.dynamodb_stream_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersDynamodbStreamParameters {
  const PipesPipeSourceParametersDynamodbStreamParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
    this.maximumRecordAgeInSeconds,
    this.maximumRetryAttempts,
    this.onPartialBatchItemFailure,
    this.parallelizationFactor,
    required this.startingPosition,
    this.deadLetterConfig,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<num>? maximumRecordAgeInSeconds;

  final TfArg<num>? maximumRetryAttempts;

  final TfArg<
    PipesPipeSourceParametersDynamodbStreamParametersOnPartialBatchItemFailure
  >?
  onPartialBatchItemFailure;

  final TfArg<num>? parallelizationFactor;

  final TfArg<PipesPipeSourceParametersDynamodbStreamParametersStartingPosition>
  startingPosition;

  final PipesPipeSourceParametersDynamodbStreamParametersDeadLetterConfig?
  deadLetterConfig;

  Map<String, Object?> encode() => {
    if (batchSize != null) 'batch_size': batchSize!.toTfJson(),
    if (maximumBatchingWindowInSeconds != null)
      'maximum_batching_window_in_seconds': maximumBatchingWindowInSeconds!
          .toTfJson(),
    if (maximumRecordAgeInSeconds != null)
      'maximum_record_age_in_seconds': maximumRecordAgeInSeconds!.toTfJson(),
    if (maximumRetryAttempts != null)
      'maximum_retry_attempts': maximumRetryAttempts!.toTfJson(),
    if (onPartialBatchItemFailure != null)
      'on_partial_batch_item_failure': onPartialBatchItemFailure!.toTfJson(),
    if (parallelizationFactor != null)
      'parallelization_factor': parallelizationFactor!.toTfJson(),
    'starting_position': startingPosition.toTfJson(),
    if (deadLetterConfig != null)
      'dead_letter_config': deadLetterConfig!.encode(),
  };
}

/// `on_partial_batch_item_failure` — derived from the provider schema description.
enum PipesPipeSourceParametersDynamodbStreamParametersOnPartialBatchItemFailure
    implements TerraformEnum {
  automaticBisect('AUTOMATIC_BISECT');

  const PipesPipeSourceParametersDynamodbStreamParametersOnPartialBatchItemFailure(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `starting_position` — derived from the provider schema description.
enum PipesPipeSourceParametersDynamodbStreamParametersStartingPosition
    implements TerraformEnum {
  trimHorizon('TRIM_HORIZON'),
  latest('LATEST');

  const PipesPipeSourceParametersDynamodbStreamParametersStartingPosition(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters.dynamodb_stream_parameters.dead_letter_config` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersDynamodbStreamParametersDeadLetterConfig {
  const PipesPipeSourceParametersDynamodbStreamParametersDeadLetterConfig({
    this.arn,
  });

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {if (arn != null) 'arn': arn!.toTfJson()};
}

/// Typed helper for the `source_parameters.filter_criteria` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersFilterCriteria {
  const PipesPipeSourceParametersFilterCriteria({this.filter});

  final List<PipesPipeSourceParametersFilterCriteriaFilter>? filter;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `source_parameters.filter_criteria.filter` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersFilterCriteriaFilter {
  const PipesPipeSourceParametersFilterCriteriaFilter({required this.pattern});

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {'pattern': pattern.toTfJson()};
}

/// Typed helper for the `source_parameters.kinesis_stream_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersKinesisStreamParameters {
  const PipesPipeSourceParametersKinesisStreamParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
    this.maximumRecordAgeInSeconds,
    this.maximumRetryAttempts,
    this.onPartialBatchItemFailure,
    this.parallelizationFactor,
    required this.startingPosition,
    this.startingPositionTimestamp,
    this.deadLetterConfig,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<num>? maximumRecordAgeInSeconds;

  final TfArg<num>? maximumRetryAttempts;

  final TfArg<
    PipesPipeSourceParametersKinesisStreamParametersOnPartialBatchItemFailure
  >?
  onPartialBatchItemFailure;

  final TfArg<num>? parallelizationFactor;

  final TfArg<PipesPipeSourceParametersKinesisStreamParametersStartingPosition>
  startingPosition;

  final TfArg<String>? startingPositionTimestamp;

  final PipesPipeSourceParametersKinesisStreamParametersDeadLetterConfig?
  deadLetterConfig;

  Map<String, Object?> encode() => {
    if (batchSize != null) 'batch_size': batchSize!.toTfJson(),
    if (maximumBatchingWindowInSeconds != null)
      'maximum_batching_window_in_seconds': maximumBatchingWindowInSeconds!
          .toTfJson(),
    if (maximumRecordAgeInSeconds != null)
      'maximum_record_age_in_seconds': maximumRecordAgeInSeconds!.toTfJson(),
    if (maximumRetryAttempts != null)
      'maximum_retry_attempts': maximumRetryAttempts!.toTfJson(),
    if (onPartialBatchItemFailure != null)
      'on_partial_batch_item_failure': onPartialBatchItemFailure!.toTfJson(),
    if (parallelizationFactor != null)
      'parallelization_factor': parallelizationFactor!.toTfJson(),
    'starting_position': startingPosition.toTfJson(),
    if (startingPositionTimestamp != null)
      'starting_position_timestamp': startingPositionTimestamp!.toTfJson(),
    if (deadLetterConfig != null)
      'dead_letter_config': deadLetterConfig!.encode(),
  };
}

/// `on_partial_batch_item_failure` — derived from the provider schema description.
enum PipesPipeSourceParametersKinesisStreamParametersOnPartialBatchItemFailure
    implements TerraformEnum {
  automaticBisect('AUTOMATIC_BISECT');

  const PipesPipeSourceParametersKinesisStreamParametersOnPartialBatchItemFailure(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `starting_position` — derived from the provider schema description.
enum PipesPipeSourceParametersKinesisStreamParametersStartingPosition
    implements TerraformEnum {
  trimHorizon('TRIM_HORIZON'),
  latest('LATEST'),
  atTimestamp('AT_TIMESTAMP');

  const PipesPipeSourceParametersKinesisStreamParametersStartingPosition(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters.kinesis_stream_parameters.dead_letter_config` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersKinesisStreamParametersDeadLetterConfig {
  const PipesPipeSourceParametersKinesisStreamParametersDeadLetterConfig({
    this.arn,
  });

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {if (arn != null) 'arn': arn!.toTfJson()};
}

/// Typed helper for the `source_parameters.managed_streaming_kafka_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersManagedStreamingKafkaParameters {
  const PipesPipeSourceParametersManagedStreamingKafkaParameters({
    this.batchSize,
    this.consumerGroupId,
    this.maximumBatchingWindowInSeconds,
    this.startingPosition,
    required this.topicName,
    this.credentials,
  });

  final TfArg<num>? batchSize;

  final TfArg<String>? consumerGroupId;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<
    PipesPipeSourceParametersManagedStreamingKafkaParametersStartingPosition
  >?
  startingPosition;

  final TfArg<String> topicName;

  final PipesPipeSourceParametersManagedStreamingKafkaParametersCredentials?
  credentials;

  Map<String, Object?> encode() => {
    if (batchSize != null) 'batch_size': batchSize!.toTfJson(),
    if (consumerGroupId != null)
      'consumer_group_id': consumerGroupId!.toTfJson(),
    if (maximumBatchingWindowInSeconds != null)
      'maximum_batching_window_in_seconds': maximumBatchingWindowInSeconds!
          .toTfJson(),
    if (startingPosition != null)
      'starting_position': startingPosition!.toTfJson(),
    'topic_name': topicName.toTfJson(),
    if (credentials != null) 'credentials': credentials!.encode(),
  };
}

/// `starting_position` — derived from the provider schema description.
enum PipesPipeSourceParametersManagedStreamingKafkaParametersStartingPosition
    implements TerraformEnum {
  trimHorizon('TRIM_HORIZON'),
  latest('LATEST');

  const PipesPipeSourceParametersManagedStreamingKafkaParametersStartingPosition(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters.managed_streaming_kafka_parameters.credentials` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersManagedStreamingKafkaParametersCredentials {
  const PipesPipeSourceParametersManagedStreamingKafkaParametersCredentials({
    this.clientCertificateTlsAuth,
    this.saslScram512Auth,
  });

  final TfArg<String>? clientCertificateTlsAuth;

  final TfArg<String>? saslScram512Auth;

  Map<String, Object?> encode() => {
    if (clientCertificateTlsAuth != null)
      'client_certificate_tls_auth': clientCertificateTlsAuth!.toTfJson(),
    if (saslScram512Auth != null)
      'sasl_scram_512_auth': saslScram512Auth!.toTfJson(),
  };
}

/// Typed helper for the `source_parameters.rabbitmq_broker_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersRabbitmqBrokerParameters {
  const PipesPipeSourceParametersRabbitmqBrokerParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
    required this.queueName,
    this.virtualHost,
    required this.credentials,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<String> queueName;

  final TfArg<String>? virtualHost;

  final PipesPipeSourceParametersRabbitmqBrokerParametersCredentials
  credentials;

  Map<String, Object?> encode() => {
    if (batchSize != null) 'batch_size': batchSize!.toTfJson(),
    if (maximumBatchingWindowInSeconds != null)
      'maximum_batching_window_in_seconds': maximumBatchingWindowInSeconds!
          .toTfJson(),
    'queue_name': queueName.toTfJson(),
    if (virtualHost != null) 'virtual_host': virtualHost!.toTfJson(),
    'credentials': credentials.encode(),
  };
}

/// Typed helper for the `source_parameters.rabbitmq_broker_parameters.credentials` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersRabbitmqBrokerParametersCredentials {
  const PipesPipeSourceParametersRabbitmqBrokerParametersCredentials({
    required this.basicAuth,
  });

  final TfArg<String> basicAuth;

  Map<String, Object?> encode() => {'basic_auth': basicAuth.toTfJson()};
}

/// Typed helper for the `source_parameters.self_managed_kafka_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersSelfManagedKafkaParameters {
  const PipesPipeSourceParametersSelfManagedKafkaParameters({
    this.additionalBootstrapServers,
    this.batchSize,
    this.consumerGroupId,
    this.maximumBatchingWindowInSeconds,
    this.serverRootCaCertificate,
    this.startingPosition,
    required this.topicName,
    this.credentials,
    this.vpc,
  });

  final TfArg<List<Object?>>? additionalBootstrapServers;

  final TfArg<num>? batchSize;

  final TfArg<String>? consumerGroupId;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<String>? serverRootCaCertificate;

  final TfArg<
    PipesPipeSourceParametersSelfManagedKafkaParametersStartingPosition
  >?
  startingPosition;

  final TfArg<String> topicName;

  final PipesPipeSourceParametersSelfManagedKafkaParametersCredentials?
  credentials;

  final PipesPipeSourceParametersSelfManagedKafkaParametersVpc? vpc;

  Map<String, Object?> encode() => {
    if (additionalBootstrapServers != null)
      'additional_bootstrap_servers': additionalBootstrapServers!.toTfJson(),
    if (batchSize != null) 'batch_size': batchSize!.toTfJson(),
    if (consumerGroupId != null)
      'consumer_group_id': consumerGroupId!.toTfJson(),
    if (maximumBatchingWindowInSeconds != null)
      'maximum_batching_window_in_seconds': maximumBatchingWindowInSeconds!
          .toTfJson(),
    if (serverRootCaCertificate != null)
      'server_root_ca_certificate': serverRootCaCertificate!.toTfJson(),
    if (startingPosition != null)
      'starting_position': startingPosition!.toTfJson(),
    'topic_name': topicName.toTfJson(),
    if (credentials != null) 'credentials': credentials!.encode(),
    if (vpc != null) 'vpc': vpc!.encode(),
  };
}

/// `starting_position` — derived from the provider schema description.
enum PipesPipeSourceParametersSelfManagedKafkaParametersStartingPosition
    implements TerraformEnum {
  trimHorizon('TRIM_HORIZON'),
  latest('LATEST');

  const PipesPipeSourceParametersSelfManagedKafkaParametersStartingPosition(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters.self_managed_kafka_parameters.credentials` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersSelfManagedKafkaParametersCredentials {
  const PipesPipeSourceParametersSelfManagedKafkaParametersCredentials({
    this.basicAuth,
    this.clientCertificateTlsAuth,
    this.saslScram256Auth,
    this.saslScram512Auth,
  });

  final TfArg<String>? basicAuth;

  final TfArg<String>? clientCertificateTlsAuth;

  final TfArg<String>? saslScram256Auth;

  final TfArg<String>? saslScram512Auth;

  Map<String, Object?> encode() => {
    if (basicAuth != null) 'basic_auth': basicAuth!.toTfJson(),
    if (clientCertificateTlsAuth != null)
      'client_certificate_tls_auth': clientCertificateTlsAuth!.toTfJson(),
    if (saslScram256Auth != null)
      'sasl_scram_256_auth': saslScram256Auth!.toTfJson(),
    if (saslScram512Auth != null)
      'sasl_scram_512_auth': saslScram512Auth!.toTfJson(),
  };
}

/// Typed helper for the `source_parameters.self_managed_kafka_parameters.vpc` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersSelfManagedKafkaParametersVpc {
  const PipesPipeSourceParametersSelfManagedKafkaParametersVpc({
    this.securityGroups,
    this.subnets,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>>? subnets;

  Map<String, Object?> encode() => {
    if (securityGroups != null)
      'security_groups': securityGroups!.encodeAs('id').toTfJson(),
    if (subnets != null) 'subnets': subnets!.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `source_parameters.sqs_queue_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParametersSqsQueueParameters {
  const PipesPipeSourceParametersSqsQueueParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  Map<String, Object?> encode() => {
    if (batchSize != null) 'batch_size': batchSize!.toTfJson(),
    if (maximumBatchingWindowInSeconds != null)
      'maximum_batching_window_in_seconds': maximumBatchingWindowInSeconds!
          .toTfJson(),
  };
}

/// Typed helper for the `target_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParameters {
  const PipesPipeTargetParameters({this.inputTemplate, this.parameters});

  final TfArg<String>? inputTemplate;

  final PipesPipeTargetParametersParameters? parameters;

  Map<String, Object?> encode() => {
    if (inputTemplate != null) 'input_template': inputTemplate!.toTfJson(),
    ...?parameters?.encode(),
  };
}

/// At most one of `batch_job_parameters`, `cloudwatch_logs_parameters`, `ecs_task_parameters`, `eventbridge_event_bus_parameters`, `http_parameters`, `kinesis_stream_parameters`, `lambda_function_parameters`, `redshift_data_parameters`, `sagemaker_pipeline_parameters`, `sqs_queue_parameters`, `step_function_state_machine_parameters` on the `target_parameters` block of `aws_pipes_pipe`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.batchJobParameters(...)`.
sealed class PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParameters();

  /// Sets `batch_job_parameters`.
  const factory PipesPipeTargetParametersParameters.batchJobParameters(
    PipesPipeTargetParametersBatchJobParameters batchJobParameters,
  ) = PipesPipeTargetParametersParametersBatchJobParameters;

  /// Sets `cloudwatch_logs_parameters`.
  const factory PipesPipeTargetParametersParameters.cloudwatchLogsParameters(
    PipesPipeTargetParametersCloudwatchLogsParameters cloudwatchLogsParameters,
  ) = PipesPipeTargetParametersParametersCloudwatchLogsParameters;

  /// Sets `ecs_task_parameters`.
  const factory PipesPipeTargetParametersParameters.ecsTaskParameters(
    PipesPipeTargetParametersEcsTaskParameters ecsTaskParameters,
  ) = PipesPipeTargetParametersParametersEcsTaskParameters;

  /// Sets `eventbridge_event_bus_parameters`.
  const factory PipesPipeTargetParametersParameters.eventbridgeEventBusParameters(
    PipesPipeTargetParametersEventbridgeEventBusParameters
    eventbridgeEventBusParameters,
  ) = PipesPipeTargetParametersParametersEventbridgeEventBusParameters;

  /// Sets `http_parameters`.
  const factory PipesPipeTargetParametersParameters.httpParameters(
    PipesPipeTargetParametersHttpParameters httpParameters,
  ) = PipesPipeTargetParametersParametersHttpParameters;

  /// Sets `kinesis_stream_parameters`.
  const factory PipesPipeTargetParametersParameters.kinesisStreamParameters(
    PipesPipeTargetParametersKinesisStreamParameters kinesisStreamParameters,
  ) = PipesPipeTargetParametersParametersKinesisStreamParameters;

  /// Sets `lambda_function_parameters`.
  const factory PipesPipeTargetParametersParameters.lambdaFunctionParameters(
    PipesPipeTargetParametersLambdaFunctionParameters lambdaFunctionParameters,
  ) = PipesPipeTargetParametersParametersLambdaFunctionParameters;

  /// Sets `redshift_data_parameters`.
  const factory PipesPipeTargetParametersParameters.redshiftDataParameters(
    PipesPipeTargetParametersRedshiftDataParameters redshiftDataParameters,
  ) = PipesPipeTargetParametersParametersRedshiftDataParameters;

  /// Sets `sagemaker_pipeline_parameters`.
  const factory PipesPipeTargetParametersParameters.sagemakerPipelineParameters(
    PipesPipeTargetParametersSagemakerPipelineParameters
    sagemakerPipelineParameters,
  ) = PipesPipeTargetParametersParametersSagemakerPipelineParameters;

  /// Sets `sqs_queue_parameters`.
  const factory PipesPipeTargetParametersParameters.sqsQueueParameters(
    PipesPipeTargetParametersSqsQueueParameters sqsQueueParameters,
  ) = PipesPipeTargetParametersParametersSqsQueueParameters;

  /// Sets `step_function_state_machine_parameters`.
  const factory PipesPipeTargetParametersParameters.stepFunctionStateMachineParameters(
    PipesPipeTargetParametersStepFunctionStateMachineParameters
    stepFunctionStateMachineParameters,
  ) = PipesPipeTargetParametersParametersStepFunctionStateMachineParameters;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PipesPipeTargetParametersParameters.batchJobParameters] choice: sets `batch_job_parameters`.
final class PipesPipeTargetParametersParametersBatchJobParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersBatchJobParameters(
    this.batchJobParameters,
  );

  final PipesPipeTargetParametersBatchJobParameters batchJobParameters;

  @override
  String get blockKey => 'batch_job_parameters';

  @override
  Map<String, Object?> encode() => {
    'batch_job_parameters': batchJobParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.cloudwatchLogsParameters] choice: sets `cloudwatch_logs_parameters`.
final class PipesPipeTargetParametersParametersCloudwatchLogsParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersCloudwatchLogsParameters(
    this.cloudwatchLogsParameters,
  );

  final PipesPipeTargetParametersCloudwatchLogsParameters
  cloudwatchLogsParameters;

  @override
  String get blockKey => 'cloudwatch_logs_parameters';

  @override
  Map<String, Object?> encode() => {
    'cloudwatch_logs_parameters': cloudwatchLogsParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.ecsTaskParameters] choice: sets `ecs_task_parameters`.
final class PipesPipeTargetParametersParametersEcsTaskParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersEcsTaskParameters(
    this.ecsTaskParameters,
  );

  final PipesPipeTargetParametersEcsTaskParameters ecsTaskParameters;

  @override
  String get blockKey => 'ecs_task_parameters';

  @override
  Map<String, Object?> encode() => {
    'ecs_task_parameters': ecsTaskParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.eventbridgeEventBusParameters] choice: sets `eventbridge_event_bus_parameters`.
final class PipesPipeTargetParametersParametersEventbridgeEventBusParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersEventbridgeEventBusParameters(
    this.eventbridgeEventBusParameters,
  );

  final PipesPipeTargetParametersEventbridgeEventBusParameters
  eventbridgeEventBusParameters;

  @override
  String get blockKey => 'eventbridge_event_bus_parameters';

  @override
  Map<String, Object?> encode() => {
    'eventbridge_event_bus_parameters': eventbridgeEventBusParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.httpParameters] choice: sets `http_parameters`.
final class PipesPipeTargetParametersParametersHttpParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersHttpParameters(this.httpParameters);

  final PipesPipeTargetParametersHttpParameters httpParameters;

  @override
  String get blockKey => 'http_parameters';

  @override
  Map<String, Object?> encode() => {'http_parameters': httpParameters.encode()};
}

/// The [PipesPipeTargetParametersParameters.kinesisStreamParameters] choice: sets `kinesis_stream_parameters`.
final class PipesPipeTargetParametersParametersKinesisStreamParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersKinesisStreamParameters(
    this.kinesisStreamParameters,
  );

  final PipesPipeTargetParametersKinesisStreamParameters
  kinesisStreamParameters;

  @override
  String get blockKey => 'kinesis_stream_parameters';

  @override
  Map<String, Object?> encode() => {
    'kinesis_stream_parameters': kinesisStreamParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.lambdaFunctionParameters] choice: sets `lambda_function_parameters`.
final class PipesPipeTargetParametersParametersLambdaFunctionParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersLambdaFunctionParameters(
    this.lambdaFunctionParameters,
  );

  final PipesPipeTargetParametersLambdaFunctionParameters
  lambdaFunctionParameters;

  @override
  String get blockKey => 'lambda_function_parameters';

  @override
  Map<String, Object?> encode() => {
    'lambda_function_parameters': lambdaFunctionParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.redshiftDataParameters] choice: sets `redshift_data_parameters`.
final class PipesPipeTargetParametersParametersRedshiftDataParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersRedshiftDataParameters(
    this.redshiftDataParameters,
  );

  final PipesPipeTargetParametersRedshiftDataParameters redshiftDataParameters;

  @override
  String get blockKey => 'redshift_data_parameters';

  @override
  Map<String, Object?> encode() => {
    'redshift_data_parameters': redshiftDataParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.sagemakerPipelineParameters] choice: sets `sagemaker_pipeline_parameters`.
final class PipesPipeTargetParametersParametersSagemakerPipelineParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersSagemakerPipelineParameters(
    this.sagemakerPipelineParameters,
  );

  final PipesPipeTargetParametersSagemakerPipelineParameters
  sagemakerPipelineParameters;

  @override
  String get blockKey => 'sagemaker_pipeline_parameters';

  @override
  Map<String, Object?> encode() => {
    'sagemaker_pipeline_parameters': sagemakerPipelineParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.sqsQueueParameters] choice: sets `sqs_queue_parameters`.
final class PipesPipeTargetParametersParametersSqsQueueParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersSqsQueueParameters(
    this.sqsQueueParameters,
  );

  final PipesPipeTargetParametersSqsQueueParameters sqsQueueParameters;

  @override
  String get blockKey => 'sqs_queue_parameters';

  @override
  Map<String, Object?> encode() => {
    'sqs_queue_parameters': sqsQueueParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersParameters.stepFunctionStateMachineParameters] choice: sets `step_function_state_machine_parameters`.
final class PipesPipeTargetParametersParametersStepFunctionStateMachineParameters
    extends PipesPipeTargetParametersParameters {
  const PipesPipeTargetParametersParametersStepFunctionStateMachineParameters(
    this.stepFunctionStateMachineParameters,
  );

  final PipesPipeTargetParametersStepFunctionStateMachineParameters
  stepFunctionStateMachineParameters;

  @override
  String get blockKey => 'step_function_state_machine_parameters';

  @override
  Map<String, Object?> encode() => {
    'step_function_state_machine_parameters': stepFunctionStateMachineParameters
        .encode(),
  };
}

/// Typed helper for the `target_parameters.batch_job_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersBatchJobParameters {
  const PipesPipeTargetParametersBatchJobParameters({
    required this.jobDefinition,
    required this.jobName,
    this.parameters,
    this.arrayProperties,
    this.containerOverrides,
    this.dependsOn,
    this.retryStrategy,
  });

  final TfArg<String> jobDefinition;

  final TfArg<String> jobName;

  final TfArg<Map<String, String>>? parameters;

  final PipesPipeTargetParametersBatchJobParametersArrayProperties?
  arrayProperties;

  final PipesPipeTargetParametersBatchJobParametersContainerOverrides?
  containerOverrides;

  final List<PipesPipeTargetParametersBatchJobParametersDependsOn>? dependsOn;

  final PipesPipeTargetParametersBatchJobParametersRetryStrategy? retryStrategy;

  Map<String, Object?> encode() => {
    'job_definition': jobDefinition.toTfJson(),
    'job_name': jobName.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (arrayProperties != null) 'array_properties': arrayProperties!.encode(),
    if (containerOverrides != null)
      'container_overrides': containerOverrides!.encode(),
    if (dependsOn != null)
      'depends_on': [for (final e in dependsOn!) e.encode()],
    if (retryStrategy != null) 'retry_strategy': retryStrategy!.encode(),
  };
}

/// Typed helper for the `target_parameters.batch_job_parameters.array_properties` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersBatchJobParametersArrayProperties {
  const PipesPipeTargetParametersBatchJobParametersArrayProperties({this.size});

  final TfArg<num>? size;

  Map<String, Object?> encode() => {if (size != null) 'size': size!.toTfJson()};
}

/// Typed helper for the `target_parameters.batch_job_parameters.container_overrides` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersBatchJobParametersContainerOverrides {
  const PipesPipeTargetParametersBatchJobParametersContainerOverrides({
    this.command,
    this.instanceType,
    this.environment,
    this.resourceRequirement,
  });

  final TfArg<List<Object?>>? command;

  final TfArg<String>? instanceType;

  final List<
    PipesPipeTargetParametersBatchJobParametersContainerOverridesEnvironment
  >?
  environment;

  final List<
    PipesPipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement
  >?
  resourceRequirement;

  Map<String, Object?> encode() => {
    if (command != null) 'command': command!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (environment != null)
      'environment': [for (final e in environment!) e.encode()],
    if (resourceRequirement != null)
      'resource_requirement': [
        for (final e in resourceRequirement!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_parameters.batch_job_parameters.container_overrides.environment` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersBatchJobParametersContainerOverridesEnvironment {
  const PipesPipeTargetParametersBatchJobParametersContainerOverridesEnvironment({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.batch_job_parameters.container_overrides.resource_requirement` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement {
  const PipesPipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement({
    required this.type,
    required this.value,
  });

  final TfArg<
    PipesPipeTargetParametersBatchJobParametersContainerOverridesResourceRequirementType
  >
  type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeTargetParametersBatchJobParametersContainerOverridesResourceRequirementType
    implements TerraformEnum {
  gpu('GPU'),
  memory('MEMORY'),
  vcpu('VCPU');

  const PipesPipeTargetParametersBatchJobParametersContainerOverridesResourceRequirementType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.batch_job_parameters.depends_on` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersBatchJobParametersDependsOn {
  const PipesPipeTargetParametersBatchJobParametersDependsOn({
    this.jobId,
    this.type,
  });

  final TfArg<String>? jobId;

  final TfArg<PipesPipeTargetParametersBatchJobParametersDependsOnType>? type;

  Map<String, Object?> encode() => {
    if (jobId != null) 'job_id': jobId!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeTargetParametersBatchJobParametersDependsOnType
    implements TerraformEnum {
  nToN('N_TO_N'),
  sequential('SEQUENTIAL');

  const PipesPipeTargetParametersBatchJobParametersDependsOnType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.batch_job_parameters.retry_strategy` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersBatchJobParametersRetryStrategy {
  const PipesPipeTargetParametersBatchJobParametersRetryStrategy({
    this.attempts,
  });

  final TfArg<num>? attempts;

  Map<String, Object?> encode() => {
    if (attempts != null) 'attempts': attempts!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.cloudwatch_logs_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersCloudwatchLogsParameters {
  const PipesPipeTargetParametersCloudwatchLogsParameters({
    this.logStreamName,
    this.timestamp,
  });

  final TfArg<String>? logStreamName;

  final TfArg<String>? timestamp;

  Map<String, Object?> encode() => {
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
    if (timestamp != null) 'timestamp': timestamp!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParameters {
  const PipesPipeTargetParametersEcsTaskParameters({
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.group,
    this.launchType,
    this.platformVersion,
    this.propagateTags,
    this.referenceId,
    this.tags,
    this.taskCount,
    required this.taskDefinitionArn,
    this.capacityProviderStrategy,
    this.networkConfiguration,
    this.overrides,
    this.placementConstraint,
    this.placementStrategy,
  });

  final TfArg<bool>? enableEcsManagedTags;

  final TfArg<bool>? enableExecuteCommand;

  final TfArg<String>? group;

  final TfArg<PipesPipeTargetParametersEcsTaskParametersLaunchType>? launchType;

  final TfArg<String>? platformVersion;

  final TfArg<PipesPipeTargetParametersEcsTaskParametersPropagateTags>?
  propagateTags;

  final TfArg<String>? referenceId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num>? taskCount;

  final TfArg<String> taskDefinitionArn;

  final List<
    PipesPipeTargetParametersEcsTaskParametersCapacityProviderStrategy
  >?
  capacityProviderStrategy;

  final PipesPipeTargetParametersEcsTaskParametersNetworkConfiguration?
  networkConfiguration;

  final PipesPipeTargetParametersEcsTaskParametersOverrides? overrides;

  final List<PipesPipeTargetParametersEcsTaskParametersPlacementConstraint>?
  placementConstraint;

  final List<PipesPipeTargetParametersEcsTaskParametersPlacementStrategy>?
  placementStrategy;

  Map<String, Object?> encode() => {
    if (enableEcsManagedTags != null)
      'enable_ecs_managed_tags': enableEcsManagedTags!.toTfJson(),
    if (enableExecuteCommand != null)
      'enable_execute_command': enableExecuteCommand!.toTfJson(),
    if (group != null) 'group': group!.toTfJson(),
    if (launchType != null) 'launch_type': launchType!.toTfJson(),
    if (platformVersion != null)
      'platform_version': platformVersion!.toTfJson(),
    if (propagateTags != null) 'propagate_tags': propagateTags!.toTfJson(),
    if (referenceId != null) 'reference_id': referenceId!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (taskCount != null) 'task_count': taskCount!.toTfJson(),
    'task_definition_arn': taskDefinitionArn.toTfJson(),
    if (capacityProviderStrategy != null)
      'capacity_provider_strategy': [
        for (final e in capacityProviderStrategy!) e.encode(),
      ],
    if (networkConfiguration != null)
      'network_configuration': networkConfiguration!.encode(),
    if (overrides != null) 'overrides': overrides!.encode(),
    if (placementConstraint != null)
      'placement_constraint': [
        for (final e in placementConstraint!) e.encode(),
      ],
    if (placementStrategy != null)
      'placement_strategy': [for (final e in placementStrategy!) e.encode()],
  };
}

/// `launch_type` — derived from the provider schema description.
enum PipesPipeTargetParametersEcsTaskParametersLaunchType
    implements TerraformEnum {
  ec2('EC2'),
  fargate('FARGATE'),
  external('EXTERNAL');

  const PipesPipeTargetParametersEcsTaskParametersLaunchType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `propagate_tags` — derived from the provider schema description.
enum PipesPipeTargetParametersEcsTaskParametersPropagateTags
    implements TerraformEnum {
  taskDefinition('TASK_DEFINITION');

  const PipesPipeTargetParametersEcsTaskParametersPropagateTags(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.capacity_provider_strategy` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersCapacityProviderStrategy {
  const PipesPipeTargetParametersEcsTaskParametersCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  final TfArg<num>? base;

  final TfArg<String> capacityProvider;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (base != null) 'base': base!.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.network_configuration` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersNetworkConfiguration {
  const PipesPipeTargetParametersEcsTaskParametersNetworkConfiguration({
    this.awsVpcConfiguration,
  });

  final PipesPipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration?
  awsVpcConfiguration;

  Map<String, Object?> encode() => {
    if (awsVpcConfiguration != null)
      'aws_vpc_configuration': awsVpcConfiguration!.encode(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.network_configuration.aws_vpc_configuration` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration {
  const PipesPipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    this.subnets,
  });

  final TfArg<
    PipesPipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfigurationAssignPublicIp
  >?
  assignPublicIp;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>>? subnets;

  Map<String, Object?> encode() => {
    if (assignPublicIp != null) 'assign_public_ip': assignPublicIp!.toTfJson(),
    if (securityGroups != null)
      'security_groups': securityGroups!.encodeAs('id').toTfJson(),
    if (subnets != null) 'subnets': subnets!.encodeAs('id').toTfJson(),
  };
}

/// `assign_public_ip` — derived from the provider schema description.
enum PipesPipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfigurationAssignPublicIp
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const PipesPipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfigurationAssignPublicIp(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverrides {
  const PipesPipeTargetParametersEcsTaskParametersOverrides({
    this.cpu,
    this.executionRoleArn,
    this.memory,
    this.taskRoleArn,
    this.containerOverride,
    this.ephemeralStorage,
    this.inferenceAcceleratorOverride,
  });

  final TfArg<String>? cpu;

  final RefTo<AwsIamRole>? executionRoleArn;

  final TfArg<String>? memory;

  final RefTo<AwsIamRole>? taskRoleArn;

  final List<
    PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverride
  >?
  containerOverride;

  final PipesPipeTargetParametersEcsTaskParametersOverridesEphemeralStorage?
  ephemeralStorage;

  final List<
    PipesPipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride
  >?
  inferenceAcceleratorOverride;

  Map<String, Object?> encode() => {
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (executionRoleArn != null)
      'execution_role_arn': executionRoleArn!.encodeAs('arn').toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (taskRoleArn != null)
      'task_role_arn': taskRoleArn!.encodeAs('arn').toTfJson(),
    if (containerOverride != null)
      'container_override': [for (final e in containerOverride!) e.encode()],
    if (ephemeralStorage != null)
      'ephemeral_storage': ephemeralStorage!.encode(),
    if (inferenceAcceleratorOverride != null)
      'inference_accelerator_override': [
        for (final e in inferenceAcceleratorOverride!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverride {
  const PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverride({
    this.command,
    this.cpu,
    this.memory,
    this.memoryReservation,
    this.name,
    this.environment,
    this.environmentFile,
    this.resourceRequirement,
  });

  final TfArg<List<Object?>>? command;

  final TfArg<num>? cpu;

  final TfArg<num>? memory;

  final TfArg<num>? memoryReservation;

  final TfArg<String>? name;

  final List<
    PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment
  >?
  environment;

  final List<
    PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile
  >?
  environmentFile;

  final List<
    PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement
  >?
  resourceRequirement;

  Map<String, Object?> encode() => {
    if (command != null) 'command': command!.toTfJson(),
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (memoryReservation != null)
      'memory_reservation': memoryReservation!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (environment != null)
      'environment': [for (final e in environment!) e.encode()],
    if (environmentFile != null)
      'environment_file': [for (final e in environmentFile!) e.encode()],
    if (resourceRequirement != null)
      'resource_requirement': [
        for (final e in resourceRequirement!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override.environment` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment {
  const PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override.environment_file` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile {
  const PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile({
    required this.type,
    required this.value,
  });

  final TfArg<
    PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFileType
  >
  type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFileType
    implements TerraformEnum {
  s3('s3');

  const PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFileType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override.resource_requirement` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement {
  const PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement({
    required this.type,
    required this.value,
  });

  final TfArg<
    PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirementType
  >
  type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirementType
    implements TerraformEnum {
  gpu('GPU'),
  inferenceaccelerator('InferenceAccelerator');

  const PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirementType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.ephemeral_storage` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverridesEphemeralStorage {
  const PipesPipeTargetParametersEcsTaskParametersOverridesEphemeralStorage({
    required this.sizeInGib,
  });

  final TfArg<num> sizeInGib;

  Map<String, Object?> encode() => {'size_in_gib': sizeInGib.toTfJson()};
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.inference_accelerator_override` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride {
  const PipesPipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride({
    this.deviceName,
    this.deviceType,
  });

  final TfArg<String>? deviceName;

  final TfArg<String>? deviceType;

  Map<String, Object?> encode() => {
    if (deviceName != null) 'device_name': deviceName!.toTfJson(),
    if (deviceType != null) 'device_type': deviceType!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.placement_constraint` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersPlacementConstraint {
  const PipesPipeTargetParametersEcsTaskParametersPlacementConstraint({
    this.expression,
    this.type,
  });

  final TfArg<String>? expression;

  final TfArg<
    PipesPipeTargetParametersEcsTaskParametersPlacementConstraintType
  >?
  type;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeTargetParametersEcsTaskParametersPlacementConstraintType
    implements TerraformEnum {
  distinctinstance('distinctInstance'),
  memberof('memberOf');

  const PipesPipeTargetParametersEcsTaskParametersPlacementConstraintType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.placement_strategy` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersPlacementStrategy {
  const PipesPipeTargetParametersEcsTaskParametersPlacementStrategy({
    this.field,
    this.type,
  });

  final TfArg<String>? field;

  final TfArg<PipesPipeTargetParametersEcsTaskParametersPlacementStrategyType>?
  type;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeTargetParametersEcsTaskParametersPlacementStrategyType
    implements TerraformEnum {
  random('random'),
  spread('spread'),
  binpack('binpack');

  const PipesPipeTargetParametersEcsTaskParametersPlacementStrategyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.eventbridge_event_bus_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEventbridgeEventBusParameters {
  const PipesPipeTargetParametersEventbridgeEventBusParameters({
    this.detailType,
    this.endpointId,
    this.resources,
    this.source,
    this.time,
  });

  final TfArg<String>? detailType;

  final TfArg<String>? endpointId;

  final TfArg<List<Object?>>? resources;

  final TfArg<String>? source;

  final TfArg<String>? time;

  Map<String, Object?> encode() => {
    if (detailType != null) 'detail_type': detailType!.toTfJson(),
    if (endpointId != null) 'endpoint_id': endpointId!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
    if (source != null) 'source': source!.toTfJson(),
    if (time != null) 'time': time!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.http_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersHttpParameters {
  const PipesPipeTargetParametersHttpParameters({
    this.headerParameters,
    this.pathParameterValues,
    this.queryStringParameters,
  });

  final TfArg<Map<String, String>>? headerParameters;

  final TfArg<List<Object?>>? pathParameterValues;

  final TfArg<Map<String, String>>? queryStringParameters;

  Map<String, Object?> encode() => {
    if (headerParameters != null)
      'header_parameters': headerParameters!.toTfJson(),
    if (pathParameterValues != null)
      'path_parameter_values': pathParameterValues!.toTfJson(),
    if (queryStringParameters != null)
      'query_string_parameters': queryStringParameters!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.kinesis_stream_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersKinesisStreamParameters {
  const PipesPipeTargetParametersKinesisStreamParameters({
    required this.partitionKey,
  });

  final TfArg<String> partitionKey;

  Map<String, Object?> encode() => {'partition_key': partitionKey.toTfJson()};
}

/// Typed helper for the `target_parameters.lambda_function_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersLambdaFunctionParameters {
  const PipesPipeTargetParametersLambdaFunctionParameters({
    required this.invocationType,
  });

  final TfArg<PipesPipeTargetParametersLambdaFunctionParametersInvocationType>
  invocationType;

  Map<String, Object?> encode() => {
    'invocation_type': invocationType.toTfJson(),
  };
}

/// `invocation_type` — derived from the provider schema description.
enum PipesPipeTargetParametersLambdaFunctionParametersInvocationType
    implements TerraformEnum {
  requestResponse('REQUEST_RESPONSE'),
  fireAndForget('FIRE_AND_FORGET');

  const PipesPipeTargetParametersLambdaFunctionParametersInvocationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.redshift_data_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersRedshiftDataParameters {
  const PipesPipeTargetParametersRedshiftDataParameters({
    required this.database,
    this.dbUser,
    this.secretManagerArn,
    required this.sqls,
    this.statementName,
    this.withEvent,
  });

  final TfArg<String> database;

  final TfArg<String>? dbUser;

  final TfArg<String>? secretManagerArn;

  final TfArg<List<Object?>> sqls;

  final TfArg<String>? statementName;

  final TfArg<bool>? withEvent;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (dbUser != null) 'db_user': dbUser!.toTfJson(),
    if (secretManagerArn != null)
      'secret_manager_arn': secretManagerArn!.toTfJson(),
    'sqls': sqls.toTfJson(),
    if (statementName != null) 'statement_name': statementName!.toTfJson(),
    if (withEvent != null) 'with_event': withEvent!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.sagemaker_pipeline_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersSagemakerPipelineParameters {
  const PipesPipeTargetParametersSagemakerPipelineParameters({
    this.pipelineParameter,
  });

  final List<
    PipesPipeTargetParametersSagemakerPipelineParametersPipelineParameter
  >?
  pipelineParameter;

  Map<String, Object?> encode() => {
    if (pipelineParameter != null)
      'pipeline_parameter': [for (final e in pipelineParameter!) e.encode()],
  };
}

/// Typed helper for the `target_parameters.sagemaker_pipeline_parameters.pipeline_parameter` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersSagemakerPipelineParametersPipelineParameter {
  const PipesPipeTargetParametersSagemakerPipelineParametersPipelineParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.sqs_queue_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersSqsQueueParameters {
  const PipesPipeTargetParametersSqsQueueParameters({
    this.messageDeduplicationId,
    this.messageGroupId,
  });

  final TfArg<String>? messageDeduplicationId;

  final TfArg<String>? messageGroupId;

  Map<String, Object?> encode() => {
    if (messageDeduplicationId != null)
      'message_deduplication_id': messageDeduplicationId!.toTfJson(),
    if (messageGroupId != null) 'message_group_id': messageGroupId!.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.step_function_state_machine_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersStepFunctionStateMachineParameters {
  const PipesPipeTargetParametersStepFunctionStateMachineParameters({
    required this.invocationType,
  });

  final TfArg<
    PipesPipeTargetParametersStepFunctionStateMachineParametersInvocationType
  >
  invocationType;

  Map<String, Object?> encode() => {
    'invocation_type': invocationType.toTfJson(),
  };
}

/// `invocation_type` — derived from the provider schema description.
enum PipesPipeTargetParametersStepFunctionStateMachineParametersInvocationType
    implements TerraformEnum {
  requestResponse('REQUEST_RESPONSE'),
  fireAndForget('FIRE_AND_FORGET');

  const PipesPipeTargetParametersStepFunctionStateMachineParametersInvocationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_pipes_pipe`.
final class AwsPipesPipe extends Resource {
  static const String tfType = 'aws_pipes_pipe';

  AwsPipesPipe({
    required super.localName,
    TfArg<String>? description,
    TfArg<PipesPipeDesiredState>? desiredState,
    TfArg<String>? enrichment,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
    PipesPipeName? name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    required TfArg<String> source,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> target,
    PipesPipeEnrichmentParameters? enrichmentParameters,
    PipesPipeLogConfiguration? logConfiguration,
    PipesPipeSourceParameters? sourceParameters,
    PipesPipeTargetParameters? targetParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (desiredState != null) 'desired_state': desiredState,
           if (enrichment != null) 'enrichment': enrichment,
           if (kmsKeyIdentifier != null)
             'kms_key_identifier': kmsKeyIdentifier.encodeAs('arn'),
           ...?name?.argMap,
           if (region != null) 'region': region,
           'role_arn': roleArn.encodeAs('arn'),
           'source': source,
           if (tags != null) 'tags': tags,
           'target': target,
           if (enrichmentParameters != null)
             'enrichment_parameters': TfArg.literal(
               enrichmentParameters.encode(),
             ),
           if (logConfiguration != null)
             'log_configuration': TfArg.literal(logConfiguration.encode()),
           if (sourceParameters != null)
             'source_parameters': TfArg.literal(sourceParameters.encode()),
           if (targetParameters != null)
             'target_parameters': TfArg.literal(targetParameters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPipesPipeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPipesPipe>`.
  RefTo<AwsPipesPipe> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
