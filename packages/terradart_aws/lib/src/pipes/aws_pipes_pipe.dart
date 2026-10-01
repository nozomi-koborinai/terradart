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
  const factory PipesPipeName.name(TfArg<String> name) = PipesPipeNameChoice;

  /// Sets `name_prefix`.
  const factory PipesPipeName.namePrefix(TfArg<String> namePrefix) =
      PipesPipeNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PipesPipeName.name] choice: sets `name`.
final class PipesPipeNameChoice extends PipesPipeName {
  const PipesPipeNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [PipesPipeName.namePrefix] choice: sets `name_prefix`.
final class PipesPipeNamePrefix extends PipesPipeName {
  const PipesPipeNamePrefix(this.namePrefix);

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

  final PipesPipeHttpParameters? httpParameters;

  Map<String, Object?> encode() => {
    'input_template': ?inputTemplate?.toTfJson(),
    'http_parameters': ?httpParameters?.encode(),
  };
}

/// Typed helper for the `enrichment_parameters.http_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PipesPipeHttpParameters {
  const PipesPipeHttpParameters({
    this.headerParameters,
    this.pathParameterValues,
    this.queryStringParameters,
  });

  final TfArg<Map<String, String>>? headerParameters;

  final TfArg<List<String>>? pathParameterValues;

  final TfArg<Map<String, String>>? queryStringParameters;

  Map<String, Object?> encode() => {
    'header_parameters': ?headerParameters?.toTfJson(),
    'path_parameter_values': ?pathParameterValues?.toTfJson(),
    'query_string_parameters': ?queryStringParameters?.toTfJson(),
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

  final List<TfArg<PipesPipeIncludeExecutionData>>? includeExecutionData;

  final TfArg<PipesPipeLevel> level;

  final PipesPipeCloudwatchLogsLogDestination? cloudwatchLogsLogDestination;

  final PipesPipeFirehoseLogDestination? firehoseLogDestination;

  final PipesPipeS3LogDestination? s3LogDestination;

  Map<String, Object?> encode() => {
    if (includeExecutionData != null)
      'include_execution_data': [
        for (final e in includeExecutionData!) e.toTfJson(),
      ],
    'level': level.toTfJson(),
    'cloudwatch_logs_log_destination': ?cloudwatchLogsLogDestination?.encode(),
    'firehose_log_destination': ?firehoseLogDestination?.encode(),
    's3_log_destination': ?s3LogDestination?.encode(),
  };
}

/// `include_execution_data` — derived from the provider schema description.
enum PipesPipeIncludeExecutionData implements TerraformEnum {
  all('ALL');

  const PipesPipeIncludeExecutionData(this.terraformValue);
  @override
  final String terraformValue;
}

/// `level` — derived from the provider schema description.
enum PipesPipeLevel implements TerraformEnum {
  off('OFF'),
  error('ERROR'),
  info('INFO'),
  trace('TRACE');

