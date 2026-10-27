// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_inference_component`.
const Set<String> _awsSagemakerInferenceComponentSensitive = <String>{};

/// Exactly one of `specification`, `specifications` on `aws_sagemaker_inference_component`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.specification(...)`.
sealed class SagemakerInferenceComponentSpecificationOrSpecifications {
  const SagemakerInferenceComponentSpecificationOrSpecifications();

  /// Sets `specification`.
  const factory SagemakerInferenceComponentSpecificationOrSpecifications.specification(
    List<SagemakerInferenceComponentSpecification> specification,
  ) = SagemakerInferenceComponentSpecificationOrSpecificationsSpecification;

  /// Sets `specifications`.
  const factory SagemakerInferenceComponentSpecificationOrSpecifications.specifications(
    List<SagemakerInferenceComponentSpecifications> specifications,
  ) = SagemakerInferenceComponentSpecificationOrSpecificationsChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SagemakerInferenceComponentSpecificationOrSpecifications.specification] choice: sets `specification`.
final class SagemakerInferenceComponentSpecificationOrSpecificationsSpecification
    extends SagemakerInferenceComponentSpecificationOrSpecifications {
  const SagemakerInferenceComponentSpecificationOrSpecificationsSpecification(
    this.specification,
  );

  final List<SagemakerInferenceComponentSpecification> specification;

  @internal
  @override
  String get blockKey => 'specification';

  @internal
  @override
  Map<String, Object?> encode() => {
    'specification': [for (final e in specification) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'specification': TfArg.literal([for (final e in specification) e.encode()]),
  };
}

/// The [SagemakerInferenceComponentSpecificationOrSpecifications.specifications] choice: sets `specifications`.
final class SagemakerInferenceComponentSpecificationOrSpecificationsChoice
    extends SagemakerInferenceComponentSpecificationOrSpecifications {
  const SagemakerInferenceComponentSpecificationOrSpecificationsChoice(
    this.specifications,
  );

  final List<SagemakerInferenceComponentSpecifications> specifications;

  @internal
  @override
  String get blockKey => 'specifications';

  @internal
  @override
  Map<String, Object?> encode() => {
    'specifications': [for (final e in specifications) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'specifications': TfArg.literal([
      for (final e in specifications) e.encode(),
    ]),
  };
}

/// Typed helper for the `deployment_config` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentDeploymentConfig {
  const SagemakerInferenceComponentDeploymentConfig({
    this.autoRollbackConfiguration,
    this.rollingUpdatePolicy,
  });

  final List<SagemakerInferenceComponentAutoRollbackConfiguration>?
  autoRollbackConfiguration;

  final List<SagemakerInferenceComponentRollingUpdatePolicy>?
  rollingUpdatePolicy;

  @internal
  Map<String, Object?> encode() => {
    if (autoRollbackConfiguration != null)
      'auto_rollback_configuration': [
        for (final e in autoRollbackConfiguration!) e.encode(),
      ],
    if (rollingUpdatePolicy != null)
      'rolling_update_policy': [
        for (final e in rollingUpdatePolicy!) e.encode(),
      ],
  };
}

/// Typed helper for the `deployment_config.auto_rollback_configuration` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentAutoRollbackConfiguration {
  const SagemakerInferenceComponentAutoRollbackConfiguration({this.alarms});

  final List<SagemakerInferenceComponentAlarms>? alarms;

  @internal
  Map<String, Object?> encode() => {
    if (alarms != null) 'alarms': [for (final e in alarms!) e.encode()],
  };
}

/// Typed helper for the `deployment_config.auto_rollback_configuration.alarms` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentAlarms {
  const SagemakerInferenceComponentAlarms({required this.alarmName});

  final TfArg<String> alarmName;

  @internal
  Map<String, Object?> encode() => {'alarm_name': alarmName.toTfJson()};
}

