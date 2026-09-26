// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_topic_rule`.
const Set<String> _awsIotTopicRuleSensitive = <String>{};

/// Typed helper for the `cloudwatch_alarm` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleCloudwatchAlarm {
  const IotTopicRuleCloudwatchAlarm({
    required this.alarmName,
    required this.roleArn,
    required this.stateReason,
    required this.stateValue,
  });

  final TfArg<String> alarmName;

  final TfArg<String> roleArn;

  final TfArg<String> stateReason;

  final TfArg<String> stateValue;

  Map<String, Object?> encode() => {
    'alarm_name': alarmName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'state_reason': stateReason.toTfJson(),
    'state_value': stateValue.toTfJson(),
  };
}

/// Typed helper for the `cloudwatch_logs` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleCloudwatchLogs {
  const IotTopicRuleCloudwatchLogs({
    this.batchMode,
    required this.logGroupName,
    required this.roleArn,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> logGroupName;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'log_group_name': logGroupName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `cloudwatch_metric` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleCloudwatchMetric {
  const IotTopicRuleCloudwatchMetric({
    required this.metricName,
    required this.metricNamespace,
    this.metricTimestamp,
    required this.metricUnit,
    required this.metricValue,
    required this.roleArn,
  });

  final TfArg<String> metricName;

  final TfArg<String> metricNamespace;

  final TfArg<String>? metricTimestamp;

  final TfArg<String> metricUnit;

  final TfArg<String> metricValue;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'metric_namespace': metricNamespace.toTfJson(),
    if (metricTimestamp != null)
      'metric_timestamp': metricTimestamp!.toTfJson(),
    'metric_unit': metricUnit.toTfJson(),
    'metric_value': metricValue.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `dynamodb` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleDynamodb {
  const IotTopicRuleDynamodb({
    required this.hashKeyField,
    this.hashKeyType,
    required this.hashKeyValue,
    this.operation,
    this.payloadField,
    this.rangeKeyField,
    this.rangeKeyType,
    this.rangeKeyValue,
    required this.roleArn,
    required this.tableName,
  });

  final TfArg<String> hashKeyField;

  final TfArg<String>? hashKeyType;

  final TfArg<String> hashKeyValue;

  final TfArg<String>? operation;

  final TfArg<String>? payloadField;

  final TfArg<String>? rangeKeyField;

  final TfArg<String>? rangeKeyType;

  final TfArg<String>? rangeKeyValue;

  final TfArg<String> roleArn;

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {
    'hash_key_field': hashKeyField.toTfJson(),
    if (hashKeyType != null) 'hash_key_type': hashKeyType!.toTfJson(),
    'hash_key_value': hashKeyValue.toTfJson(),
    if (operation != null) 'operation': operation!.toTfJson(),
    if (payloadField != null) 'payload_field': payloadField!.toTfJson(),
    if (rangeKeyField != null) 'range_key_field': rangeKeyField!.toTfJson(),
    if (rangeKeyType != null) 'range_key_type': rangeKeyType!.toTfJson(),
    if (rangeKeyValue != null) 'range_key_value': rangeKeyValue!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Typed helper for the `dynamodbv2` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleDynamodbv2 {
  const IotTopicRuleDynamodbv2({required this.roleArn, this.putItem});

  final TfArg<String> roleArn;

  final IotTopicRuleDynamodbv2PutItem? putItem;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    if (putItem != null) 'put_item': putItem!.encode(),
  };
}

/// Typed helper for the `dynamodbv2.put_item` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleDynamodbv2PutItem {
  const IotTopicRuleDynamodbv2PutItem({required this.tableName});

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {'table_name': tableName.toTfJson()};
}

/// Typed helper for the `elasticsearch` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleElasticsearch {
  const IotTopicRuleElasticsearch({
    required this.endpoint,
    required this.id,
    required this.index,
    required this.roleArn,
    required this.type,
  });

  final TfArg<String> endpoint;

  final TfArg<String> id;

  final TfArg<String> index;

  final TfArg<String> roleArn;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'id': id.toTfJson(),
    'index': index.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `error_action` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorAction {
  const IotTopicRuleErrorAction({
    this.cloudwatchAlarm,
    this.cloudwatchLogs,
    this.cloudwatchMetric,
    this.dynamodb,
    this.dynamodbv2,
    this.elasticsearch,
    this.firehose,
    this.http,
    this.iotAnalytics,
    this.iotEvents,
    this.kafka,
    this.kinesis,
    this.lambda,
    this.republish,
    this.s3,
    this.sns,
    this.sqs,
    this.stepFunctions,
    this.timestream,
  });

  final IotTopicRuleErrorActionCloudwatchAlarm? cloudwatchAlarm;

  final IotTopicRuleErrorActionCloudwatchLogs? cloudwatchLogs;

  final IotTopicRuleErrorActionCloudwatchMetric? cloudwatchMetric;

  final IotTopicRuleErrorActionDynamodb? dynamodb;

  final IotTopicRuleErrorActionDynamodbv2? dynamodbv2;

  final IotTopicRuleErrorActionElasticsearch? elasticsearch;

  final IotTopicRuleErrorActionFirehose? firehose;

  final IotTopicRuleErrorActionHttp? http;

  final IotTopicRuleErrorActionIotAnalytics? iotAnalytics;

  final IotTopicRuleErrorActionIotEvents? iotEvents;

  final IotTopicRuleErrorActionKafka? kafka;

  final IotTopicRuleErrorActionKinesis? kinesis;

  final IotTopicRuleErrorActionLambda? lambda;

  final IotTopicRuleErrorActionRepublish? republish;

  final IotTopicRuleErrorActionS3? s3;

  final IotTopicRuleErrorActionSns? sns;

  final IotTopicRuleErrorActionSqs? sqs;

  final IotTopicRuleErrorActionStepFunctions? stepFunctions;

  final IotTopicRuleErrorActionTimestream? timestream;

  Map<String, Object?> encode() => {
    if (cloudwatchAlarm != null) 'cloudwatch_alarm': cloudwatchAlarm!.encode(),
    if (cloudwatchLogs != null) 'cloudwatch_logs': cloudwatchLogs!.encode(),
    if (cloudwatchMetric != null)
      'cloudwatch_metric': cloudwatchMetric!.encode(),
    if (dynamodb != null) 'dynamodb': dynamodb!.encode(),
    if (dynamodbv2 != null) 'dynamodbv2': dynamodbv2!.encode(),
    if (elasticsearch != null) 'elasticsearch': elasticsearch!.encode(),
    if (firehose != null) 'firehose': firehose!.encode(),
    if (http != null) 'http': http!.encode(),
    if (iotAnalytics != null) 'iot_analytics': iotAnalytics!.encode(),
    if (iotEvents != null) 'iot_events': iotEvents!.encode(),
    if (kafka != null) 'kafka': kafka!.encode(),
    if (kinesis != null) 'kinesis': kinesis!.encode(),
    if (lambda != null) 'lambda': lambda!.encode(),
    if (republish != null) 'republish': republish!.encode(),
    if (s3 != null) 's3': s3!.encode(),
    if (sns != null) 'sns': sns!.encode(),
    if (sqs != null) 'sqs': sqs!.encode(),
    if (stepFunctions != null) 'step_functions': stepFunctions!.encode(),
    if (timestream != null) 'timestream': timestream!.encode(),
  };
}

/// Typed helper for the `error_action.cloudwatch_alarm` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionCloudwatchAlarm {
  const IotTopicRuleErrorActionCloudwatchAlarm({
    required this.alarmName,
    required this.roleArn,
    required this.stateReason,
    required this.stateValue,
  });

  final TfArg<String> alarmName;

  final TfArg<String> roleArn;

  final TfArg<String> stateReason;

  final TfArg<String> stateValue;

  Map<String, Object?> encode() => {
    'alarm_name': alarmName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'state_reason': stateReason.toTfJson(),
    'state_value': stateValue.toTfJson(),
  };
}

/// Typed helper for the `error_action.cloudwatch_logs` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionCloudwatchLogs {
  const IotTopicRuleErrorActionCloudwatchLogs({
    this.batchMode,
    required this.logGroupName,
    required this.roleArn,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> logGroupName;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'log_group_name': logGroupName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `error_action.cloudwatch_metric` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionCloudwatchMetric {
  const IotTopicRuleErrorActionCloudwatchMetric({
    required this.metricName,
    required this.metricNamespace,
    this.metricTimestamp,
    required this.metricUnit,
    required this.metricValue,
    required this.roleArn,
  });

  final TfArg<String> metricName;

  final TfArg<String> metricNamespace;

  final TfArg<String>? metricTimestamp;

  final TfArg<String> metricUnit;

  final TfArg<String> metricValue;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'metric_namespace': metricNamespace.toTfJson(),
    if (metricTimestamp != null)
      'metric_timestamp': metricTimestamp!.toTfJson(),
    'metric_unit': metricUnit.toTfJson(),
    'metric_value': metricValue.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `error_action.dynamodb` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionDynamodb {
  const IotTopicRuleErrorActionDynamodb({
    required this.hashKeyField,
    this.hashKeyType,
    required this.hashKeyValue,
    this.operation,
    this.payloadField,
    this.rangeKeyField,
    this.rangeKeyType,
    this.rangeKeyValue,
    required this.roleArn,
    required this.tableName,
  });

  final TfArg<String> hashKeyField;

  final TfArg<String>? hashKeyType;

  final TfArg<String> hashKeyValue;

  final TfArg<String>? operation;

  final TfArg<String>? payloadField;

  final TfArg<String>? rangeKeyField;

  final TfArg<String>? rangeKeyType;

  final TfArg<String>? rangeKeyValue;

  final TfArg<String> roleArn;

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {
    'hash_key_field': hashKeyField.toTfJson(),
    if (hashKeyType != null) 'hash_key_type': hashKeyType!.toTfJson(),
    'hash_key_value': hashKeyValue.toTfJson(),
    if (operation != null) 'operation': operation!.toTfJson(),
    if (payloadField != null) 'payload_field': payloadField!.toTfJson(),
    if (rangeKeyField != null) 'range_key_field': rangeKeyField!.toTfJson(),
    if (rangeKeyType != null) 'range_key_type': rangeKeyType!.toTfJson(),
    if (rangeKeyValue != null) 'range_key_value': rangeKeyValue!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Typed helper for the `error_action.dynamodbv2` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionDynamodbv2 {
  const IotTopicRuleErrorActionDynamodbv2({
    required this.roleArn,
    this.putItem,
  });

  final TfArg<String> roleArn;

  final IotTopicRuleErrorActionDynamodbv2PutItem? putItem;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    if (putItem != null) 'put_item': putItem!.encode(),
  };
}

/// Typed helper for the `error_action.dynamodbv2.put_item` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionDynamodbv2PutItem {
  const IotTopicRuleErrorActionDynamodbv2PutItem({required this.tableName});

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {'table_name': tableName.toTfJson()};
}

/// Typed helper for the `error_action.elasticsearch` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionElasticsearch {
  const IotTopicRuleErrorActionElasticsearch({
    required this.endpoint,
    required this.id,
    required this.index,
    required this.roleArn,
    required this.type,
  });

  final TfArg<String> endpoint;

  final TfArg<String> id;

  final TfArg<String> index;

  final TfArg<String> roleArn;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'id': id.toTfJson(),
    'index': index.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `error_action.firehose` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionFirehose {
  const IotTopicRuleErrorActionFirehose({
    this.batchMode,
    required this.deliveryStreamName,
    required this.roleArn,
    this.separator,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> deliveryStreamName;

  final TfArg<String> roleArn;

  final TfArg<String>? separator;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'delivery_stream_name': deliveryStreamName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (separator != null) 'separator': separator!.toTfJson(),
  };
}

/// Typed helper for the `error_action.http` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionHttp {
  const IotTopicRuleErrorActionHttp({
    this.confirmationUrl,
    required this.url,
    this.httpHeader,
  });

  final TfArg<String>? confirmationUrl;

  final TfArg<String> url;

  final List<IotTopicRuleErrorActionHttpHttpHeader>? httpHeader;

  Map<String, Object?> encode() => {
    if (confirmationUrl != null)
      'confirmation_url': confirmationUrl!.toTfJson(),
    'url': url.toTfJson(),
    if (httpHeader != null)
      'http_header': [for (final e in httpHeader!) e.encode()],
  };
}

/// Typed helper for the `error_action.http.http_header` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionHttpHttpHeader {
  const IotTopicRuleErrorActionHttpHttpHeader({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `error_action.iot_analytics` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionIotAnalytics {
  const IotTopicRuleErrorActionIotAnalytics({
    this.batchMode,
    required this.channelName,
    required this.roleArn,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> channelName;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'channel_name': channelName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `error_action.iot_events` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionIotEvents {
  const IotTopicRuleErrorActionIotEvents({
    this.batchMode,
    required this.inputName,
    this.messageId,
    required this.roleArn,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> inputName;

  final TfArg<String>? messageId;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'input_name': inputName.toTfJson(),
    if (messageId != null) 'message_id': messageId!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `error_action.kafka` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionKafka {
  const IotTopicRuleErrorActionKafka({
    required this.clientProperties,
    required this.destinationArn,
    this.key,
    this.partition,
    required this.topic,
    this.header,
  });

  final TfArg<Map<String, String>> clientProperties;

  final TfArg<String> destinationArn;

  final TfArg<String>? key;

  final TfArg<String>? partition;

  final TfArg<String> topic;

  final List<IotTopicRuleErrorActionKafkaHeader>? header;

  Map<String, Object?> encode() => {
    'client_properties': clientProperties.toTfJson(),
    'destination_arn': destinationArn.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (partition != null) 'partition': partition!.toTfJson(),
    'topic': topic.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `error_action.kafka.header` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionKafkaHeader {
  const IotTopicRuleErrorActionKafkaHeader({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `error_action.kinesis` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionKinesis {
  const IotTopicRuleErrorActionKinesis({
    this.partitionKey,
    required this.roleArn,
    required this.streamName,
  });

  final TfArg<String>? partitionKey;

  final TfArg<String> roleArn;

  final TfArg<String> streamName;

  Map<String, Object?> encode() => {
    if (partitionKey != null) 'partition_key': partitionKey!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'stream_name': streamName.toTfJson(),
  };
}

/// Typed helper for the `error_action.lambda` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionLambda {
  const IotTopicRuleErrorActionLambda({required this.functionArn});

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {'function_arn': functionArn.toTfJson()};
}

/// Typed helper for the `error_action.republish` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionRepublish {
  const IotTopicRuleErrorActionRepublish({
    this.qos,
    required this.roleArn,
    required this.topic,
  });

  final TfArg<num>? qos;

  final TfArg<String> roleArn;

  final TfArg<String> topic;

  Map<String, Object?> encode() => {
    if (qos != null) 'qos': qos!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'topic': topic.toTfJson(),
  };
}

/// Typed helper for the `error_action.s3` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionS3 {
  const IotTopicRuleErrorActionS3({
    required this.bucketName,
    this.cannedAcl,
    required this.key,
    required this.roleArn,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? cannedAcl;

  final TfArg<String> key;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (cannedAcl != null) 'canned_acl': cannedAcl!.toTfJson(),
    'key': key.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `error_action.sns` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionSns {
  const IotTopicRuleErrorActionSns({
    this.messageFormat,
    required this.roleArn,
    required this.targetArn,
  });

  final TfArg<String>? messageFormat;

  final TfArg<String> roleArn;

  final TfArg<String> targetArn;

  Map<String, Object?> encode() => {
    if (messageFormat != null) 'message_format': messageFormat!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'target_arn': targetArn.toTfJson(),
  };
}

/// Typed helper for the `error_action.sqs` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionSqs {
  const IotTopicRuleErrorActionSqs({
    required this.queueUrl,
    required this.roleArn,
    required this.useBase64,
  });

  final TfArg<String> queueUrl;

  final TfArg<String> roleArn;

  final TfArg<bool> useBase64;

  Map<String, Object?> encode() => {
    'queue_url': queueUrl.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'use_base64': useBase64.toTfJson(),
  };
}

/// Typed helper for the `error_action.step_functions` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionStepFunctions {
  const IotTopicRuleErrorActionStepFunctions({
    this.executionNamePrefix,
    required this.roleArn,
    required this.stateMachineName,
  });

  final TfArg<String>? executionNamePrefix;

  final TfArg<String> roleArn;

  final TfArg<String> stateMachineName;

  Map<String, Object?> encode() => {
    if (executionNamePrefix != null)
      'execution_name_prefix': executionNamePrefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'state_machine_name': stateMachineName.toTfJson(),
  };
}

/// Typed helper for the `error_action.timestream` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionTimestream {
  const IotTopicRuleErrorActionTimestream({
    required this.databaseName,
    required this.roleArn,
    required this.tableName,
    required this.dimension,
    this.timestamp,
  });

  final TfArg<String> databaseName;

  final TfArg<String> roleArn;

  final TfArg<String> tableName;

  final List<IotTopicRuleErrorActionTimestreamDimension> dimension;

  final IotTopicRuleErrorActionTimestreamTimestamp? timestamp;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'table_name': tableName.toTfJson(),
    'dimension': [for (final e in dimension) e.encode()],
    if (timestamp != null) 'timestamp': timestamp!.encode(),
  };
}

/// Typed helper for the `error_action.timestream.dimension` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionTimestreamDimension {
  const IotTopicRuleErrorActionTimestreamDimension({
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

/// Typed helper for the `error_action.timestream.timestamp` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleErrorActionTimestreamTimestamp {
  const IotTopicRuleErrorActionTimestreamTimestamp({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `firehose` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleFirehose {
  const IotTopicRuleFirehose({
    this.batchMode,
    required this.deliveryStreamName,
    required this.roleArn,
    this.separator,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> deliveryStreamName;

  final TfArg<String> roleArn;

  final TfArg<String>? separator;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'delivery_stream_name': deliveryStreamName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (separator != null) 'separator': separator!.toTfJson(),
  };
}

/// Typed helper for the `http` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleHttp {
  const IotTopicRuleHttp({
    this.confirmationUrl,
    required this.url,
    this.httpHeader,
  });

  final TfArg<String>? confirmationUrl;

  final TfArg<String> url;

  final List<IotTopicRuleHttpHttpHeader>? httpHeader;

  Map<String, Object?> encode() => {
    if (confirmationUrl != null)
      'confirmation_url': confirmationUrl!.toTfJson(),
    'url': url.toTfJson(),
    if (httpHeader != null)
      'http_header': [for (final e in httpHeader!) e.encode()],
  };
}

/// Typed helper for the `http.http_header` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleHttpHttpHeader {
  const IotTopicRuleHttpHttpHeader({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `iot_analytics` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleIotAnalytics {
  const IotTopicRuleIotAnalytics({
    this.batchMode,
    required this.channelName,
    required this.roleArn,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> channelName;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'channel_name': channelName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `iot_events` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleIotEvents {
  const IotTopicRuleIotEvents({
    this.batchMode,
    required this.inputName,
    this.messageId,
    required this.roleArn,
  });

  final TfArg<bool>? batchMode;

  final TfArg<String> inputName;

  final TfArg<String>? messageId;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (batchMode != null) 'batch_mode': batchMode!.toTfJson(),
    'input_name': inputName.toTfJson(),
    if (messageId != null) 'message_id': messageId!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `kafka` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleKafka {
  const IotTopicRuleKafka({
    required this.clientProperties,
    required this.destinationArn,
    this.key,
    this.partition,
    required this.topic,
    this.header,
  });

  final TfArg<Map<String, String>> clientProperties;

  final TfArg<String> destinationArn;

  final TfArg<String>? key;

  final TfArg<String>? partition;

  final TfArg<String> topic;

  final List<IotTopicRuleKafkaHeader>? header;

  Map<String, Object?> encode() => {
    'client_properties': clientProperties.toTfJson(),
    'destination_arn': destinationArn.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (partition != null) 'partition': partition!.toTfJson(),
    'topic': topic.toTfJson(),
    if (header != null) 'header': [for (final e in header!) e.encode()],
  };
}

/// Typed helper for the `kafka.header` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleKafkaHeader {
  const IotTopicRuleKafkaHeader({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `kinesis` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleKinesis {
  const IotTopicRuleKinesis({
    this.partitionKey,
    required this.roleArn,
    required this.streamName,
  });

  final TfArg<String>? partitionKey;

  final TfArg<String> roleArn;

  final TfArg<String> streamName;

  Map<String, Object?> encode() => {
    if (partitionKey != null) 'partition_key': partitionKey!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'stream_name': streamName.toTfJson(),
  };
}

/// Typed helper for the `lambda` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleLambda {
  const IotTopicRuleLambda({required this.functionArn});

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {'function_arn': functionArn.toTfJson()};
}

/// Typed helper for the `republish` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleRepublish {
  const IotTopicRuleRepublish({
    this.qos,
    required this.roleArn,
    required this.topic,
  });

  final TfArg<num>? qos;

  final TfArg<String> roleArn;

  final TfArg<String> topic;

  Map<String, Object?> encode() => {
    if (qos != null) 'qos': qos!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'topic': topic.toTfJson(),
  };
}

/// Typed helper for the `s3` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleS3 {
  const IotTopicRuleS3({
    required this.bucketName,
    this.cannedAcl,
    required this.key,
    required this.roleArn,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? cannedAcl;

  final TfArg<String> key;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (cannedAcl != null) 'canned_acl': cannedAcl!.toTfJson(),
    'key': key.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `sns` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleSns {
  const IotTopicRuleSns({
    this.messageFormat,
    required this.roleArn,
    required this.targetArn,
  });

  final TfArg<String>? messageFormat;

  final TfArg<String> roleArn;

  final TfArg<String> targetArn;

  Map<String, Object?> encode() => {
    if (messageFormat != null) 'message_format': messageFormat!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'target_arn': targetArn.toTfJson(),
  };
}

/// Typed helper for the `sqs` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleSqs {
  const IotTopicRuleSqs({
    required this.queueUrl,
    required this.roleArn,
    required this.useBase64,
  });

  final TfArg<String> queueUrl;

  final TfArg<String> roleArn;

  final TfArg<bool> useBase64;

  Map<String, Object?> encode() => {
    'queue_url': queueUrl.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'use_base64': useBase64.toTfJson(),
  };
}

/// Typed helper for the `step_functions` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleStepFunctions {
  const IotTopicRuleStepFunctions({
    this.executionNamePrefix,
    required this.roleArn,
    required this.stateMachineName,
  });

  final TfArg<String>? executionNamePrefix;

  final TfArg<String> roleArn;

  final TfArg<String> stateMachineName;

  Map<String, Object?> encode() => {
    if (executionNamePrefix != null)
      'execution_name_prefix': executionNamePrefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'state_machine_name': stateMachineName.toTfJson(),
  };
}

/// Typed helper for the `timestream` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleTimestream {
  const IotTopicRuleTimestream({
    required this.databaseName,
    required this.roleArn,
    required this.tableName,
    required this.dimension,
    this.timestamp,
  });

  final TfArg<String> databaseName;

  final TfArg<String> roleArn;

  final TfArg<String> tableName;

  final List<IotTopicRuleTimestreamDimension> dimension;

  final IotTopicRuleTimestreamTimestamp? timestamp;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'table_name': tableName.toTfJson(),
    'dimension': [for (final e in dimension) e.encode()],
    if (timestamp != null) 'timestamp': timestamp!.encode(),
  };
}

/// Typed helper for the `timestream.dimension` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleTimestreamDimension {
  const IotTopicRuleTimestreamDimension({
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

/// Typed helper for the `timestream.timestamp` block of
/// `aws_iot_topic_rule` (derived from provider schema).
@immutable
final class IotTopicRuleTimestreamTimestamp {
  const IotTopicRuleTimestreamTimestamp({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_topic_rule`.
final class AwsIotTopicRule extends Resource {
  static const String tfType = 'aws_iot_topic_rule';

  AwsIotTopicRule({
    required super.localName,
    TfArg<String>? description,
    required TfArg<bool> enabled,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> sql,
    required TfArg<String> sqlVersion,
    TfArg<Map<String, String>>? tags,
    List<IotTopicRuleCloudwatchAlarm>? cloudwatchAlarm,
    List<IotTopicRuleCloudwatchLogs>? cloudwatchLogs,
    List<IotTopicRuleCloudwatchMetric>? cloudwatchMetric,
    List<IotTopicRuleDynamodb>? dynamodb,
    List<IotTopicRuleDynamodbv2>? dynamodbv2,
    List<IotTopicRuleElasticsearch>? elasticsearch,
    IotTopicRuleErrorAction? errorAction,
    List<IotTopicRuleFirehose>? firehose,
    List<IotTopicRuleHttp>? http,
    List<IotTopicRuleIotAnalytics>? iotAnalytics,
    List<IotTopicRuleIotEvents>? iotEvents,
    List<IotTopicRuleKafka>? kafka,
    List<IotTopicRuleKinesis>? kinesis,
    List<IotTopicRuleLambda>? lambda,
    List<IotTopicRuleRepublish>? republish,
    List<IotTopicRuleS3>? s3,
    List<IotTopicRuleSns>? sns,
    List<IotTopicRuleSqs>? sqs,
    List<IotTopicRuleStepFunctions>? stepFunctions,
    List<IotTopicRuleTimestream>? timestream,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'enabled': enabled,
           'name': name,
           if (region != null) 'region': region,
           'sql': sql,
           'sql_version': sqlVersion,
           if (tags != null) 'tags': tags,
           if (cloudwatchAlarm != null)
             'cloudwatch_alarm': TfArg.literal([
               for (final e in cloudwatchAlarm) e.encode(),
             ]),
           if (cloudwatchLogs != null)
             'cloudwatch_logs': TfArg.literal([
               for (final e in cloudwatchLogs) e.encode(),
             ]),
           if (cloudwatchMetric != null)
             'cloudwatch_metric': TfArg.literal([
               for (final e in cloudwatchMetric) e.encode(),
             ]),
           if (dynamodb != null)
             'dynamodb': TfArg.literal([for (final e in dynamodb) e.encode()]),
           if (dynamodbv2 != null)
             'dynamodbv2': TfArg.literal([
               for (final e in dynamodbv2) e.encode(),
             ]),
           if (elasticsearch != null)
             'elasticsearch': TfArg.literal([
               for (final e in elasticsearch) e.encode(),
             ]),
           if (errorAction != null)
             'error_action': TfArg.literal(errorAction.encode()),
           if (firehose != null)
             'firehose': TfArg.literal([for (final e in firehose) e.encode()]),
           if (http != null)
             'http': TfArg.literal([for (final e in http) e.encode()]),
           if (iotAnalytics != null)
             'iot_analytics': TfArg.literal([
               for (final e in iotAnalytics) e.encode(),
             ]),
           if (iotEvents != null)
             'iot_events': TfArg.literal([
               for (final e in iotEvents) e.encode(),
             ]),
           if (kafka != null)
             'kafka': TfArg.literal([for (final e in kafka) e.encode()]),
           if (kinesis != null)
             'kinesis': TfArg.literal([for (final e in kinesis) e.encode()]),
           if (lambda != null)
             'lambda': TfArg.literal([for (final e in lambda) e.encode()]),
           if (republish != null)
             'republish': TfArg.literal([
               for (final e in republish) e.encode(),
             ]),
           if (s3 != null)
             's3': TfArg.literal([for (final e in s3) e.encode()]),
           if (sns != null)
             'sns': TfArg.literal([for (final e in sns) e.encode()]),
           if (sqs != null)
             'sqs': TfArg.literal([for (final e in sqs) e.encode()]),
           if (stepFunctions != null)
             'step_functions': TfArg.literal([
               for (final e in stepFunctions) e.encode(),
             ]),
           if (timestream != null)
             'timestream': TfArg.literal([
               for (final e in timestream) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotTopicRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
