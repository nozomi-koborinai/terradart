// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_endpoint`.
const Set<String> _awsSagemakerEndpointSensitive = <String>{};

/// Typed helper for the `deployment_config` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfig {
  const SagemakerEndpointDeploymentConfig({
    this.autoRollbackConfiguration,
    this.blueGreenUpdatePolicy,
    this.rollingUpdatePolicy,
  });

  final SagemakerEndpointDeploymentConfigAutoRollbackConfiguration?
  autoRollbackConfiguration;

  final SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicy?
  blueGreenUpdatePolicy;

  final SagemakerEndpointDeploymentConfigRollingUpdatePolicy?
  rollingUpdatePolicy;

  Map<String, Object?> encode() => {
    if (autoRollbackConfiguration != null)
      'auto_rollback_configuration': autoRollbackConfiguration!.encode(),
    if (blueGreenUpdatePolicy != null)
      'blue_green_update_policy': blueGreenUpdatePolicy!.encode(),
    if (rollingUpdatePolicy != null)
      'rolling_update_policy': rollingUpdatePolicy!.encode(),
  };
}

/// Typed helper for the `deployment_config.auto_rollback_configuration` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigAutoRollbackConfiguration {
  const SagemakerEndpointDeploymentConfigAutoRollbackConfiguration({
    this.alarms,
  });

  final List<SagemakerEndpointDeploymentConfigAutoRollbackConfigurationAlarms>?
  alarms;

  Map<String, Object?> encode() => {
    if (alarms != null) 'alarms': [for (final e in alarms!) e.encode()],
  };
}

/// Typed helper for the `deployment_config.auto_rollback_configuration.alarms` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigAutoRollbackConfigurationAlarms {
  const SagemakerEndpointDeploymentConfigAutoRollbackConfigurationAlarms({
    required this.alarmName,
  });

  final TfArg<String> alarmName;

  Map<String, Object?> encode() => {'alarm_name': alarmName.toTfJson()};
}

/// Typed helper for the `deployment_config.blue_green_update_policy` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicy {
  const SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicy({
    this.maximumExecutionTimeoutInSeconds,
    this.terminationWaitInSeconds,
    required this.trafficRoutingConfiguration,
  });

  final TfArg<num>? maximumExecutionTimeoutInSeconds;

  final TfArg<num>? terminationWaitInSeconds;

  final SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration
  trafficRoutingConfiguration;

  Map<String, Object?> encode() => {
    if (maximumExecutionTimeoutInSeconds != null)
      'maximum_execution_timeout_in_seconds': maximumExecutionTimeoutInSeconds!
          .toTfJson(),
    if (terminationWaitInSeconds != null)
      'termination_wait_in_seconds': terminationWaitInSeconds!.toTfJson(),
    'traffic_routing_configuration': trafficRoutingConfiguration.encode(),
  };
}

/// Typed helper for the `deployment_config.blue_green_update_policy.traffic_routing_configuration` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration {
  const SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration({
    required this.type,
    required this.waitIntervalInSeconds,
    this.canarySize,
    this.linearStepSize,
  });

  final TfArg<String> type;

  final TfArg<num> waitIntervalInSeconds;

  final SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize?
  canarySize;

  final SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize?
  linearStepSize;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'wait_interval_in_seconds': waitIntervalInSeconds.toTfJson(),
    if (canarySize != null) 'canary_size': canarySize!.encode(),
    if (linearStepSize != null) 'linear_step_size': linearStepSize!.encode(),
  };
}

/// Typed helper for the `deployment_config.blue_green_update_policy.traffic_routing_configuration.canary_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize {
  const SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `deployment_config.blue_green_update_policy.traffic_routing_configuration.linear_step_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize {
  const SagemakerEndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `deployment_config.rolling_update_policy` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigRollingUpdatePolicy {
  const SagemakerEndpointDeploymentConfigRollingUpdatePolicy({
    this.maximumExecutionTimeoutInSeconds,
    required this.waitIntervalInSeconds,
    required this.maximumBatchSize,
    this.rollbackMaximumBatchSize,
  });

  final TfArg<num>? maximumExecutionTimeoutInSeconds;

  final TfArg<num> waitIntervalInSeconds;

  final SagemakerEndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize
  maximumBatchSize;

  final SagemakerEndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize?
  rollbackMaximumBatchSize;

  Map<String, Object?> encode() => {
    if (maximumExecutionTimeoutInSeconds != null)
      'maximum_execution_timeout_in_seconds': maximumExecutionTimeoutInSeconds!
          .toTfJson(),
    'wait_interval_in_seconds': waitIntervalInSeconds.toTfJson(),
    'maximum_batch_size': maximumBatchSize.encode(),
    if (rollbackMaximumBatchSize != null)
      'rollback_maximum_batch_size': rollbackMaximumBatchSize!.encode(),
  };
}

/// Typed helper for the `deployment_config.rolling_update_policy.maximum_batch_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize {
  const SagemakerEndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `deployment_config.rolling_update_policy.rollback_maximum_batch_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize {
  const SagemakerEndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_endpoint`.
final class AwsSagemakerEndpoint extends Resource {
  static const String tfType = 'aws_sagemaker_endpoint';

  AwsSagemakerEndpoint({
    required super.localName,
    required TfArg<String> endpointConfigName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    SagemakerEndpointDeploymentConfig? deploymentConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_config_name': endpointConfigName,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (deploymentConfig != null)
             'deployment_config': TfArg.literal(deploymentConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