/// Typed helper for the `deployment_config.rolling_update_policy` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentRollingUpdatePolicy {
  const SagemakerInferenceComponentRollingUpdatePolicy({
    this.maximumExecutionTimeoutInSeconds,
    required this.waitIntervalInSeconds,
    this.maximumBatchSize,
    this.rollbackMaximumBatchSize,
  });

  final TfArg<num>? maximumExecutionTimeoutInSeconds;

  final TfArg<num> waitIntervalInSeconds;

  final List<SagemakerInferenceComponentMaximumBatchSize>? maximumBatchSize;

  final List<SagemakerInferenceComponentRollbackMaximumBatchSize>?
  rollbackMaximumBatchSize;

  @internal
  Map<String, Object?> encode() => {
    'maximum_execution_timeout_in_seconds': ?maximumExecutionTimeoutInSeconds
        ?.toTfJson(),
    'wait_interval_in_seconds': waitIntervalInSeconds.toTfJson(),
    if (maximumBatchSize != null)
      'maximum_batch_size': [for (final e in maximumBatchSize!) e.encode()],
    if (rollbackMaximumBatchSize != null)
      'rollback_maximum_batch_size': [
        for (final e in rollbackMaximumBatchSize!) e.encode(),
      ],
  };
}

/// Typed helper for the `deployment_config.rolling_update_policy.maximum_batch_size` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentMaximumBatchSize {
  const SagemakerInferenceComponentMaximumBatchSize({
    required this.type,
    required this.value,
  });

  final SagemakerInferenceComponentType type;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SagemakerInferenceComponentType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerInferenceComponentType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerInferenceComponentType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerInferenceComponentType.arg(TfArg<String> arg) : this._(arg);

  static const copyCount = SagemakerInferenceComponentType._(
    TfArgLiteral('COPY_COUNT'),
  );
  static const capacityPercent = SagemakerInferenceComponentType._(
    TfArgLiteral('CAPACITY_PERCENT'),
  );

  static const List<SagemakerInferenceComponentType> values = [
    copyCount,
    capacityPercent,
  ];
}

/// Typed helper for the `deployment_config.rolling_update_policy.rollback_maximum_batch_size` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentRollbackMaximumBatchSize {
  const SagemakerInferenceComponentRollbackMaximumBatchSize({
    required this.type,
    required this.value,
  });

  final SagemakerInferenceComponentType type;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `runtime_config` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentRuntimeConfig {
  const SagemakerInferenceComponentRuntimeConfig({required this.copyCount});

  final TfArg<num> copyCount;

  @internal
  Map<String, Object?> encode() => {'copy_count': copyCount.toTfJson()};
}

