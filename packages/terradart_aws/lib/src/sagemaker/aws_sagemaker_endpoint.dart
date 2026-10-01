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
    required this.updatePolicy,
  });

  final SagemakerEndpointAutoRollbackConfiguration? autoRollbackConfiguration;

  final SagemakerEndpointUpdatePolicy updatePolicy;

  Map<String, Object?> encode() => {
    'auto_rollback_configuration': ?autoRollbackConfiguration?.encode(),
    ...updatePolicy.encode(),
  };
}

/// Exactly one of `blue_green_update_policy`, `rolling_update_policy` on the `deployment_config` block of `aws_sagemaker_endpoint`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.blueGreenUpdatePolicy(...)`.
sealed class SagemakerEndpointUpdatePolicy {
  const SagemakerEndpointUpdatePolicy();

  /// Sets `blue_green_update_policy`.
  const factory SagemakerEndpointUpdatePolicy.blueGreenUpdatePolicy(
    SagemakerEndpointBlueGreenUpdatePolicy blueGreenUpdatePolicy,
  ) = SagemakerEndpointBlueGreenUpdatePolicyChoice;

  /// Sets `rolling_update_policy`.
  const factory SagemakerEndpointUpdatePolicy.rollingUpdatePolicy(
    SagemakerEndpointRollingUpdatePolicy rollingUpdatePolicy,
  ) = SagemakerEndpointRollingUpdatePolicyChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SagemakerEndpointUpdatePolicy.blueGreenUpdatePolicy] choice: sets `blue_green_update_policy`.
final class SagemakerEndpointBlueGreenUpdatePolicyChoice
    extends SagemakerEndpointUpdatePolicy {
  const SagemakerEndpointBlueGreenUpdatePolicyChoice(
    this.blueGreenUpdatePolicy,
  );

  final SagemakerEndpointBlueGreenUpdatePolicy blueGreenUpdatePolicy;

  @override
  String get blockKey => 'blue_green_update_policy';

  @override
  Map<String, Object?> encode() => {
    'blue_green_update_policy': blueGreenUpdatePolicy.encode(),
  };
}

/// The [SagemakerEndpointUpdatePolicy.rollingUpdatePolicy] choice: sets `rolling_update_policy`.
final class SagemakerEndpointRollingUpdatePolicyChoice
    extends SagemakerEndpointUpdatePolicy {
  const SagemakerEndpointRollingUpdatePolicyChoice(this.rollingUpdatePolicy);

  final SagemakerEndpointRollingUpdatePolicy rollingUpdatePolicy;

  @override
  String get blockKey => 'rolling_update_policy';

  @override
  Map<String, Object?> encode() => {
    'rolling_update_policy': rollingUpdatePolicy.encode(),
  };
}

/// Typed helper for the `deployment_config.auto_rollback_configuration` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointAutoRollbackConfiguration {
  const SagemakerEndpointAutoRollbackConfiguration({this.alarms});

  final List<SagemakerEndpointAlarms>? alarms;

  Map<String, Object?> encode() => {
    if (alarms != null) 'alarms': [for (final e in alarms!) e.encode()],
  };
}

/// Typed helper for the `deployment_config.auto_rollback_configuration.alarms` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointAlarms {
  const SagemakerEndpointAlarms({required this.alarmName});

  final TfArg<String> alarmName;

  Map<String, Object?> encode() => {'alarm_name': alarmName.toTfJson()};
}

/// Typed helper for the `deployment_config.blue_green_update_policy` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointBlueGreenUpdatePolicy {
  const SagemakerEndpointBlueGreenUpdatePolicy({
    this.maximumExecutionTimeoutInSeconds,
    this.terminationWaitInSeconds,
    required this.trafficRoutingConfiguration,
  });

  final TfArg<num>? maximumExecutionTimeoutInSeconds;

  final TfArg<num>? terminationWaitInSeconds;

  final SagemakerEndpointTrafficRoutingConfiguration
  trafficRoutingConfiguration;

  Map<String, Object?> encode() => {
    'maximum_execution_timeout_in_seconds': ?maximumExecutionTimeoutInSeconds
        ?.toTfJson(),
    'termination_wait_in_seconds': ?terminationWaitInSeconds?.toTfJson(),
    'traffic_routing_configuration': trafficRoutingConfiguration.encode(),
  };
}