  const PipesPipeLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `log_configuration.cloudwatch_logs_log_destination` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeCloudwatchLogsLogDestination {
  const PipesPipeCloudwatchLogsLogDestination({required this.logGroupArn});

  final RefTo<AwsCloudwatchLogGroup> logGroupArn;

  Map<String, Object?> encode() => {
    'log_group_arn': logGroupArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `log_configuration.firehose_log_destination` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeFirehoseLogDestination {
  const PipesPipeFirehoseLogDestination({required this.deliveryStreamArn});

  final TfArg<String> deliveryStreamArn;

  Map<String, Object?> encode() => {
    'delivery_stream_arn': deliveryStreamArn.toTfJson(),
  };
}

/// Typed helper for the `log_configuration.s3_log_destination` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeS3LogDestination {
  const PipesPipeS3LogDestination({
    required this.bucketName,
    required this.bucketOwner,
    this.outputFormat,
    this.prefix,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String> bucketOwner;

  final TfArg<PipesPipeOutputFormat>? outputFormat;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_owner': bucketOwner.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// `output_format` — derived from the provider schema description.
enum PipesPipeOutputFormat implements TerraformEnum {
  json('json'),
  plain('plain'),
  w3c('w3c');

  const PipesPipeOutputFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParameters {
  const PipesPipeSourceParameters({this.service, this.filterCriteria});

  final PipesPipeSourceParametersService? service;

  final PipesPipeFilterCriteria? filterCriteria;

  Map<String, Object?> encode() => {
    ...?service?.encode(),
    'filter_criteria': ?filterCriteria?.encode(),
  };
}

/// At most one of `activemq_broker_parameters`, `dynamodb_stream_parameters`, `kinesis_stream_parameters`, `managed_streaming_kafka_parameters`, `rabbitmq_broker_parameters`, `self_managed_kafka_parameters`, `sqs_queue_parameters` on the `source_parameters` block of `aws_pipes_pipe`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.activemqBrokerParameters(...)`.
sealed class PipesPipeSourceParametersService {
  const PipesPipeSourceParametersService();

  /// Sets `activemq_broker_parameters`.
  const factory PipesPipeSourceParametersService.activemqBrokerParameters(
    PipesPipeActivemqBrokerParameters activemqBrokerParameters,
  ) = PipesPipeSourceParametersServiceActivemqBrokerParameters;

  /// Sets `dynamodb_stream_parameters`.
  const factory PipesPipeSourceParametersService.dynamodbStreamParameters(
    PipesPipeDynamodbStreamParameters dynamodbStreamParameters,
  ) = PipesPipeSourceParametersServiceDynamodbStreamParameters;

  /// Sets `kinesis_stream_parameters`.
  const factory PipesPipeSourceParametersService.kinesisStreamParameters(
    PipesPipeSourceParametersKinesisStreamParameters kinesisStreamParameters,
  ) = PipesPipeSourceParametersServiceKinesisStreamParameters;

  /// Sets `managed_streaming_kafka_parameters`.
  const factory PipesPipeSourceParametersService.managedStreamingKafkaParameters(
    PipesPipeManagedStreamingKafkaParameters managedStreamingKafkaParameters,
  ) = PipesPipeSourceParametersServiceManagedStreamingKafkaParameters;

  /// Sets `rabbitmq_broker_parameters`.
  const factory PipesPipeSourceParametersService.rabbitmqBrokerParameters(
    PipesPipeRabbitmqBrokerParameters rabbitmqBrokerParameters,
  ) = PipesPipeSourceParametersServiceRabbitmqBrokerParameters;

  /// Sets `self_managed_kafka_parameters`.
  const factory PipesPipeSourceParametersService.selfManagedKafkaParameters(
    PipesPipeSelfManagedKafkaParameters selfManagedKafkaParameters,
  ) = PipesPipeSourceParametersServiceSelfManagedKafkaParameters;

  /// Sets `sqs_queue_parameters`.
  const factory PipesPipeSourceParametersService.sqsQueueParameters(
    PipesPipeSourceParametersSqsQueueParameters sqsQueueParameters,
  ) = PipesPipeSourceParametersServiceSqsQueueParameters;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PipesPipeSourceParametersService.activemqBrokerParameters] choice: sets `activemq_broker_parameters`.
final class PipesPipeSourceParametersServiceActivemqBrokerParameters
    extends PipesPipeSourceParametersService {
  const PipesPipeSourceParametersServiceActivemqBrokerParameters(
    this.activemqBrokerParameters,
  );

  final PipesPipeActivemqBrokerParameters activemqBrokerParameters;

  @override
  String get blockKey => 'activemq_broker_parameters';

  @override
  Map<String, Object?> encode() => {
    'activemq_broker_parameters': activemqBrokerParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersService.dynamodbStreamParameters] choice: sets `dynamodb_stream_parameters`.
final class PipesPipeSourceParametersServiceDynamodbStreamParameters
    extends PipesPipeSourceParametersService {
  const PipesPipeSourceParametersServiceDynamodbStreamParameters(
    this.dynamodbStreamParameters,
  );

  final PipesPipeDynamodbStreamParameters dynamodbStreamParameters;

  @override
  String get blockKey => 'dynamodb_stream_parameters';

  @override
  Map<String, Object?> encode() => {
    'dynamodb_stream_parameters': dynamodbStreamParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersService.kinesisStreamParameters] choice: sets `kinesis_stream_parameters`.
final class PipesPipeSourceParametersServiceKinesisStreamParameters
    extends PipesPipeSourceParametersService {
  const PipesPipeSourceParametersServiceKinesisStreamParameters(
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

/// The [PipesPipeSourceParametersService.managedStreamingKafkaParameters] choice: sets `managed_streaming_kafka_parameters`.
final class PipesPipeSourceParametersServiceManagedStreamingKafkaParameters
    extends PipesPipeSourceParametersService {
  const PipesPipeSourceParametersServiceManagedStreamingKafkaParameters(
    this.managedStreamingKafkaParameters,
  );

  final PipesPipeManagedStreamingKafkaParameters
  managedStreamingKafkaParameters;

  @override
  String get blockKey => 'managed_streaming_kafka_parameters';

  @override
  Map<String, Object?> encode() => {
    'managed_streaming_kafka_parameters': managedStreamingKafkaParameters
        .encode(),
  };
}

/// The [PipesPipeSourceParametersService.rabbitmqBrokerParameters] choice: sets `rabbitmq_broker_parameters`.
final class PipesPipeSourceParametersServiceRabbitmqBrokerParameters
    extends PipesPipeSourceParametersService {
  const PipesPipeSourceParametersServiceRabbitmqBrokerParameters(
    this.rabbitmqBrokerParameters,
  );

  final PipesPipeRabbitmqBrokerParameters rabbitmqBrokerParameters;

  @override
  String get blockKey => 'rabbitmq_broker_parameters';

  @override
  Map<String, Object?> encode() => {
    'rabbitmq_broker_parameters': rabbitmqBrokerParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersService.selfManagedKafkaParameters] choice: sets `self_managed_kafka_parameters`.
final class PipesPipeSourceParametersServiceSelfManagedKafkaParameters
    extends PipesPipeSourceParametersService {
  const PipesPipeSourceParametersServiceSelfManagedKafkaParameters(
    this.selfManagedKafkaParameters,
  );

  final PipesPipeSelfManagedKafkaParameters selfManagedKafkaParameters;

  @override
  String get blockKey => 'self_managed_kafka_parameters';

  @override
  Map<String, Object?> encode() => {
    'self_managed_kafka_parameters': selfManagedKafkaParameters.encode(),
  };
}

/// The [PipesPipeSourceParametersService.sqsQueueParameters] choice: sets `sqs_queue_parameters`.
final class PipesPipeSourceParametersServiceSqsQueueParameters
    extends PipesPipeSourceParametersService {
  const PipesPipeSourceParametersServiceSqsQueueParameters(
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
final class PipesPipeActivemqBrokerParameters {
  const PipesPipeActivemqBrokerParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
    required this.queueName,
    required this.credentials,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<String> queueName;

  final PipesPipeActivemqBrokerParametersCredentials credentials;

  Map<String, Object?> encode() => {
    'batch_size': ?batchSize?.toTfJson(),
    'maximum_batching_window_in_seconds': ?maximumBatchingWindowInSeconds
        ?.toTfJson(),
    'queue_name': queueName.toTfJson(),
    'credentials': credentials.encode(),
  };
}

/// Typed helper for the `source_parameters.activemq_broker_parameters.credentials` block of
/// `aws_pipes_pipe` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PipesPipeActivemqBrokerParametersCredentials {
  const PipesPipeActivemqBrokerParametersCredentials({required this.basicAuth});

  final TfArg<String> basicAuth;

  Map<String, Object?> encode() => {'basic_auth': basicAuth.toTfJson()};
}

/// Typed helper for the `source_parameters.dynamodb_stream_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeDynamodbStreamParameters {
  const PipesPipeDynamodbStreamParameters({
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

  final TfArg<PipesPipeOnPartialBatchItemFailure>? onPartialBatchItemFailure;

  final TfArg<num>? parallelizationFactor;

  final TfArg<PipesPipeDynamodbStreamParametersStartingPosition>
  startingPosition;

  final PipesPipeDeadLetterConfig? deadLetterConfig;

  Map<String, Object?> encode() => {
    'batch_size': ?batchSize?.toTfJson(),
    'maximum_batching_window_in_seconds': ?maximumBatchingWindowInSeconds
        ?.toTfJson(),
    'maximum_record_age_in_seconds': ?maximumRecordAgeInSeconds?.toTfJson(),
    'maximum_retry_attempts': ?maximumRetryAttempts?.toTfJson(),
    'on_partial_batch_item_failure': ?onPartialBatchItemFailure?.toTfJson(),
    'parallelization_factor': ?parallelizationFactor?.toTfJson(),
    'starting_position': startingPosition.toTfJson(),
    'dead_letter_config': ?deadLetterConfig?.encode(),
  };
}

/// `on_partial_batch_item_failure` — derived from the provider schema description.
enum PipesPipeOnPartialBatchItemFailure implements TerraformEnum {
  automaticBisect('AUTOMATIC_BISECT');

  const PipesPipeOnPartialBatchItemFailure(this.terraformValue);
  @override
  final String terraformValue;
}

/// `starting_position` — derived from the provider schema description.
enum PipesPipeDynamodbStreamParametersStartingPosition
    implements TerraformEnum {
  trimHorizon('TRIM_HORIZON'),
  latest('LATEST');

  const PipesPipeDynamodbStreamParametersStartingPosition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters.dynamodb_stream_parameters.dead_letter_config` block of
/// `aws_pipes_pipe` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PipesPipeDeadLetterConfig {
  const PipesPipeDeadLetterConfig({this.arn});

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {'arn': ?arn?.toTfJson()};
}

/// Typed helper for the `source_parameters.filter_criteria` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeFilterCriteria {
  const PipesPipeFilterCriteria({this.filter});

  final List<PipesPipeFilter>? filter;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `source_parameters.filter_criteria.filter` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeFilter {
  const PipesPipeFilter({required this.pattern});

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

  final TfArg<PipesPipeOnPartialBatchItemFailure>? onPartialBatchItemFailure;

  final TfArg<num>? parallelizationFactor;

  final TfArg<PipesPipeKinesisStreamParametersStartingPosition>
  startingPosition;

  final TfArg<String>? startingPositionTimestamp;

  final PipesPipeDeadLetterConfig? deadLetterConfig;

  Map<String, Object?> encode() => {
    'batch_size': ?batchSize?.toTfJson(),
    'maximum_batching_window_in_seconds': ?maximumBatchingWindowInSeconds
        ?.toTfJson(),
    'maximum_record_age_in_seconds': ?maximumRecordAgeInSeconds?.toTfJson(),
    'maximum_retry_attempts': ?maximumRetryAttempts?.toTfJson(),
    'on_partial_batch_item_failure': ?onPartialBatchItemFailure?.toTfJson(),
    'parallelization_factor': ?parallelizationFactor?.toTfJson(),
    'starting_position': startingPosition.toTfJson(),
    'starting_position_timestamp': ?startingPositionTimestamp?.toTfJson(),
    'dead_letter_config': ?deadLetterConfig?.encode(),
  };
}

/// `starting_position` — derived from the provider schema description.
enum PipesPipeKinesisStreamParametersStartingPosition implements TerraformEnum {
  trimHorizon('TRIM_HORIZON'),
  latest('LATEST'),
  atTimestamp('AT_TIMESTAMP');

  const PipesPipeKinesisStreamParametersStartingPosition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source_parameters.managed_streaming_kafka_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeManagedStreamingKafkaParameters {
  const PipesPipeManagedStreamingKafkaParameters({
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

  final TfArg<PipesPipeDynamodbStreamParametersStartingPosition>?
  startingPosition;

  final TfArg<String> topicName;

  final PipesPipeManagedStreamingKafkaParametersCredentials? credentials;

  Map<String, Object?> encode() => {
    'batch_size': ?batchSize?.toTfJson(),
    'consumer_group_id': ?consumerGroupId?.toTfJson(),
    'maximum_batching_window_in_seconds': ?maximumBatchingWindowInSeconds
        ?.toTfJson(),
    'starting_position': ?startingPosition?.toTfJson(),
    'topic_name': topicName.toTfJson(),
    'credentials': ?credentials?.encode(),
  };
}

/// Typed helper for the `source_parameters.managed_streaming_kafka_parameters.credentials` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeManagedStreamingKafkaParametersCredentials {
  const PipesPipeManagedStreamingKafkaParametersCredentials({
    this.clientCertificateTlsAuth,
    this.saslScram512Auth,
  });

  final TfArg<String>? clientCertificateTlsAuth;

  final TfArg<String>? saslScram512Auth;

  Map<String, Object?> encode() => {
    'client_certificate_tls_auth': ?clientCertificateTlsAuth?.toTfJson(),
    'sasl_scram_512_auth': ?saslScram512Auth?.toTfJson(),
  };
}

/// Typed helper for the `source_parameters.rabbitmq_broker_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeRabbitmqBrokerParameters {
  const PipesPipeRabbitmqBrokerParameters({
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

  final PipesPipeActivemqBrokerParametersCredentials credentials;

  Map<String, Object?> encode() => {
    'batch_size': ?batchSize?.toTfJson(),
    'maximum_batching_window_in_seconds': ?maximumBatchingWindowInSeconds
        ?.toTfJson(),
    'queue_name': queueName.toTfJson(),
    'virtual_host': ?virtualHost?.toTfJson(),
    'credentials': credentials.encode(),
  };
}

/// Typed helper for the `source_parameters.self_managed_kafka_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSelfManagedKafkaParameters {
  const PipesPipeSelfManagedKafkaParameters({
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

  final TfArg<List<String>>? additionalBootstrapServers;

  final TfArg<num>? batchSize;

  final TfArg<String>? consumerGroupId;

  final TfArg<num>? maximumBatchingWindowInSeconds;

  final TfArg<String>? serverRootCaCertificate;

  final TfArg<PipesPipeDynamodbStreamParametersStartingPosition>?
  startingPosition;

  final TfArg<String> topicName;

  final PipesPipeSelfManagedKafkaParametersCredentials? credentials;

  final PipesPipeVpc? vpc;

  Map<String, Object?> encode() => {
    'additional_bootstrap_servers': ?additionalBootstrapServers?.toTfJson(),
    'batch_size': ?batchSize?.toTfJson(),
    'consumer_group_id': ?consumerGroupId?.toTfJson(),
    'maximum_batching_window_in_seconds': ?maximumBatchingWindowInSeconds
        ?.toTfJson(),
    'server_root_ca_certificate': ?serverRootCaCertificate?.toTfJson(),
    'starting_position': ?startingPosition?.toTfJson(),
    'topic_name': topicName.toTfJson(),
    'credentials': ?credentials?.encode(),
    'vpc': ?vpc?.encode(),
  };
}

/// Typed helper for the `source_parameters.self_managed_kafka_parameters.credentials` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSelfManagedKafkaParametersCredentials {
  const PipesPipeSelfManagedKafkaParametersCredentials({
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
    'basic_auth': ?basicAuth?.toTfJson(),
    'client_certificate_tls_auth': ?clientCertificateTlsAuth?.toTfJson(),
    'sasl_scram_256_auth': ?saslScram256Auth?.toTfJson(),
    'sasl_scram_512_auth': ?saslScram512Auth?.toTfJson(),
  };
}

/// Typed helper for the `source_parameters.self_managed_kafka_parameters.vpc` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeVpc {
  const PipesPipeVpc({this.securityGroups, this.subnets});

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>>? subnets;

  Map<String, Object?> encode() => {
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnets': ?subnets?.encodeAs('id').toTfJson(),
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
    'batch_size': ?batchSize?.toTfJson(),
    'maximum_batching_window_in_seconds': ?maximumBatchingWindowInSeconds
        ?.toTfJson(),
  };
}

/// Typed helper for the `target_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParameters {
  const PipesPipeTargetParameters({this.inputTemplate, this.service});

  final TfArg<String>? inputTemplate;

  final PipesPipeTargetParametersService? service;

  Map<String, Object?> encode() => {
    'input_template': ?inputTemplate?.toTfJson(),
    ...?service?.encode(),
  };
}

/// At most one of `batch_job_parameters`, `cloudwatch_logs_parameters`, `ecs_task_parameters`, `eventbridge_event_bus_parameters`, `http_parameters`, `kinesis_stream_parameters`, `lambda_function_parameters`, `redshift_data_parameters`, `sagemaker_pipeline_parameters`, `sqs_queue_parameters`, `step_function_state_machine_parameters` on the `target_parameters` block of `aws_pipes_pipe`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.batchJobParameters(...)`.
sealed class PipesPipeTargetParametersService {
  const PipesPipeTargetParametersService();

  /// Sets `batch_job_parameters`.
  const factory PipesPipeTargetParametersService.batchJobParameters(
    PipesPipeBatchJobParameters batchJobParameters,
  ) = PipesPipeTargetParametersServiceBatchJobParameters;

  /// Sets `cloudwatch_logs_parameters`.
  const factory PipesPipeTargetParametersService.cloudwatchLogsParameters(
    PipesPipeCloudwatchLogsParameters cloudwatchLogsParameters,
  ) = PipesPipeTargetParametersServiceCloudwatchLogsParameters;

  /// Sets `ecs_task_parameters`.
  const factory PipesPipeTargetParametersService.ecsTaskParameters(
    PipesPipeEcsTaskParameters ecsTaskParameters,
  ) = PipesPipeTargetParametersServiceEcsTaskParameters;

  /// Sets `eventbridge_event_bus_parameters`.
  const factory PipesPipeTargetParametersService.eventbridgeEventBusParameters(
    PipesPipeEventbridgeEventBusParameters eventbridgeEventBusParameters,
  ) = PipesPipeTargetParametersServiceEventbridgeEventBusParameters;

  /// Sets `http_parameters`.
  const factory PipesPipeTargetParametersService.httpParameters(
    PipesPipeHttpParameters httpParameters,
  ) = PipesPipeTargetParametersServiceHttpParameters;

  /// Sets `kinesis_stream_parameters`.
  const factory PipesPipeTargetParametersService.kinesisStreamParameters(
    PipesPipeTargetParametersKinesisStreamParameters kinesisStreamParameters,
  ) = PipesPipeTargetParametersServiceKinesisStreamParameters;

  /// Sets `lambda_function_parameters`.
  const factory PipesPipeTargetParametersService.lambdaFunctionParameters(
    PipesPipeLambdaFunctionParameters lambdaFunctionParameters,
  ) = PipesPipeTargetParametersServiceLambdaFunctionParameters;

  /// Sets `redshift_data_parameters`.
  const factory PipesPipeTargetParametersService.redshiftDataParameters(
    PipesPipeRedshiftDataParameters redshiftDataParameters,
  ) = PipesPipeTargetParametersServiceRedshiftDataParameters;

  /// Sets `sagemaker_pipeline_parameters`.
  const factory PipesPipeTargetParametersService.sagemakerPipelineParameters(
    PipesPipeSagemakerPipelineParameters sagemakerPipelineParameters,
  ) = PipesPipeTargetParametersServiceSagemakerPipelineParameters;

  /// Sets `sqs_queue_parameters`.
  const factory PipesPipeTargetParametersService.sqsQueueParameters(
    PipesPipeTargetParametersSqsQueueParameters sqsQueueParameters,
  ) = PipesPipeTargetParametersServiceSqsQueueParameters;

  /// Sets `step_function_state_machine_parameters`.
  const factory PipesPipeTargetParametersService.stepFunctionStateMachineParameters(
    PipesPipeStepFunctionStateMachineParameters
    stepFunctionStateMachineParameters,
  ) = PipesPipeTargetParametersServiceStepFunctionStateMachineParameters;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [PipesPipeTargetParametersService.batchJobParameters] choice: sets `batch_job_parameters`.
final class PipesPipeTargetParametersServiceBatchJobParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceBatchJobParameters(
    this.batchJobParameters,
  );

  final PipesPipeBatchJobParameters batchJobParameters;

  @override
  String get blockKey => 'batch_job_parameters';

  @override
  Map<String, Object?> encode() => {
    'batch_job_parameters': batchJobParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersService.cloudwatchLogsParameters] choice: sets `cloudwatch_logs_parameters`.
final class PipesPipeTargetParametersServiceCloudwatchLogsParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceCloudwatchLogsParameters(
    this.cloudwatchLogsParameters,
  );

  final PipesPipeCloudwatchLogsParameters cloudwatchLogsParameters;

  @override
  String get blockKey => 'cloudwatch_logs_parameters';

  @override
  Map<String, Object?> encode() => {
    'cloudwatch_logs_parameters': cloudwatchLogsParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersService.ecsTaskParameters] choice: sets `ecs_task_parameters`.
final class PipesPipeTargetParametersServiceEcsTaskParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceEcsTaskParameters(
    this.ecsTaskParameters,
  );

  final PipesPipeEcsTaskParameters ecsTaskParameters;

  @override
  String get blockKey => 'ecs_task_parameters';

  @override
  Map<String, Object?> encode() => {
    'ecs_task_parameters': ecsTaskParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersService.eventbridgeEventBusParameters] choice: sets `eventbridge_event_bus_parameters`.
final class PipesPipeTargetParametersServiceEventbridgeEventBusParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceEventbridgeEventBusParameters(
    this.eventbridgeEventBusParameters,
  );

  final PipesPipeEventbridgeEventBusParameters eventbridgeEventBusParameters;

  @override
  String get blockKey => 'eventbridge_event_bus_parameters';

  @override
  Map<String, Object?> encode() => {
    'eventbridge_event_bus_parameters': eventbridgeEventBusParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersService.httpParameters] choice: sets `http_parameters`.
final class PipesPipeTargetParametersServiceHttpParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceHttpParameters(this.httpParameters);

  final PipesPipeHttpParameters httpParameters;

  @override
  String get blockKey => 'http_parameters';

  @override
  Map<String, Object?> encode() => {'http_parameters': httpParameters.encode()};
}

/// The [PipesPipeTargetParametersService.kinesisStreamParameters] choice: sets `kinesis_stream_parameters`.
final class PipesPipeTargetParametersServiceKinesisStreamParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceKinesisStreamParameters(
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

/// The [PipesPipeTargetParametersService.lambdaFunctionParameters] choice: sets `lambda_function_parameters`.
final class PipesPipeTargetParametersServiceLambdaFunctionParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceLambdaFunctionParameters(
    this.lambdaFunctionParameters,
  );

  final PipesPipeLambdaFunctionParameters lambdaFunctionParameters;

  @override
  String get blockKey => 'lambda_function_parameters';

  @override
  Map<String, Object?> encode() => {
    'lambda_function_parameters': lambdaFunctionParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersService.redshiftDataParameters] choice: sets `redshift_data_parameters`.
final class PipesPipeTargetParametersServiceRedshiftDataParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceRedshiftDataParameters(
    this.redshiftDataParameters,
  );

  final PipesPipeRedshiftDataParameters redshiftDataParameters;

  @override
  String get blockKey => 'redshift_data_parameters';

  @override
  Map<String, Object?> encode() => {
    'redshift_data_parameters': redshiftDataParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersService.sagemakerPipelineParameters] choice: sets `sagemaker_pipeline_parameters`.
final class PipesPipeTargetParametersServiceSagemakerPipelineParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceSagemakerPipelineParameters(
    this.sagemakerPipelineParameters,
  );

  final PipesPipeSagemakerPipelineParameters sagemakerPipelineParameters;

  @override
  String get blockKey => 'sagemaker_pipeline_parameters';

  @override
  Map<String, Object?> encode() => {
    'sagemaker_pipeline_parameters': sagemakerPipelineParameters.encode(),
  };
}

/// The [PipesPipeTargetParametersService.sqsQueueParameters] choice: sets `sqs_queue_parameters`.
final class PipesPipeTargetParametersServiceSqsQueueParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceSqsQueueParameters(
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

/// The [PipesPipeTargetParametersService.stepFunctionStateMachineParameters] choice: sets `step_function_state_machine_parameters`.
final class PipesPipeTargetParametersServiceStepFunctionStateMachineParameters
    extends PipesPipeTargetParametersService {
  const PipesPipeTargetParametersServiceStepFunctionStateMachineParameters(
    this.stepFunctionStateMachineParameters,
  );

  final PipesPipeStepFunctionStateMachineParameters
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
final class PipesPipeBatchJobParameters {
  const PipesPipeBatchJobParameters({
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

  final PipesPipeArrayProperties? arrayProperties;

  final PipesPipeContainerOverrides? containerOverrides;

  final List<PipesPipeDependsOn>? dependsOn;

  final PipesPipeRetryStrategy? retryStrategy;

  Map<String, Object?> encode() => {
    'job_definition': jobDefinition.toTfJson(),
    'job_name': jobName.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'array_properties': ?arrayProperties?.encode(),
    'container_overrides': ?containerOverrides?.encode(),
    if (dependsOn != null)
      'depends_on': [for (final e in dependsOn!) e.encode()],
    'retry_strategy': ?retryStrategy?.encode(),
  };
}

/// Typed helper for the `target_parameters.batch_job_parameters.array_properties` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeArrayProperties {
  const PipesPipeArrayProperties({this.size});

  final TfArg<num>? size;

  Map<String, Object?> encode() => {'size': ?size?.toTfJson()};
}

/// Typed helper for the `target_parameters.batch_job_parameters.container_overrides` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeContainerOverrides {
  const PipesPipeContainerOverrides({
    this.command,
    this.instanceType,
    this.environment,
    this.resourceRequirement,
  });

  final TfArg<List<String>>? command;

  final TfArg<String>? instanceType;

  final List<PipesPipeEnvironment>? environment;

  final List<PipesPipeResourceRequirement>? resourceRequirement;

  Map<String, Object?> encode() => {
    'command': ?command?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
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
/// Shared by every block of this shape in the resource.
@immutable
final class PipesPipeEnvironment {
  const PipesPipeEnvironment({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.batch_job_parameters.container_overrides.resource_requirement` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeResourceRequirement {
  const PipesPipeResourceRequirement({required this.type, required this.value});

  final TfArg<PipesPipeResourceRequirementType> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeResourceRequirementType implements TerraformEnum {
  gpu('GPU'),
  memory('MEMORY'),
  vcpu('VCPU');

  const PipesPipeResourceRequirementType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.batch_job_parameters.depends_on` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeDependsOn {
  const PipesPipeDependsOn({this.jobId, this.type});

  final TfArg<String>? jobId;

  final TfArg<PipesPipeDependsOnType>? type;

  Map<String, Object?> encode() => {
    'job_id': ?jobId?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeDependsOnType implements TerraformEnum {
  nToN('N_TO_N'),
  sequential('SEQUENTIAL');

  const PipesPipeDependsOnType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.batch_job_parameters.retry_strategy` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeRetryStrategy {
  const PipesPipeRetryStrategy({this.attempts});

  final TfArg<num>? attempts;

  Map<String, Object?> encode() => {'attempts': ?attempts?.toTfJson()};
}

/// Typed helper for the `target_parameters.cloudwatch_logs_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeCloudwatchLogsParameters {
  const PipesPipeCloudwatchLogsParameters({this.logStreamName, this.timestamp});

  final TfArg<String>? logStreamName;

  final TfArg<String>? timestamp;

  Map<String, Object?> encode() => {
    'log_stream_name': ?logStreamName?.toTfJson(),
    'timestamp': ?timestamp?.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeEcsTaskParameters {
  const PipesPipeEcsTaskParameters({
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

  final TfArg<PipesPipeLaunchType>? launchType;

  final TfArg<String>? platformVersion;

  final TfArg<PipesPipePropagateTags>? propagateTags;

  final TfArg<String>? referenceId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num>? taskCount;

  final TfArg<String> taskDefinitionArn;

  final List<PipesPipeCapacityProviderStrategy>? capacityProviderStrategy;

  final PipesPipeNetworkConfiguration? networkConfiguration;

  final PipesPipeOverrides? overrides;

  final List<PipesPipePlacementConstraint>? placementConstraint;

  final List<PipesPipePlacementStrategy>? placementStrategy;

  Map<String, Object?> encode() => {
    'enable_ecs_managed_tags': ?enableEcsManagedTags?.toTfJson(),
    'enable_execute_command': ?enableExecuteCommand?.toTfJson(),
    'group': ?group?.toTfJson(),
    'launch_type': ?launchType?.toTfJson(),
    'platform_version': ?platformVersion?.toTfJson(),
    'propagate_tags': ?propagateTags?.toTfJson(),
    'reference_id': ?referenceId?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'task_count': ?taskCount?.toTfJson(),
    'task_definition_arn': taskDefinitionArn.toTfJson(),
    if (capacityProviderStrategy != null)
      'capacity_provider_strategy': [
        for (final e in capacityProviderStrategy!) e.encode(),
      ],
    'network_configuration': ?networkConfiguration?.encode(),
    'overrides': ?overrides?.encode(),
    if (placementConstraint != null)
      'placement_constraint': [
        for (final e in placementConstraint!) e.encode(),
      ],
    if (placementStrategy != null)
      'placement_strategy': [for (final e in placementStrategy!) e.encode()],
  };
}

/// `launch_type` — derived from the provider schema description.
enum PipesPipeLaunchType implements TerraformEnum {
  ec2('EC2'),
  fargate('FARGATE'),
  external('EXTERNAL');

  const PipesPipeLaunchType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `propagate_tags` — derived from the provider schema description.
enum PipesPipePropagateTags implements TerraformEnum {
  taskDefinition('TASK_DEFINITION');

  const PipesPipePropagateTags(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.capacity_provider_strategy` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeCapacityProviderStrategy {
  const PipesPipeCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  final TfArg<num>? base;

  final TfArg<String> capacityProvider;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'base': ?base?.toTfJson(),
    'capacity_provider': capacityProvider.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.network_configuration` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeNetworkConfiguration {
  const PipesPipeNetworkConfiguration({this.awsVpcConfiguration});

  final PipesPipeAwsVpcConfiguration? awsVpcConfiguration;

  Map<String, Object?> encode() => {
    'aws_vpc_configuration': ?awsVpcConfiguration?.encode(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.network_configuration.aws_vpc_configuration` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeAwsVpcConfiguration {
  const PipesPipeAwsVpcConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    this.subnets,
  });

  final TfArg<PipesPipeAssignPublicIp>? assignPublicIp;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups;

  final TfArg<List<RefTo<AwsSubnet>>>? subnets;

  Map<String, Object?> encode() => {
    'assign_public_ip': ?assignPublicIp?.toTfJson(),
    'security_groups': ?securityGroups?.encodeAs('id').toTfJson(),
    'subnets': ?subnets?.encodeAs('id').toTfJson(),
  };
}

/// `assign_public_ip` — derived from the provider schema description.
enum PipesPipeAssignPublicIp implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const PipesPipeAssignPublicIp(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeOverrides {
  const PipesPipeOverrides({
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

  final List<PipesPipeContainerOverride>? containerOverride;

  final PipesPipeEphemeralStorage? ephemeralStorage;

  final List<PipesPipeInferenceAcceleratorOverride>?
  inferenceAcceleratorOverride;

  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'execution_role_arn': ?executionRoleArn?.encodeAs('arn').toTfJson(),
    'memory': ?memory?.toTfJson(),
    'task_role_arn': ?taskRoleArn?.encodeAs('arn').toTfJson(),
    if (containerOverride != null)
      'container_override': [for (final e in containerOverride!) e.encode()],
    'ephemeral_storage': ?ephemeralStorage?.encode(),
    if (inferenceAcceleratorOverride != null)
      'inference_accelerator_override': [
        for (final e in inferenceAcceleratorOverride!) e.encode(),
      ],
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeContainerOverride {
  const PipesPipeContainerOverride({
    this.command,
    this.cpu,
    this.memory,
    this.memoryReservation,
    this.name,
    this.environment,
    this.environmentFile,
    this.resourceRequirement,
  });

  final TfArg<List<String>>? command;

  final TfArg<num>? cpu;

  final TfArg<num>? memory;

  final TfArg<num>? memoryReservation;

  final TfArg<String>? name;

  final List<PipesPipeEnvironment>? environment;

  final List<PipesPipeEnvironmentFile>? environmentFile;

  final List<PipesPipeContainerOverrideResourceRequirement>?
  resourceRequirement;

  Map<String, Object?> encode() => {
    'command': ?command?.toTfJson(),
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
    'memory_reservation': ?memoryReservation?.toTfJson(),
    'name': ?name?.toTfJson(),
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

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override.environment_file` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeEnvironmentFile {
  const PipesPipeEnvironmentFile({required this.type, required this.value});

  final TfArg<PipesPipeEnvironmentFileType> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeEnvironmentFileType implements TerraformEnum {
  s3('s3');

  const PipesPipeEnvironmentFileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override.resource_requirement` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeContainerOverrideResourceRequirement {
  const PipesPipeContainerOverrideResourceRequirement({
    required this.type,
    required this.value,
  });

  final TfArg<PipesPipeContainerOverrideType> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipeContainerOverrideType implements TerraformEnum {
  gpu('GPU'),
  inferenceaccelerator('InferenceAccelerator');

  const PipesPipeContainerOverrideType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.ephemeral_storage` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeEphemeralStorage {
  const PipesPipeEphemeralStorage({required this.sizeInGib});

  final TfArg<num> sizeInGib;

  Map<String, Object?> encode() => {'size_in_gib': sizeInGib.toTfJson()};
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.inference_accelerator_override` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeInferenceAcceleratorOverride {
  const PipesPipeInferenceAcceleratorOverride({
    this.deviceName,
    this.deviceType,
  });

  final TfArg<String>? deviceName;

  final TfArg<String>? deviceType;

  Map<String, Object?> encode() => {
    'device_name': ?deviceName?.toTfJson(),
    'device_type': ?deviceType?.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.placement_constraint` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipePlacementConstraint {
  const PipesPipePlacementConstraint({this.expression, this.type});

  final TfArg<String>? expression;

  final TfArg<PipesPipePlacementConstraintType>? type;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipePlacementConstraintType implements TerraformEnum {
  distinctinstance('distinctInstance'),
  memberof('memberOf');

  const PipesPipePlacementConstraintType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.ecs_task_parameters.placement_strategy` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipePlacementStrategy {
  const PipesPipePlacementStrategy({this.field, this.type});

  final TfArg<String>? field;

  final TfArg<PipesPipePlacementStrategyType>? type;

  Map<String, Object?> encode() => {
    'field': ?field?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum PipesPipePlacementStrategyType implements TerraformEnum {
  random('random'),
  spread('spread'),
  binpack('binpack');

  const PipesPipePlacementStrategyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.eventbridge_event_bus_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeEventbridgeEventBusParameters {
  const PipesPipeEventbridgeEventBusParameters({
    this.detailType,
    this.endpointId,
    this.resources,
    this.source,
    this.time,
  });

  final TfArg<String>? detailType;

  final TfArg<String>? endpointId;

  final TfArg<List<String>>? resources;

  final TfArg<String>? source;

  final TfArg<String>? time;

  Map<String, Object?> encode() => {
    'detail_type': ?detailType?.toTfJson(),
    'endpoint_id': ?endpointId?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'source': ?source?.toTfJson(),
    'time': ?time?.toTfJson(),
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
final class PipesPipeLambdaFunctionParameters {
  const PipesPipeLambdaFunctionParameters({required this.invocationType});

  final TfArg<PipesPipeInvocationType> invocationType;

  Map<String, Object?> encode() => {
    'invocation_type': invocationType.toTfJson(),
  };
}

/// `invocation_type` — derived from the provider schema description.
enum PipesPipeInvocationType implements TerraformEnum {
  requestResponse('REQUEST_RESPONSE'),
  fireAndForget('FIRE_AND_FORGET');

  const PipesPipeInvocationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `target_parameters.redshift_data_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeRedshiftDataParameters {
  const PipesPipeRedshiftDataParameters({
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

  final TfArg<List<String>> sqls;

  final TfArg<String>? statementName;

  final TfArg<bool>? withEvent;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'db_user': ?dbUser?.toTfJson(),
    'secret_manager_arn': ?secretManagerArn?.toTfJson(),
    'sqls': sqls.toTfJson(),
    'statement_name': ?statementName?.toTfJson(),
    'with_event': ?withEvent?.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.sagemaker_pipeline_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSagemakerPipelineParameters {
  const PipesPipeSagemakerPipelineParameters({this.pipelineParameter});

  final List<PipesPipePipelineParameter>? pipelineParameter;

  Map<String, Object?> encode() => {
    if (pipelineParameter != null)
      'pipeline_parameter': [for (final e in pipelineParameter!) e.encode()],
  };
}

/// Typed helper for the `target_parameters.sagemaker_pipeline_parameters.pipeline_parameter` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipePipelineParameter {
  const PipesPipePipelineParameter({required this.name, required this.value});

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
    'message_deduplication_id': ?messageDeduplicationId?.toTfJson(),
    'message_group_id': ?messageGroupId?.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.step_function_state_machine_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeStepFunctionStateMachineParameters {
  const PipesPipeStepFunctionStateMachineParameters({
    required this.invocationType,
  });

  final TfArg<PipesPipeInvocationType> invocationType;

  Map<String, Object?> encode() => {
    'invocation_type': invocationType.toTfJson(),
  };
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
           'description': ?description,
           'desired_state': ?desiredState,
           'enrichment': ?enrichment,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           ...?name?.argMap,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'source': source,
           'tags': ?tags,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredState =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `enrichment` attribute.
  TfRef<String> get enrichment => TfRef.attribute<String>(this, 'enrichment');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifier =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