/// Typed helper for the `specification` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentSpecification {
  const SagemakerInferenceComponentSpecification({
    this.baseInferenceComponentName,
    this.instanceType,
    this.modelName,
    this.computeResourceRequirements,
    this.container,
    this.dataCacheConfig,
    this.schedulingConfig,
    this.startupParameters,
  });

  final TfArg<String>? baseInferenceComponentName;

  final SagemakerInferenceComponentInstanceType? instanceType;

  final TfArg<String>? modelName;

  final List<SagemakerInferenceComponentComputeResourceRequirements>?
  computeResourceRequirements;

  final List<SagemakerInferenceComponentContainer>? container;

  final List<SagemakerInferenceComponentDataCacheConfig>? dataCacheConfig;

  final List<SagemakerInferenceComponentSchedulingConfig>? schedulingConfig;

  final List<SagemakerInferenceComponentStartupParameters>? startupParameters;

  @internal
  Map<String, Object?> encode() => {
    'base_inference_component_name': ?baseInferenceComponentName?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'model_name': ?modelName?.toTfJson(),
    if (computeResourceRequirements != null)
      'compute_resource_requirements': [
        for (final e in computeResourceRequirements!) e.encode(),
      ],
    if (container != null)
      'container': [for (final e in container!) e.encode()],
    if (dataCacheConfig != null)
      'data_cache_config': [for (final e in dataCacheConfig!) e.encode()],
    if (schedulingConfig != null)
      'scheduling_config': [for (final e in schedulingConfig!) e.encode()],
    if (startupParameters != null)
      'startup_parameters': [for (final e in startupParameters!) e.encode()],
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerInferenceComponentInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerInferenceComponentInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerInferenceComponentInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerInferenceComponentInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlT2Medium = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.t2.medium'),
  );
  static const mlT2Large = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.t2.large'),
  );
  static const mlT2Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.t2.xlarge'),
  );
  static const mlT2p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.t2.2xlarge'),
  );
  static const mlM4Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m4.2xlarge'),
  );
  static const mlM4p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m4.4xlarge'),
  );
  static const mlM4p10xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m4.10xlarge'),
  );
  static const mlM4p16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m4.16xlarge'),
  );
  static const mlM5Large = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC4Large = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c4.large'),
  );
  static const mlC4Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c4.2xlarge'),
  );
  static const mlC4p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c4.4xlarge'),
  );
  static const mlC4p8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c4.8xlarge'),
  );
  static const mlP2Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p2.8xlarge'),
  );
  static const mlP2p16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p2.16xlarge'),
  );
  static const mlP3p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlC5Large = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5.large'),
  );
  static const mlC5Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p18xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5dLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5d.large'),
  );
  static const mlC5dXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5d.xlarge'),
  );
  static const mlC5d2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5d.2xlarge'),
  );
  static const mlC5d4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5d.4xlarge'),
  );
  static const mlC5d9xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5d.9xlarge'),
  );
  static const mlC5d18xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c5d.18xlarge'),
  );
  static const mlG4dnXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlR5dLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5d.large'),
  );
  static const mlR5dXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5d.xlarge'),
  );
  static const mlR5d2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5d.2xlarge'),
  );
  static const mlR5d4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5d.4xlarge'),
  );
  static const mlR5d12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5d.12xlarge'),
  );
  static const mlR5d24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r5d.24xlarge'),
  );
  static const mlInf1Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf1.xlarge'),
  );
  static const mlInf1p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf1.2xlarge'),
  );
  static const mlInf1p6xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf1.6xlarge'),
  );
  static const mlInf1p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf1.24xlarge'),
  );
  static const mlDl1p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.dl1.24xlarge'),
  );
  static const mlC6iLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlM6iLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlR6iLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlG5Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlR8gMedium = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.medium'),
  );
  static const mlR8gLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.large'),
  );
  static const mlR8gXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.xlarge'),
  );
  static const mlR8g2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.2xlarge'),
  );
  static const mlR8g4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.4xlarge'),
  );
  static const mlR8g8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.8xlarge'),
  );
  static const mlR8g12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.12xlarge'),
  );
  static const mlR8g16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.16xlarge'),
  );
  static const mlR8g24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.24xlarge'),
  );
  static const mlR8g48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r8g.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );
  static const mlG7p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );
  static const mlP4d24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlC7gLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7g.large'),
  );
  static const mlC7gXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7g.xlarge'),
  );
  static const mlC7g2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7g.2xlarge'),
  );
  static const mlC7g4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7g.4xlarge'),
  );
  static const mlC7g8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7g.8xlarge'),
  );
  static const mlC7g12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7g.12xlarge'),
  );
  static const mlC7g16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7g.16xlarge'),
  );
  static const mlM6gLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6g.large'),
  );
  static const mlM6gXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6g.xlarge'),
  );
  static const mlM6g2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6g.2xlarge'),
  );
  static const mlM6g4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6g.4xlarge'),
  );
  static const mlM6g8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6g.8xlarge'),
  );
  static const mlM6g12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6g.12xlarge'),
  );
  static const mlM6g16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6g.16xlarge'),
  );
  static const mlM6gdLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6gd.large'),
  );
  static const mlM6gdXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6gd.xlarge'),
  );
  static const mlM6gd2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6gd.2xlarge'),
  );
  static const mlM6gd4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6gd.4xlarge'),
  );
  static const mlM6gd8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6gd.8xlarge'),
  );
  static const mlM6gd12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6gd.12xlarge'),
  );
  static const mlM6gd16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m6gd.16xlarge'),
  );
  static const mlC6gLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6g.large'),
  );
  static const mlC6gXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6g.xlarge'),
  );
  static const mlC6g2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6g.2xlarge'),
  );
  static const mlC6g4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6g.4xlarge'),
  );
  static const mlC6g8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6g.8xlarge'),
  );
  static const mlC6g12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6g.12xlarge'),
  );
  static const mlC6g16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6g.16xlarge'),
  );
  static const mlC6gdLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gd.large'),
  );
  static const mlC6gdXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gd.xlarge'),
  );
  static const mlC6gd2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gd.2xlarge'),
  );
  static const mlC6gd4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gd.4xlarge'),
  );
  static const mlC6gd8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gd.8xlarge'),
  );
  static const mlC6gd12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gd.12xlarge'),
  );
  static const mlC6gd16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gd.16xlarge'),
  );
  static const mlC6gnLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gn.large'),
  );
  static const mlC6gnXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gn.xlarge'),
  );
  static const mlC6gn2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gn.2xlarge'),
  );
  static const mlC6gn4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gn.4xlarge'),
  );
  static const mlC6gn8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gn.8xlarge'),
  );
  static const mlC6gn12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gn.12xlarge'),
  );
  static const mlC6gn16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6gn.16xlarge'),
  );
  static const mlR6gLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6g.large'),
  );
  static const mlR6gXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6g.xlarge'),
  );
  static const mlR6g2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6g.2xlarge'),
  );
  static const mlR6g4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6g.4xlarge'),
  );
  static const mlR6g8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6g.8xlarge'),
  );
  static const mlR6g12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6g.12xlarge'),
  );
  static const mlR6g16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6g.16xlarge'),
  );
  static const mlR6gdLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6gd.large'),
  );
  static const mlR6gdXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6gd.xlarge'),
  );
  static const mlR6gd2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6gd.2xlarge'),
  );
  static const mlR6gd4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6gd.4xlarge'),
  );
  static const mlR6gd8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6gd.8xlarge'),
  );
  static const mlR6gd12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6gd.12xlarge'),
  );
  static const mlR6gd16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r6gd.16xlarge'),
  );
  static const mlP4de24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlTrn2p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.trn2.48xlarge'),
  );
  static const mlInf2Xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf2.xlarge'),
  );
  static const mlInf2p8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf2.8xlarge'),
  );
  static const mlInf2p24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf2.24xlarge'),
  );
  static const mlInf2p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.inf2.48xlarge'),
  );
  static const mlP5p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5e48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p5e.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlM7iLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC7iLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR7iLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlC8gMedium = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.medium'),
  );
  static const mlC8gLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.large'),
  );
  static const mlC8gXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.xlarge'),
  );
  static const mlC8g2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.2xlarge'),
  );
  static const mlC8g4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.4xlarge'),
  );
  static const mlC8g8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.8xlarge'),
  );
  static const mlC8g12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.12xlarge'),
  );
  static const mlC8g16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.16xlarge'),
  );
  static const mlC8g24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.24xlarge'),
  );
  static const mlC8g48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c8g.48xlarge'),
  );
  static const mlR7gdMedium = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.medium'),
  );
  static const mlR7gdLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.large'),
  );
  static const mlR7gdXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.xlarge'),
  );
  static const mlR7gd2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.2xlarge'),
  );
  static const mlR7gd4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.4xlarge'),
  );
  static const mlR7gd8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.8xlarge'),
  );
  static const mlR7gd12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.12xlarge'),
  );
  static const mlR7gd16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.r7gd.16xlarge'),
  );
  static const mlM8gMedium = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.medium'),
  );
  static const mlM8gLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.large'),
  );
  static const mlM8gXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.xlarge'),
  );
  static const mlM8g2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.2xlarge'),
  );
  static const mlM8g4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.4xlarge'),
  );
  static const mlM8g8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.8xlarge'),
  );
  static const mlM8g12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.12xlarge'),
  );
  static const mlM8g16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.16xlarge'),
  );
  static const mlM8g24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.24xlarge'),
  );
  static const mlM8g48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.m8g.48xlarge'),
  );
  static const mlC6inLarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.large'),
  );
  static const mlC6inXlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.xlarge'),
  );
  static const mlC6in2xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.2xlarge'),
  );
  static const mlC6in4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.4xlarge'),
  );
  static const mlC6in8xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.8xlarge'),
  );
  static const mlC6in12xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.12xlarge'),
  );
  static const mlC6in16xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.16xlarge'),
  );
  static const mlC6in24xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.24xlarge'),
  );
  static const mlC6in32xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.c6in.32xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlP6B300p48xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p6-b300.48xlarge'),
  );
  static const mlP6eGb200p36xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p6e-gb200.36xlarge'),
  );
  static const mlP5p4xlarge = SagemakerInferenceComponentInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );

  static const List<SagemakerInferenceComponentInstanceType> values = [
    mlT2Medium,
    mlT2Large,
    mlT2Xlarge,
    mlT2p2xlarge,
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlM5dLarge,
    mlM5dXlarge,
    mlM5d2xlarge,
    mlM5d4xlarge,
    mlM5d12xlarge,
    mlM5d24xlarge,
    mlC4Large,
    mlC4Xlarge,
    mlC4p2xlarge,
    mlC4p4xlarge,
    mlC4p8xlarge,
    mlP2Xlarge,
    mlP2p8xlarge,
    mlP2p16xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlC5Large,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5dLarge,
    mlC5dXlarge,
    mlC5d2xlarge,
    mlC5d4xlarge,
    mlC5d9xlarge,
    mlC5d18xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p12xlarge,
    mlR5p24xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d12xlarge,
    mlR5d24xlarge,
    mlInf1Xlarge,
    mlInf1p2xlarge,
    mlInf1p6xlarge,
    mlInf1p24xlarge,
    mlDl1p24xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p12xlarge,
    mlG5p16xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlR8gMedium,
    mlR8gLarge,
    mlR8gXlarge,
    mlR8g2xlarge,
    mlR8g4xlarge,
    mlR8g8xlarge,
    mlR8g12xlarge,
    mlR8g16xlarge,
    mlR8g24xlarge,
    mlR8g48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
    mlP4d24xlarge,
    mlC7gLarge,
    mlC7gXlarge,
    mlC7g2xlarge,
    mlC7g4xlarge,
    mlC7g8xlarge,
    mlC7g12xlarge,
    mlC7g16xlarge,
    mlM6gLarge,
    mlM6gXlarge,
    mlM6g2xlarge,
    mlM6g4xlarge,
    mlM6g8xlarge,
    mlM6g12xlarge,
    mlM6g16xlarge,
    mlM6gdLarge,
    mlM6gdXlarge,
    mlM6gd2xlarge,
    mlM6gd4xlarge,
    mlM6gd8xlarge,
    mlM6gd12xlarge,
    mlM6gd16xlarge,
    mlC6gLarge,
    mlC6gXlarge,
    mlC6g2xlarge,
    mlC6g4xlarge,
    mlC6g8xlarge,
    mlC6g12xlarge,
    mlC6g16xlarge,
    mlC6gdLarge,
    mlC6gdXlarge,
    mlC6gd2xlarge,
    mlC6gd4xlarge,
    mlC6gd8xlarge,
    mlC6gd12xlarge,
    mlC6gd16xlarge,
    mlC6gnLarge,
    mlC6gnXlarge,
    mlC6gn2xlarge,
    mlC6gn4xlarge,
    mlC6gn8xlarge,
    mlC6gn12xlarge,
    mlC6gn16xlarge,
    mlR6gLarge,
    mlR6gXlarge,
    mlR6g2xlarge,
    mlR6g4xlarge,
    mlR6g8xlarge,
    mlR6g12xlarge,
    mlR6g16xlarge,
    mlR6gdLarge,
    mlR6gdXlarge,
    mlR6gd2xlarge,
    mlR6gd4xlarge,
    mlR6gd8xlarge,
    mlR6gd12xlarge,
    mlR6gd16xlarge,
    mlP4de24xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlTrn2p48xlarge,
    mlInf2Xlarge,
    mlInf2p8xlarge,
    mlInf2p24xlarge,
    mlInf2p48xlarge,
    mlP5p48xlarge,
    mlP5e48xlarge,
    mlP5en48xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlC8gMedium,
    mlC8gLarge,
    mlC8gXlarge,
    mlC8g2xlarge,
    mlC8g4xlarge,
    mlC8g8xlarge,
    mlC8g12xlarge,
    mlC8g16xlarge,
    mlC8g24xlarge,
    mlC8g48xlarge,
    mlR7gdMedium,
    mlR7gdLarge,
    mlR7gdXlarge,
    mlR7gd2xlarge,
    mlR7gd4xlarge,
    mlR7gd8xlarge,
    mlR7gd12xlarge,
    mlR7gd16xlarge,
    mlM8gMedium,
    mlM8gLarge,
    mlM8gXlarge,
    mlM8g2xlarge,
    mlM8g4xlarge,
    mlM8g8xlarge,
    mlM8g12xlarge,
    mlM8g16xlarge,
    mlM8g24xlarge,
    mlM8g48xlarge,
    mlC6inLarge,
    mlC6inXlarge,
    mlC6in2xlarge,
    mlC6in4xlarge,
    mlC6in8xlarge,
    mlC6in12xlarge,
    mlC6in16xlarge,
    mlC6in24xlarge,
    mlC6in32xlarge,
    mlP6B200p48xlarge,
    mlP6B300p48xlarge,
    mlP6eGb200p36xlarge,
    mlP5p4xlarge,
  ];
}