/// Typed helper for the `deployment_config.blue_green_update_policy.traffic_routing_configuration` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointTrafficRoutingConfiguration {
  const SagemakerEndpointTrafficRoutingConfiguration({
    required this.type,
    required this.waitIntervalInSeconds,
    this.canarySize,
    this.linearStepSize,
  });

  final TfArg<SagemakerEndpointTrafficRoutingConfigurationType> type;

  final TfArg<num> waitIntervalInSeconds;

  final SagemakerEndpointCanarySize? canarySize;

  final SagemakerEndpointLinearStepSize? linearStepSize;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'wait_interval_in_seconds': waitIntervalInSeconds.toTfJson(),
    'canary_size': ?canarySize?.encode(),
    'linear_step_size': ?linearStepSize?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum SagemakerEndpointTrafficRoutingConfigurationType implements TerraformEnum {
  allAtOnce('ALL_AT_ONCE'),
  canary('CANARY'),
  linear('LINEAR');

  const SagemakerEndpointTrafficRoutingConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment_config.blue_green_update_policy.traffic_routing_configuration.canary_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointCanarySize {
  const SagemakerEndpointCanarySize({required this.type, required this.value});

  final TfArg<SagemakerEndpointMaximumBatchSizeType> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SagemakerEndpointMaximumBatchSizeType implements TerraformEnum {
  instanceCount('INSTANCE_COUNT'),
  capacityPercent('CAPACITY_PERCENT');

  const SagemakerEndpointMaximumBatchSizeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment_config.blue_green_update_policy.traffic_routing_configuration.linear_step_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointLinearStepSize {
  const SagemakerEndpointLinearStepSize({
    required this.type,
    required this.value,
  });

  final TfArg<SagemakerEndpointMaximumBatchSizeType> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `deployment_config.rolling_update_policy` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointRollingUpdatePolicy {
  const SagemakerEndpointRollingUpdatePolicy({
    this.maximumExecutionTimeoutInSeconds,
    required this.waitIntervalInSeconds,
    required this.maximumBatchSize,
    this.rollbackMaximumBatchSize,
  });

  final TfArg<num>? maximumExecutionTimeoutInSeconds;

  final TfArg<num> waitIntervalInSeconds;

  final SagemakerEndpointMaximumBatchSize maximumBatchSize;

  final SagemakerEndpointRollbackMaximumBatchSize? rollbackMaximumBatchSize;

  Map<String, Object?> encode() => {
    'maximum_execution_timeout_in_seconds': ?maximumExecutionTimeoutInSeconds
        ?.toTfJson(),
    'wait_interval_in_seconds': waitIntervalInSeconds.toTfJson(),
    'maximum_batch_size': maximumBatchSize.encode(),
    'rollback_maximum_batch_size': ?rollbackMaximumBatchSize?.encode(),
  };
}

/// Typed helper for the `deployment_config.rolling_update_policy.maximum_batch_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointMaximumBatchSize {
  const SagemakerEndpointMaximumBatchSize({
    required this.type,
    required this.value,
  });

  final TfArg<SagemakerEndpointMaximumBatchSizeType> type;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `deployment_config.rolling_update_policy.rollback_maximum_batch_size` block of
/// `aws_sagemaker_endpoint` (derived from provider schema).
@immutable
final class SagemakerEndpointRollbackMaximumBatchSize {
  const SagemakerEndpointRollbackMaximumBatchSize({
    required this.type,
    required this.value,
  });

  final TfArg<SagemakerEndpointMaximumBatchSizeType> type;

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
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
           if (deploymentConfig != null)
             'deployment_config': TfArg.literal(deploymentConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerEndpoint>`.
  RefTo<AwsSagemakerEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint_config_name` attribute.
  TfRef<String> get endpointConfigNameRef =>
      TfRef.attribute<String>(this, 'endpoint_config_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
