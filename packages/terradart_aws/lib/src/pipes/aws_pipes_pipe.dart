// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pipes_pipe`.
const Set<String> _awsPipesPipeSensitive = <String>{};

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

  final TfArg<List<Object?>>? includeExecutionData;

  final TfArg<String> level;

  final PipesPipeLogConfigurationCloudwatchLogsLogDestination?
  cloudwatchLogsLogDestination;

  final PipesPipeLogConfigurationFirehoseLogDestination? firehoseLogDestination;

  final PipesPipeLogConfigurationS3LogDestination? s3LogDestination;

  Map<String, Object?> encode() => {
    if (includeExecutionData != null)
      'include_execution_data': includeExecutionData!.toTfJson(),
    'level': level.toTfJson(),
    if (cloudwatchLogsLogDestination != null)
      'cloudwatch_logs_log_destination': cloudwatchLogsLogDestination!.encode(),
    if (firehoseLogDestination != null)
      'firehose_log_destination': firehoseLogDestination!.encode(),
    if (s3LogDestination != null)
      's3_log_destination': s3LogDestination!.encode(),
  };
}

/// Typed helper for the `log_configuration.cloudwatch_logs_log_destination` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeLogConfigurationCloudwatchLogsLogDestination {
  const PipesPipeLogConfigurationCloudwatchLogsLogDestination({
    required this.logGroupArn,
  });

  final TfArg<String> logGroupArn;

  Map<String, Object?> encode() => {'log_group_arn': logGroupArn.toTfJson()};
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

  final TfArg<String> bucketName;

  final TfArg<String> bucketOwner;

  final TfArg<String>? outputFormat;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    'bucket_owner': bucketOwner.toTfJson(),
    if (outputFormat != null) 'output_format': outputFormat!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `source_parameters` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeSourceParameters {
  const PipesPipeSourceParameters({
    this.activemqBrokerParameters,
    this.dynamodbStreamParameters,
    this.filterCriteria,
    this.kinesisStreamParameters,
    this.managedStreamingKafkaParameters,
    this.rabbitmqBrokerParameters,
    this.selfManagedKafkaParameters,
    this.sqsQueueParameters,
  });

  final PipesPipeSourceParametersActivemqBrokerParameters?
  activemqBrokerParameters;

  final PipesPipeSourceParametersDynamodbStreamParameters?
  dynamodbStreamParameters;

  final PipesPipeSourceParametersFilterCriteria? filterCriteria;

  final PipesPipeSourceParametersKinesisStreamParameters?
  kinesisStreamParameters;

  final PipesPipeSourceParametersManagedStreamingKafkaParameters?
  managedStreamingKafkaParameters;

  final PipesPipeSourceParametersRabbitmqBrokerParameters?
  rabbitmqBrokerParameters;

  final PipesPipeSourceParametersSelfManagedKafkaParameters?
  selfManagedKafkaParameters;

  final PipesPipeSourceParametersSqsQueueParameters? sqsQueueParameters;

  Map<String, Object?> encode() => {
    if (activemqBrokerParameters != null)
      'activemq_broker_parameters': activemqBrokerParameters!.encode(),
    if (dynamodbStreamParameters != null)
      'dynamodb_stream_parameters': dynamodbStreamParameters!.encode(),
    if (filterCriteria != null) 'filter_criteria': filterCriteria!.encode(),
    if (kinesisStreamParameters != null)
      'kinesis_stream_parameters': kinesisStreamParameters!.encode(),
    if (managedStreamingKafkaParameters != null)
      'managed_streaming_kafka_parameters': managedStreamingKafkaParameters!
          .encode(),
    if (rabbitmqBrokerParameters != null)
      'rabbitmq_broker_parameters': rabbitmqBrokerParameters!.encode(),
    if (selfManagedKafkaParameters != null)
      'self_managed_kafka_parameters': selfManagedKafkaParameters!.encode(),
    if (sqsQueueParameters != null)
      'sqs_queue_parameters': sqsQueueParameters!.encode(),
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

  final TfArg<String>? onPartialBatchItemFailure;

  final TfArg<num>? parallelizationFactor;

  final TfArg<String> startingPosition;

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

  final TfArg<String>? onPartialBatchItemFailure;

  final TfArg<num>? parallelizationFactor;

  final TfArg<String> startingPosition;

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

  final TfArg<String>? startingPosition;

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

  final TfArg<String>? startingPosition;

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

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<List<Object?>>? subnets;

  Map<String, Object?> encode() => {
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    if (subnets != null) 'subnets': subnets!.toTfJson(),
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
  const PipesPipeTargetParameters({
    this.inputTemplate,
    this.batchJobParameters,
    this.cloudwatchLogsParameters,
    this.ecsTaskParameters,
    this.eventbridgeEventBusParameters,
    this.httpParameters,
    this.kinesisStreamParameters,
    this.lambdaFunctionParameters,
    this.redshiftDataParameters,
    this.sagemakerPipelineParameters,
    this.sqsQueueParameters,
    this.stepFunctionStateMachineParameters,
  });

  final TfArg<String>? inputTemplate;

  final PipesPipeTargetParametersBatchJobParameters? batchJobParameters;

  final PipesPipeTargetParametersCloudwatchLogsParameters?
  cloudwatchLogsParameters;

  final PipesPipeTargetParametersEcsTaskParameters? ecsTaskParameters;

  final PipesPipeTargetParametersEventbridgeEventBusParameters?
  eventbridgeEventBusParameters;

  final PipesPipeTargetParametersHttpParameters? httpParameters;

  final PipesPipeTargetParametersKinesisStreamParameters?
  kinesisStreamParameters;

  final PipesPipeTargetParametersLambdaFunctionParameters?
  lambdaFunctionParameters;

  final PipesPipeTargetParametersRedshiftDataParameters? redshiftDataParameters;

  final PipesPipeTargetParametersSagemakerPipelineParameters?
  sagemakerPipelineParameters;

  final PipesPipeTargetParametersSqsQueueParameters? sqsQueueParameters;

  final PipesPipeTargetParametersStepFunctionStateMachineParameters?
  stepFunctionStateMachineParameters;

  Map<String, Object?> encode() => {
    if (inputTemplate != null) 'input_template': inputTemplate!.toTfJson(),
    if (batchJobParameters != null)
      'batch_job_parameters': batchJobParameters!.encode(),
    if (cloudwatchLogsParameters != null)
      'cloudwatch_logs_parameters': cloudwatchLogsParameters!.encode(),
    if (ecsTaskParameters != null)
      'ecs_task_parameters': ecsTaskParameters!.encode(),
    if (eventbridgeEventBusParameters != null)
      'eventbridge_event_bus_parameters': eventbridgeEventBusParameters!
          .encode(),
    if (httpParameters != null) 'http_parameters': httpParameters!.encode(),
    if (kinesisStreamParameters != null)
      'kinesis_stream_parameters': kinesisStreamParameters!.encode(),
    if (lambdaFunctionParameters != null)
      'lambda_function_parameters': lambdaFunctionParameters!.encode(),
    if (redshiftDataParameters != null)
      'redshift_data_parameters': redshiftDataParameters!.encode(),
    if (sagemakerPipelineParameters != null)
      'sagemaker_pipeline_parameters': sagemakerPipelineParameters!.encode(),
    if (sqsQueueParameters != null)
      'sqs_queue_parameters': sqsQueueParameters!.encode(),
    if (stepFunctionStateMachineParameters != null)
      'step_function_state_machine_parameters':
          stepFunctionStateMachineParameters!.encode(),
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

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
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

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (jobId != null) 'job_id': jobId!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
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

  final TfArg<String>? launchType;

  final TfArg<String>? platformVersion;

  final TfArg<String>? propagateTags;

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

  final TfArg<String>? assignPublicIp;

  final TfArg<List<Object?>>? securityGroups;

  final TfArg<List<Object?>>? subnets;

  Map<String, Object?> encode() => {
    if (assignPublicIp != null) 'assign_public_ip': assignPublicIp!.toTfJson(),
    if (securityGroups != null) 'security_groups': securityGroups!.toTfJson(),
    if (subnets != null) 'subnets': subnets!.toTfJson(),
  };
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

  final TfArg<String>? executionRoleArn;

  final TfArg<String>? memory;

  final TfArg<String>? taskRoleArn;

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
      'execution_role_arn': executionRoleArn!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
    if (taskRoleArn != null) 'task_role_arn': taskRoleArn!.toTfJson(),
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

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `target_parameters.ecs_task_parameters.overrides.container_override.resource_requirement` block of
/// `aws_pipes_pipe` (derived from provider schema).
@immutable
final class PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement {
  const PipesPipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
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

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
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

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
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

  final TfArg<String> invocationType;

  Map<String, Object?> encode() => {
    'invocation_type': invocationType.toTfJson(),
  };
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

  final TfArg<String> invocationType;

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
    TfArg<String>? desiredState,
    TfArg<String>? enrichment,
    TfArg<String>? kmsKeyIdentifier,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    required TfArg<String> roleArn,
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
           if (kmsKeyIdentifier != null) 'kms_key_identifier': kmsKeyIdentifier,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           'role_arn': roleArn,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