/// Typed helper for the `specification.compute_resource_requirements` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentComputeResourceRequirements {
  const SagemakerInferenceComponentComputeResourceRequirements({
    this.maxMemoryRequiredInMb,
    required this.minMemoryRequiredInMb,
    this.numberOfAcceleratorDevicesRequired,
    this.numberOfCpuCoresRequired,
  });

  final TfArg<num>? maxMemoryRequiredInMb;

  final TfArg<num> minMemoryRequiredInMb;

  final TfArg<num>? numberOfAcceleratorDevicesRequired;

  final TfArg<num>? numberOfCpuCoresRequired;

  @internal
  Map<String, Object?> encode() => {
    'max_memory_required_in_mb': ?maxMemoryRequiredInMb?.toTfJson(),
    'min_memory_required_in_mb': minMemoryRequiredInMb.toTfJson(),
    'number_of_accelerator_devices_required':
        ?numberOfAcceleratorDevicesRequired?.toTfJson(),
    'number_of_cpu_cores_required': ?numberOfCpuCoresRequired?.toTfJson(),
  };
}

/// Typed helper for the `specification.container` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentContainer {
  const SagemakerInferenceComponentContainer({
    this.artifactUrl,
    this.environment,
    this.image,
    this.containerMetricsConfig,
  });

  final TfArg<String>? artifactUrl;

  final TfArg<Map<String, String>>? environment;

  final TfArg<String>? image;

  final List<SagemakerInferenceComponentContainerMetricsConfig>?
  containerMetricsConfig;

  @internal
  Map<String, Object?> encode() => {
    'artifact_url': ?artifactUrl?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'image': ?image?.toTfJson(),
    if (containerMetricsConfig != null)
      'container_metrics_config': [
        for (final e in containerMetricsConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `specification.container.container_metrics_config` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentContainerMetricsConfig {
  const SagemakerInferenceComponentContainerMetricsConfig({
    this.metricsEndpoint,
  });

  final List<SagemakerInferenceComponentMetricsEndpoint>? metricsEndpoint;

  @internal
  Map<String, Object?> encode() => {
    if (metricsEndpoint != null)
      'metrics_endpoint': [for (final e in metricsEndpoint!) e.encode()],
  };
}

/// Typed helper for the `specification.container.container_metrics_config.metrics_endpoint` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentMetricsEndpoint {
  const SagemakerInferenceComponentMetricsEndpoint({
    this.metricPublishFrequencyInSeconds,
    required this.metricsEndpointPath,
  });

  final TfArg<num>? metricPublishFrequencyInSeconds;

  final TfArg<String> metricsEndpointPath;

  @internal
  Map<String, Object?> encode() => {
    'metric_publish_frequency_in_seconds': ?metricPublishFrequencyInSeconds
        ?.toTfJson(),
    'metrics_endpoint_path': metricsEndpointPath.toTfJson(),
  };
}

/// Typed helper for the `specification.data_cache_config` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentDataCacheConfig {
  const SagemakerInferenceComponentDataCacheConfig({
    required this.enableCaching,
  });

  final TfArg<bool> enableCaching;

  @internal
  Map<String, Object?> encode() => {'enable_caching': enableCaching.toTfJson()};
}

/// Typed helper for the `specification.scheduling_config` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentSchedulingConfig {
  const SagemakerInferenceComponentSchedulingConfig({
    required this.placementStrategy,
    this.availabilityZoneBalance,
  });

  final SagemakerInferenceComponentPlacementStrategy placementStrategy;

  final List<SagemakerInferenceComponentAvailabilityZoneBalance>?
  availabilityZoneBalance;

  @internal
  Map<String, Object?> encode() => {
    'placement_strategy': placementStrategy.toTfJson(),
    if (availabilityZoneBalance != null)
      'availability_zone_balance': [
        for (final e in availabilityZoneBalance!) e.encode(),
      ],
  };
}

