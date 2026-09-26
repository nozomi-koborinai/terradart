// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_online_evaluation_config`.
const Set<String> _awsBedrockagentcoreOnlineEvaluationConfigSensitive =
    <String>{};

/// Typed helper for the `data_source_config` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigDataSourceConfig {
  const BedrockagentcoreOnlineEvaluationConfigDataSourceConfig({
    this.cloudwatchLogs,
  });

  final List<
    BedrockagentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs
  >?
  cloudwatchLogs;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null)
      'cloudwatch_logs': [for (final e in cloudwatchLogs!) e.encode()],
  };
}

/// Typed helper for the `data_source_config.cloudwatch_logs` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs {
  const BedrockagentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs({
    required this.logGroupNames,
    required this.serviceNames,
  });

  final TfArg<List<Object?>> logGroupNames;

  final TfArg<List<Object?>> serviceNames;

  Map<String, Object?> encode() => {
    'log_group_names': logGroupNames.toTfJson(),
    'service_names': serviceNames.toTfJson(),
  };
}

/// Typed helper for the `evaluator` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigEvaluator {
  const BedrockagentcoreOnlineEvaluationConfigEvaluator({
    required this.evaluatorId,
  });

  final TfArg<String> evaluatorId;

  Map<String, Object?> encode() => {'evaluator_id': evaluatorId.toTfJson()};
}

/// Typed helper for the `rule` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigRule {
  const BedrockagentcoreOnlineEvaluationConfigRule({
    this.filter,
    this.samplingConfig,
    this.sessionConfig,
  });

  final List<BedrockagentcoreOnlineEvaluationConfigRuleFilter>? filter;

  final List<BedrockagentcoreOnlineEvaluationConfigRuleSamplingConfig>?
  samplingConfig;

  final List<BedrockagentcoreOnlineEvaluationConfigRuleSessionConfig>?
  sessionConfig;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
    if (samplingConfig != null)
      'sampling_config': [for (final e in samplingConfig!) e.encode()],
    if (sessionConfig != null)
      'session_config': [for (final e in sessionConfig!) e.encode()],
  };
}

/// Typed helper for the `rule.filter` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigRuleFilter {
  const BedrockagentcoreOnlineEvaluationConfigRuleFilter({
    required this.key,
    required this.operator,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<String> operator;

  final List<BedrockagentcoreOnlineEvaluationConfigRuleFilterValue>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'operator': operator.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `rule.filter.value` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigRuleFilterValue {
  const BedrockagentcoreOnlineEvaluationConfigRuleFilterValue({
    this.booleanValue,
    this.doubleValue,
    this.stringValue,
  });

  final TfArg<bool>? booleanValue;

  final TfArg<num>? doubleValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (booleanValue != null) 'boolean_value': booleanValue!.toTfJson(),
    if (doubleValue != null) 'double_value': doubleValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
  };
}

/// Typed helper for the `rule.sampling_config` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigRuleSamplingConfig {
  const BedrockagentcoreOnlineEvaluationConfigRuleSamplingConfig({
    required this.samplingPercentage,
  });

  final TfArg<num> samplingPercentage;

  Map<String, Object?> encode() => {
    'sampling_percentage': samplingPercentage.toTfJson(),
  };
}

/// Typed helper for the `rule.session_config` block of
/// `aws_bedrockagentcore_online_evaluation_config` (derived from provider schema).
@immutable
final class BedrockagentcoreOnlineEvaluationConfigRuleSessionConfig {
  const BedrockagentcoreOnlineEvaluationConfigRuleSessionConfig({
    required this.sessionTimeoutMinutes,
  });

  final TfArg<num> sessionTimeoutMinutes;

  Map<String, Object?> encode() => {
    'session_timeout_minutes': sessionTimeoutMinutes.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_online_evaluation_config`.
final class AwsBedrockagentcoreOnlineEvaluationConfig extends Resource {
  static const String tfType = 'aws_bedrockagentcore_online_evaluation_config';

  AwsBedrockagentcoreOnlineEvaluationConfig({
    required super.localName,
    TfArg<String>? description,
    required TfArg<bool> enableOnCreate,
    required TfArg<String> evaluationExecutionRoleArn,
    TfArg<String>? executionStatus,
    required TfArg<String> onlineEvaluationConfigName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreOnlineEvaluationConfigDataSourceConfig>?
    dataSourceConfig,
    List<BedrockagentcoreOnlineEvaluationConfigEvaluator>? evaluator,
    List<BedrockagentcoreOnlineEvaluationConfigRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'enable_on_create': enableOnCreate,
           'evaluation_execution_role_arn': evaluationExecutionRoleArn,
           if (executionStatus != null) 'execution_status': executionStatus,
           'online_evaluation_config_name': onlineEvaluationConfigName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (dataSourceConfig != null)
             'data_source_config': TfArg.literal([
               for (final e in dataSourceConfig) e.encode(),
             ]),
           if (evaluator != null)
             'evaluator': TfArg.literal([
               for (final e in evaluator) e.encode(),
             ]),
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreOnlineEvaluationConfigSensitive;

  /// Reference to `online_evaluation_config_arn` attribute.
  TfRef<String> get onlineEvaluationConfigArn =>
      TfRef.attribute<String>(this, 'online_evaluation_config_arn');

  /// Reference to `online_evaluation_config_id` attribute.
  TfRef<String> get onlineEvaluationConfigId =>
      TfRef.attribute<String>(this, 'online_evaluation_config_id');

  /// Reference to `output_config` attribute.
  TfRef<List<Map<String, Object?>>> get outputConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'output_config');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