/// `placement_strategy` — derived from the provider schema description.
extension type const SagemakerInferenceComponentPlacementStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerInferenceComponentPlacementStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerInferenceComponentPlacementStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerInferenceComponentPlacementStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const spread = SagemakerInferenceComponentPlacementStrategy._(
    TfArgLiteral('SPREAD'),
  );
  static const binpack = SagemakerInferenceComponentPlacementStrategy._(
    TfArgLiteral('BINPACK'),
  );

  static const List<SagemakerInferenceComponentPlacementStrategy> values = [
    spread,
    binpack,
  ];
}

/// Typed helper for the `specification.scheduling_config.availability_zone_balance` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentAvailabilityZoneBalance {
  const SagemakerInferenceComponentAvailabilityZoneBalance({
    required this.enforcementMode,
    this.maxImbalance,
  });

  final SagemakerInferenceComponentEnforcementMode enforcementMode;

  final TfArg<num>? maxImbalance;

  @internal
  Map<String, Object?> encode() => {
    'enforcement_mode': enforcementMode.toTfJson(),
    'max_imbalance': ?maxImbalance?.toTfJson(),
  };
}

/// `enforcement_mode` — derived from the provider schema description.
extension type const SagemakerInferenceComponentEnforcementMode._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerInferenceComponentEnforcementMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerInferenceComponentEnforcementMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerInferenceComponentEnforcementMode.arg(TfArg<String> arg)
    : this._(arg);

  static const permissive = SagemakerInferenceComponentEnforcementMode._(
    TfArgLiteral('PERMISSIVE'),
  );

  static const List<SagemakerInferenceComponentEnforcementMode> values = [
    permissive,
  ];
}

/// Typed helper for the `specification.startup_parameters` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerInferenceComponentStartupParameters {
  const SagemakerInferenceComponentStartupParameters({
    this.containerStartupHealthCheckTimeoutInSeconds,
    this.modelDataDownloadTimeoutInSeconds,
  });

  final TfArg<num>? containerStartupHealthCheckTimeoutInSeconds;

  final TfArg<num>? modelDataDownloadTimeoutInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'container_startup_health_check_timeout_in_seconds':
        ?containerStartupHealthCheckTimeoutInSeconds?.toTfJson(),
    'model_data_download_timeout_in_seconds': ?modelDataDownloadTimeoutInSeconds
        ?.toTfJson(),
  };
}

/// Typed helper for the `specifications` block of
/// `aws_sagemaker_inference_component` (derived from provider schema).
@immutable
final class SagemakerInferenceComponentSpecifications {
  const SagemakerInferenceComponentSpecifications({
    this.baseInferenceComponentName,
    this.instanceType,
    this.modelName,
    this.computeResourceRequirements,
    this.container,
    this.dataCacheConfig,
    this.schedulingConfig,
    this.startupParameters,
  });

  final TfArg<String>? baseInferenceComponentName;

  final SagemakerInferenceComponentInstanceType? instanceType;

  final TfArg<String>? modelName;

  final List<SagemakerInferenceComponentComputeResourceRequirements>?
  computeResourceRequirements;

  final List<SagemakerInferenceComponentContainer>? container;

  final List<SagemakerInferenceComponentDataCacheConfig>? dataCacheConfig;

  final List<SagemakerInferenceComponentSchedulingConfig>? schedulingConfig;

  final List<SagemakerInferenceComponentStartupParameters>? startupParameters;

  @internal
  Map<String, Object?> encode() => {
    'base_inference_component_name': ?baseInferenceComponentName?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'model_name': ?modelName?.toTfJson(),
    if (computeResourceRequirements != null)
      'compute_resource_requirements': [
        for (final e in computeResourceRequirements!) e.encode(),
      ],
    if (container != null)
      'container': [for (final e in container!) e.encode()],
    if (dataCacheConfig != null)
      'data_cache_config': [for (final e in dataCacheConfig!) e.encode()],
    if (schedulingConfig != null)
      'scheduling_config': [for (final e in schedulingConfig!) e.encode()],
    if (startupParameters != null)
      'startup_parameters': [for (final e in startupParameters!) e.encode()],
  };
}

/// Factory wrapper for `aws_sagemaker_inference_component`.
final class AwsSagemakerInferenceComponent extends Resource {
  static const String tfType = 'aws_sagemaker_inference_component';

  AwsSagemakerInferenceComponent(
    super.localName, {
    required TfArg<String> endpointName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? variantName,
    List<SagemakerInferenceComponentDeploymentConfig>? deploymentConfig,
    List<SagemakerInferenceComponentRuntimeConfig>? runtimeConfig,
    required SagemakerInferenceComponentSpecificationOrSpecifications
    specificationOrSpecifications,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_name': endpointName,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'variant_name': ?variantName,
           if (deploymentConfig != null)
             'deployment_config': TfArg.literal([
               for (final e in deploymentConfig) e.encode(),
             ]),
           if (runtimeConfig != null)
             'runtime_config': TfArg.literal([
               for (final e in runtimeConfig) e.encode(),
             ]),
           ...specificationOrSpecifications.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerInferenceComponentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerInferenceComponent>`.
  RefTo<AwsSagemakerInferenceComponent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `endpoint_arn` attribute.
  TfRef<String> get endpointArn =>
      TfRef.attribute<String>(this, 'endpoint_arn');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `endpoint_name` attribute.
  TfRef<String> get endpointName =>
      TfRef.attribute<String>(this, 'endpoint_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `variant_name` attribute.
  TfRef<String> get variantName =>
      TfRef.attribute<String>(this, 'variant_name');
}
