// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_training_job`.
const Set<String> _awsSagemakerTrainingJobSensitive = <String>{};

/// Typed helper for the `algorithm_specification` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobAlgorithmSpecification {
  const SagemakerTrainingJobAlgorithmSpecification({
    this.algorithmName,
    this.containerArguments,
    this.containerEntrypoint,
    this.enableSagemakerMetricsTimeSeries,
    this.trainingImage,
    this.trainingInputMode,
    this.metricDefinitions,
    this.trainingImageConfig,
  });

  final TfArg<String>? algorithmName;

  final TfArg<List<String>>? containerArguments;

  final TfArg<List<String>>? containerEntrypoint;

  final TfArg<bool>? enableSagemakerMetricsTimeSeries;

  final TfArg<String>? trainingImage;

  final SagemakerTrainingJobTrainingInputMode? trainingInputMode;

  final List<SagemakerTrainingJobMetricDefinitions>? metricDefinitions;

  final List<SagemakerTrainingJobTrainingImageConfig>? trainingImageConfig;

  Map<String, Object?> encode() => {
    'algorithm_name': ?algorithmName?.toTfJson(),
    'container_arguments': ?containerArguments?.toTfJson(),
    'container_entrypoint': ?containerEntrypoint?.toTfJson(),
    'enable_sagemaker_metrics_time_series': ?enableSagemakerMetricsTimeSeries
        ?.toTfJson(),
    'training_image': ?trainingImage?.toTfJson(),
    'training_input_mode': ?trainingInputMode?.toTfJson(),
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
    if (trainingImageConfig != null)
      'training_image_config': [
        for (final e in trainingImageConfig!) e.encode(),
      ],
  };
}

/// `training_input_mode` — derived from the provider schema description.
extension type const SagemakerTrainingJobTrainingInputMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobTrainingInputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobTrainingInputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobTrainingInputMode.arg(TfArg<String> arg)
    : this._(arg);

  static const pipe = SagemakerTrainingJobTrainingInputMode._(
    TfArgLiteral('Pipe'),
  );
  static const file = SagemakerTrainingJobTrainingInputMode._(
    TfArgLiteral('File'),
  );
  static const fastfile = SagemakerTrainingJobTrainingInputMode._(
    TfArgLiteral('FastFile'),
  );

  static const List<SagemakerTrainingJobTrainingInputMode> values = [
    pipe,
    file,
    fastfile,
  ];
}

/// Typed helper for the `algorithm_specification.metric_definitions` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobMetricDefinitions {
  const SagemakerTrainingJobMetricDefinitions({
    required this.name,
    required this.regex,
  });

  final TfArg<String> name;

  final TfArg<String> regex;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'regex': regex.toTfJson(),
  };
}

/// Typed helper for the `algorithm_specification.training_image_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobTrainingImageConfig {
  const SagemakerTrainingJobTrainingImageConfig({
    this.trainingRepositoryAccessMode,
    this.trainingRepositoryAuthConfig,
  });

  final TfArg<String>? trainingRepositoryAccessMode;

  final List<SagemakerTrainingJobTrainingRepositoryAuthConfig>?
  trainingRepositoryAuthConfig;

  Map<String, Object?> encode() => {
    'training_repository_access_mode': ?trainingRepositoryAccessMode
        ?.toTfJson(),
    if (trainingRepositoryAuthConfig != null)
      'training_repository_auth_config': [
        for (final e in trainingRepositoryAuthConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `algorithm_specification.training_image_config.training_repository_auth_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobTrainingRepositoryAuthConfig {
  const SagemakerTrainingJobTrainingRepositoryAuthConfig({
    this.trainingRepositoryCredentialsProviderArn,
  });

  final TfArg<String>? trainingRepositoryCredentialsProviderArn;

  Map<String, Object?> encode() => {
    'training_repository_credentials_provider_arn':
        ?trainingRepositoryCredentialsProviderArn?.toTfJson(),
  };
}

/// Typed helper for the `checkpoint_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobCheckpointConfig {
  const SagemakerTrainingJobCheckpointConfig({
    this.localPath,
    required this.s3Uri,
  });

  final TfArg<String>? localPath;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    'local_path': ?localPath?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `debug_hook_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobDebugHookConfig {
  const SagemakerTrainingJobDebugHookConfig({
    this.hookParameters,
    this.localPath,
    required this.s3OutputPath,
    this.collectionConfigurations,
  });

  final TfArg<Map<String, String>>? hookParameters;

  final TfArg<String>? localPath;

  final TfArg<String> s3OutputPath;

  final List<SagemakerTrainingJobCollectionConfigurations>?
  collectionConfigurations;

  Map<String, Object?> encode() => {
    'hook_parameters': ?hookParameters?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
    if (collectionConfigurations != null)
      'collection_configurations': [
        for (final e in collectionConfigurations!) e.encode(),
      ],
  };
}

/// Typed helper for the `debug_hook_config.collection_configurations` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobCollectionConfigurations {
  const SagemakerTrainingJobCollectionConfigurations({
    this.collectionName,
    this.collectionParameters,
  });

  final TfArg<String>? collectionName;

  final TfArg<Map<String, String>>? collectionParameters;

  Map<String, Object?> encode() => {
    'collection_name': ?collectionName?.toTfJson(),
    'collection_parameters': ?collectionParameters?.toTfJson(),
  };
}

/// Typed helper for the `debug_rule_configurations` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobDebugRuleConfigurations {
  const SagemakerTrainingJobDebugRuleConfigurations({
    this.instanceType,
    this.localPath,
    required this.ruleConfigurationName,
    required this.ruleEvaluatorImage,
    this.ruleParameters,
    this.s3OutputPath,
    this.volumeSizeInGb,
  });

  final SagemakerTrainingJobDebugRuleConfigurationsInstanceType? instanceType;

  final TfArg<String>? localPath;

  final TfArg<String> ruleConfigurationName;

  final TfArg<String> ruleEvaluatorImage;

  final TfArg<Map<String, String>>? ruleParameters;

  final TfArg<String>? s3OutputPath;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    'instance_type': ?instanceType?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'rule_configuration_name': ruleConfigurationName.toTfJson(),
    'rule_evaluator_image': ruleEvaluatorImage.toTfJson(),
    'rule_parameters': ?ruleParameters?.toTfJson(),
    's3_output_path': ?s3OutputPath?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerTrainingJobDebugRuleConfigurationsInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobDebugRuleConfigurationsInstanceType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerTrainingJobDebugRuleConfigurationsInstanceType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const mlT3Medium =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.t3.medium'),
      );
  static const mlT3Large =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.t3.large'),
      );
  static const mlT3Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.t3.xlarge'),
      );
  static const mlT3p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.t3.2xlarge'),
      );
  static const mlM4Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m4.xlarge'),
      );
  static const mlM4p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m4.2xlarge'),
      );
  static const mlM4p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m4.4xlarge'),
      );
  static const mlM4p10xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m4.10xlarge'),
      );
  static const mlM4p16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m4.16xlarge'),
      );
  static const mlC4Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c4.xlarge'),
      );
  static const mlC4p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c4.2xlarge'),
      );
  static const mlC4p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c4.4xlarge'),
      );
  static const mlC4p8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c4.8xlarge'),
      );
  static const mlP2Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.p2.xlarge'),
      );
  static const mlP2p8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.p2.8xlarge'),
      );
  static const mlP2p16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.p2.16xlarge'),
      );
  static const mlP3p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.p3.2xlarge'),
      );
  static const mlP3p8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.p3.8xlarge'),
      );
  static const mlP3p16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.p3.16xlarge'),
      );
  static const mlC5Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c5.xlarge'),
      );
  static const mlC5p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c5.2xlarge'),
      );
  static const mlC5p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c5.4xlarge'),
      );
  static const mlC5p9xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c5.9xlarge'),
      );
  static const mlC5p18xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c5.18xlarge'),
      );
  static const mlM5Large =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m5.large'),
      );
  static const mlM5Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m5.xlarge'),
      );
  static const mlM5p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m5.2xlarge'),
      );
  static const mlM5p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m5.4xlarge'),
      );
  static const mlM5p12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m5.12xlarge'),
      );
  static const mlM5p24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m5.24xlarge'),
      );
  static const mlR5Large =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.large'),
      );
  static const mlR5Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.xlarge'),
      );
  static const mlR5p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.2xlarge'),
      );
  static const mlR5p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.4xlarge'),
      );
  static const mlR5p8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.8xlarge'),
      );
  static const mlR5p12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.12xlarge'),
      );
  static const mlR5p16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.16xlarge'),
      );
  static const mlR5p24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5.24xlarge'),
      );
  static const mlG4dnXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g4dn.xlarge'),
      );
  static const mlG4dn2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g4dn.2xlarge'),
      );
  static const mlG4dn4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g4dn.4xlarge'),
      );
  static const mlG4dn8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g4dn.8xlarge'),
      );
  static const mlG4dn12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g4dn.12xlarge'),
      );
  static const mlG4dn16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g4dn.16xlarge'),
      );
  static const mlG5Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.xlarge'),
      );
  static const mlG5p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.2xlarge'),
      );
  static const mlG5p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.4xlarge'),
      );
  static const mlG5p8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.8xlarge'),
      );
  static const mlG5p16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.16xlarge'),
      );
  static const mlG5p12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.12xlarge'),
      );
  static const mlG5p24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.24xlarge'),
      );
  static const mlG5p48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g5.48xlarge'),
      );
  static const mlR5dLarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.large'),
      );
  static const mlR5dXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.xlarge'),
      );
  static const mlR5d2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.2xlarge'),
      );
  static const mlR5d4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.4xlarge'),
      );
  static const mlR5d8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.8xlarge'),
      );
  static const mlR5d12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.12xlarge'),
      );
  static const mlR5d16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.16xlarge'),
      );
  static const mlR5d24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r5d.24xlarge'),
      );
  static const mlG6Xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.xlarge'),
      );
  static const mlG6p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.2xlarge'),
      );
  static const mlG6p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.4xlarge'),
      );
  static const mlG6p8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.8xlarge'),
      );
  static const mlG6p12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.12xlarge'),
      );
  static const mlG6p16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.16xlarge'),
      );
  static const mlG6p24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.24xlarge'),
      );
  static const mlG6p48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6.48xlarge'),
      );
  static const mlG6eXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.xlarge'),
      );
  static const mlG6e2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.2xlarge'),
      );
  static const mlG6e4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.4xlarge'),
      );
  static const mlG6e8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.8xlarge'),
      );
  static const mlG6e12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.12xlarge'),
      );
  static const mlG6e16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.16xlarge'),
      );
  static const mlG6e24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.24xlarge'),
      );
  static const mlG6e48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g6e.48xlarge'),
      );
  static const mlM6iLarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.large'),
      );
  static const mlM6iXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.xlarge'),
      );
  static const mlM6i2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.2xlarge'),
      );
  static const mlM6i4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.4xlarge'),
      );
  static const mlM6i8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.8xlarge'),
      );
  static const mlM6i12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.12xlarge'),
      );
  static const mlM6i16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.16xlarge'),
      );
  static const mlM6i24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.24xlarge'),
      );
  static const mlM6i32xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m6i.32xlarge'),
      );
  static const mlC6iXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.xlarge'),
      );
  static const mlC6i2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.2xlarge'),
      );
  static const mlC6i4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.4xlarge'),
      );
  static const mlC6i8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.8xlarge'),
      );
  static const mlC6i12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.12xlarge'),
      );
  static const mlC6i16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.16xlarge'),
      );
  static const mlC6i24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.24xlarge'),
      );
  static const mlC6i32xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c6i.32xlarge'),
      );
  static const mlM7iLarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.large'),
      );
  static const mlM7iXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.xlarge'),
      );
  static const mlM7i2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.2xlarge'),
      );
  static const mlM7i4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.4xlarge'),
      );
  static const mlM7i8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.8xlarge'),
      );
  static const mlM7i12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.12xlarge'),
      );
  static const mlM7i16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.16xlarge'),
      );
  static const mlM7i24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.24xlarge'),
      );
  static const mlM7i48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.m7i.48xlarge'),
      );
  static const mlC7iLarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.large'),
      );
  static const mlC7iXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.xlarge'),
      );
  static const mlC7i2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.2xlarge'),
      );
  static const mlC7i4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.4xlarge'),
      );
  static const mlC7i8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.8xlarge'),
      );
  static const mlC7i12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.12xlarge'),
      );
  static const mlC7i16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.16xlarge'),
      );
  static const mlC7i24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.24xlarge'),
      );
  static const mlC7i48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.c7i.48xlarge'),
      );
  static const mlR7iLarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.large'),
      );
  static const mlR7iXlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.xlarge'),
      );
  static const mlR7i2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.2xlarge'),
      );
  static const mlR7i4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.4xlarge'),
      );
  static const mlR7i8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.8xlarge'),
      );
  static const mlR7i12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.12xlarge'),
      );
  static const mlR7i16xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.16xlarge'),
      );
  static const mlR7i24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.24xlarge'),
      );
  static const mlR7i48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.r7i.48xlarge'),
      );
  static const mlP5p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.p5.4xlarge'),
      );
  static const mlG7e2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7e.2xlarge'),
      );
  static const mlG7e4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7e.4xlarge'),
      );
  static const mlG7e8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7e.8xlarge'),
      );
  static const mlG7e12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7e.12xlarge'),
      );
  static const mlG7e24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7e.24xlarge'),
      );
  static const mlG7e48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7e.48xlarge'),
      );
  static const mlG7p2xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7.2xlarge'),
      );
  static const mlG7p4xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7.4xlarge'),
      );
  static const mlG7p8xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7.8xlarge'),
      );
  static const mlG7p12xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7.12xlarge'),
      );
  static const mlG7p24xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7.24xlarge'),
      );
  static const mlG7p48xlarge =
      SagemakerTrainingJobDebugRuleConfigurationsInstanceType._(
        TfArgLiteral('ml.g7.48xlarge'),
      );

  static const List<SagemakerTrainingJobDebugRuleConfigurationsInstanceType>
  values = [
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
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
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d8xlarge,
    mlR5d12xlarge,
    mlR5d16xlarge,
    mlR5d24xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
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
    mlP5p4xlarge,
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
  ];
}

/// Typed helper for the `experiment_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobExperimentConfig {
  const SagemakerTrainingJobExperimentConfig({
    this.experimentName,
    this.runName,
    this.trialComponentDisplayName,
    this.trialName,
  });

  final TfArg<String>? experimentName;

  final TfArg<String>? runName;

  final TfArg<String>? trialComponentDisplayName;

  final TfArg<String>? trialName;

  Map<String, Object?> encode() => {
    'experiment_name': ?experimentName?.toTfJson(),
    'run_name': ?runName?.toTfJson(),
    'trial_component_display_name': ?trialComponentDisplayName?.toTfJson(),
    'trial_name': ?trialName?.toTfJson(),
  };
}

/// Typed helper for the `infra_check_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInfraCheckConfig {
  const SagemakerTrainingJobInfraCheckConfig({this.enableInfraCheck});

  final TfArg<bool>? enableInfraCheck;

  Map<String, Object?> encode() => {
    'enable_infra_check': ?enableInfraCheck?.toTfJson(),
  };
}

/// Typed helper for the `input_data_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInputDataConfig {
  const SagemakerTrainingJobInputDataConfig({
    required this.channelName,
    this.compressionType,
    this.contentType,
    this.inputMode,
    this.recordWrapperType,
    this.dataSource,
    this.shuffleConfig,
  });

  final TfArg<String> channelName;

  final SagemakerTrainingJobInputDataConfigCompressionType? compressionType;

  final TfArg<String>? contentType;

  final SagemakerTrainingJobInputMode? inputMode;

  final SagemakerTrainingJobRecordWrapperType? recordWrapperType;

  final List<SagemakerTrainingJobDataSource>? dataSource;

  final List<SagemakerTrainingJobShuffleConfig>? shuffleConfig;

  Map<String, Object?> encode() => {
    'channel_name': channelName.toTfJson(),
    'compression_type': ?compressionType?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'input_mode': ?inputMode?.toTfJson(),
    'record_wrapper_type': ?recordWrapperType?.toTfJson(),
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
    if (shuffleConfig != null)
      'shuffle_config': [for (final e in shuffleConfig!) e.encode()],
  };
}

/// `compression_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobInputDataConfigCompressionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerTrainingJobInputDataConfigCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobInputDataConfigCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobInputDataConfigCompressionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none = SagemakerTrainingJobInputDataConfigCompressionType._(
    TfArgLiteral('None'),
  );
  static const gzip = SagemakerTrainingJobInputDataConfigCompressionType._(
    TfArgLiteral('Gzip'),
  );

  static const List<SagemakerTrainingJobInputDataConfigCompressionType> values =
      [none, gzip];
}

/// `input_mode` — derived from the provider schema description.
extension type const SagemakerTrainingJobInputMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobInputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobInputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobInputMode.arg(TfArg<String> arg) : this._(arg);

  static const pipe = SagemakerTrainingJobInputMode._(TfArgLiteral('Pipe'));
  static const file = SagemakerTrainingJobInputMode._(TfArgLiteral('File'));
  static const fastfile = SagemakerTrainingJobInputMode._(
    TfArgLiteral('FastFile'),
  );

  static const List<SagemakerTrainingJobInputMode> values = [
    pipe,
    file,
    fastfile,
  ];
}

/// `record_wrapper_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobRecordWrapperType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobRecordWrapperType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobRecordWrapperType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobRecordWrapperType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = SagemakerTrainingJobRecordWrapperType._(
    TfArgLiteral('None'),
  );
  static const recordio = SagemakerTrainingJobRecordWrapperType._(
    TfArgLiteral('RecordIO'),
  );

  static const List<SagemakerTrainingJobRecordWrapperType> values = [
    none,
    recordio,
  ];
}

/// Typed helper for the `input_data_config.data_source` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobDataSource {
  const SagemakerTrainingJobDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  final List<SagemakerTrainingJobFileSystemDataSource>? fileSystemDataSource;

  final List<SagemakerTrainingJobS3DataSource>? s3DataSource;

  Map<String, Object?> encode() => {
    if (fileSystemDataSource != null)
      'file_system_data_source': [
        for (final e in fileSystemDataSource!) e.encode(),
      ],
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
  };
}

/// Typed helper for the `input_data_config.data_source.file_system_data_source` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobFileSystemDataSource {
  const SagemakerTrainingJobFileSystemDataSource({
    required this.directoryPath,
    required this.fileSystemAccessMode,
    required this.fileSystemId,
    required this.fileSystemType,
  });

  final TfArg<String> directoryPath;

  final SagemakerTrainingJobFileSystemAccessMode fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final SagemakerTrainingJobFileSystemType fileSystemType;

  Map<String, Object?> encode() => {
    'directory_path': directoryPath.toTfJson(),
    'file_system_access_mode': fileSystemAccessMode.toTfJson(),
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_type': fileSystemType.toTfJson(),
  };
}

/// `file_system_access_mode` — derived from the provider schema description.
extension type const SagemakerTrainingJobFileSystemAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobFileSystemAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobFileSystemAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobFileSystemAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const rw = SagemakerTrainingJobFileSystemAccessMode._(
    TfArgLiteral('rw'),
  );
  static const ro = SagemakerTrainingJobFileSystemAccessMode._(
    TfArgLiteral('ro'),
  );

  static const List<SagemakerTrainingJobFileSystemAccessMode> values = [rw, ro];
}

/// `file_system_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobFileSystemType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobFileSystemType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobFileSystemType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobFileSystemType.arg(TfArg<String> arg) : this._(arg);

  static const efs = SagemakerTrainingJobFileSystemType._(TfArgLiteral('EFS'));
  static const fsxlustre = SagemakerTrainingJobFileSystemType._(
    TfArgLiteral('FSxLustre'),
  );

  static const List<SagemakerTrainingJobFileSystemType> values = [
    efs,
    fsxlustre,
  ];
}

/// Typed helper for the `input_data_config.data_source.s3_data_source` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobS3DataSource {
  const SagemakerTrainingJobS3DataSource({
    this.attributeNames,
    this.instanceGroupNames,
    this.s3DataDistributionType,
    required this.s3DataType,
    required this.s3Uri,
    this.hubAccessConfig,
    this.modelAccessConfig,
  });

  final TfArg<List<String>>? attributeNames;

  final TfArg<List<String>>? instanceGroupNames;

  final SagemakerTrainingJobS3DataDistributionType? s3DataDistributionType;

  final SagemakerTrainingJobS3DataType s3DataType;

  final TfArg<String> s3Uri;

  final List<SagemakerTrainingJobHubAccessConfig>? hubAccessConfig;

  final List<SagemakerTrainingJobModelAccessConfig>? modelAccessConfig;

  Map<String, Object?> encode() => {
    'attribute_names': ?attributeNames?.toTfJson(),
    'instance_group_names': ?instanceGroupNames?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (hubAccessConfig != null)
      'hub_access_config': [for (final e in hubAccessConfig!) e.encode()],
    if (modelAccessConfig != null)
      'model_access_config': [for (final e in modelAccessConfig!) e.encode()],
  };
}

/// `s3_data_distribution_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobS3DataDistributionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerTrainingJobS3DataDistributionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobS3DataDistributionType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobS3DataDistributionType.arg(TfArg<String> arg)
    : this._(arg);

  static const fullyreplicated = SagemakerTrainingJobS3DataDistributionType._(
    TfArgLiteral('FullyReplicated'),
  );
  static const shardedbys3key = SagemakerTrainingJobS3DataDistributionType._(
    TfArgLiteral('ShardedByS3Key'),
  );

  static const List<SagemakerTrainingJobS3DataDistributionType> values = [
    fullyreplicated,
    shardedbys3key,
  ];
}

/// `s3_data_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobS3DataType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobS3DataType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobS3DataType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobS3DataType.arg(TfArg<String> arg) : this._(arg);

  static const manifestfile = SagemakerTrainingJobS3DataType._(
    TfArgLiteral('ManifestFile'),
  );
  static const s3prefix = SagemakerTrainingJobS3DataType._(
    TfArgLiteral('S3Prefix'),
  );
  static const augmentedmanifestfile = SagemakerTrainingJobS3DataType._(
    TfArgLiteral('AugmentedManifestFile'),
  );
  static const converse = SagemakerTrainingJobS3DataType._(
    TfArgLiteral('Converse'),
  );

  static const List<SagemakerTrainingJobS3DataType> values = [
    manifestfile,
    s3prefix,
    augmentedmanifestfile,
    converse,
  ];
}

/// Typed helper for the `input_data_config.data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobHubAccessConfig {
  const SagemakerTrainingJobHubAccessConfig({required this.hubContentArn});

  final TfArg<String> hubContentArn;

  Map<String, Object?> encode() => {
    'hub_content_arn': hubContentArn.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobModelAccessConfig {
  const SagemakerTrainingJobModelAccessConfig({required this.acceptEula});

  final TfArg<bool> acceptEula;

  Map<String, Object?> encode() => {'accept_eula': acceptEula.toTfJson()};
}

/// Typed helper for the `input_data_config.shuffle_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobShuffleConfig {
  const SagemakerTrainingJobShuffleConfig({this.seed});

  final TfArg<num>? seed;

  Map<String, Object?> encode() => {'seed': ?seed?.toTfJson()};
}

/// Typed helper for the `mlflow_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobMlflowConfig {
  const SagemakerTrainingJobMlflowConfig({
    this.mlflowExperimentName,
    required this.mlflowResourceArn,
    this.mlflowRunName,
  });

  final TfArg<String>? mlflowExperimentName;

  final TfArg<String> mlflowResourceArn;

  final TfArg<String>? mlflowRunName;

  Map<String, Object?> encode() => {
    'mlflow_experiment_name': ?mlflowExperimentName?.toTfJson(),
    'mlflow_resource_arn': mlflowResourceArn.toTfJson(),
    'mlflow_run_name': ?mlflowRunName?.toTfJson(),
  };
}

/// Typed helper for the `model_package_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobModelPackageConfig {
  const SagemakerTrainingJobModelPackageConfig({
    required this.modelPackageGroupArn,
    this.sourceModelPackageArn,
  });

  final TfArg<String> modelPackageGroupArn;

  final TfArg<String>? sourceModelPackageArn;

  Map<String, Object?> encode() => {
    'model_package_group_arn': modelPackageGroupArn.toTfJson(),
    'source_model_package_arn': ?sourceModelPackageArn?.toTfJson(),
  };
}

/// Typed helper for the `output_data_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobOutputDataConfig {
  const SagemakerTrainingJobOutputDataConfig({
    this.compressionType,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final SagemakerTrainingJobOutputDataConfigCompressionType? compressionType;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobOutputDataConfigCompressionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerTrainingJobOutputDataConfigCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobOutputDataConfigCompressionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerTrainingJobOutputDataConfigCompressionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const gzip = SagemakerTrainingJobOutputDataConfigCompressionType._(
    TfArgLiteral('GZIP'),
  );
  static const none = SagemakerTrainingJobOutputDataConfigCompressionType._(
    TfArgLiteral('NONE'),
  );

  static const List<SagemakerTrainingJobOutputDataConfigCompressionType>
  values = [gzip, none];
}

/// Typed helper for the `profiler_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobProfilerConfig {
  const SagemakerTrainingJobProfilerConfig({
    this.disableProfiler,
    this.profilingIntervalInMilliseconds,
    this.profilingParameters,
    this.s3OutputPath,
  });

  final TfArg<bool>? disableProfiler;

  final TfArg<num>? profilingIntervalInMilliseconds;

  final TfArg<Map<String, String>>? profilingParameters;

  final TfArg<String>? s3OutputPath;

  Map<String, Object?> encode() => {
    'disable_profiler': ?disableProfiler?.toTfJson(),
    'profiling_interval_in_milliseconds': ?profilingIntervalInMilliseconds
        ?.toTfJson(),
    'profiling_parameters': ?profilingParameters?.toTfJson(),
    's3_output_path': ?s3OutputPath?.toTfJson(),
  };
}

/// Typed helper for the `profiler_rule_configurations` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobProfilerRuleConfigurations {
  const SagemakerTrainingJobProfilerRuleConfigurations({
    this.instanceType,
    this.localPath,
    required this.ruleConfigurationName,
    required this.ruleEvaluatorImage,
    this.ruleParameters,
    this.s3OutputPath,
    this.volumeSizeInGb,
  });

  final SagemakerTrainingJobDebugRuleConfigurationsInstanceType? instanceType;

  final TfArg<String>? localPath;

  final TfArg<String> ruleConfigurationName;

  final TfArg<String> ruleEvaluatorImage;

  final TfArg<Map<String, String>>? ruleParameters;

  final TfArg<String>? s3OutputPath;

  final TfArg<num>? volumeSizeInGb;

  Map<String, Object?> encode() => {
    'instance_type': ?instanceType?.toTfJson(),
    'local_path': ?localPath?.toTfJson(),
    'rule_configuration_name': ruleConfigurationName.toTfJson(),
    'rule_evaluator_image': ruleEvaluatorImage.toTfJson(),
    'rule_parameters': ?ruleParameters?.toTfJson(),
    's3_output_path': ?s3OutputPath?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
  };
}

/// Typed helper for the `remote_debug_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobRemoteDebugConfig {
  const SagemakerTrainingJobRemoteDebugConfig({this.enableRemoteDebug});

  final TfArg<bool>? enableRemoteDebug;

  Map<String, Object?> encode() => {
    'enable_remote_debug': ?enableRemoteDebug?.toTfJson(),
  };
}

/// Typed helper for the `resource_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobResourceConfig {
  const SagemakerTrainingJobResourceConfig({
    this.instanceCount,
    this.instanceType,
    this.keepAlivePeriodInSeconds,
    this.trainingPlanArn,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
    this.instanceGroups,
    this.instancePlacementConfig,
  });

  final TfArg<num>? instanceCount;

  final SagemakerTrainingJobResourceConfigInstanceType? instanceType;

  final TfArg<num>? keepAlivePeriodInSeconds;

  final TfArg<String>? trainingPlanArn;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<SagemakerTrainingJobInstanceGroups>? instanceGroups;

  final List<SagemakerTrainingJobInstancePlacementConfig>?
  instancePlacementConfig;

  Map<String, Object?> encode() => {
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'keep_alive_period_in_seconds': ?keepAlivePeriodInSeconds?.toTfJson(),
    'training_plan_arn': ?trainingPlanArn?.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
    if (instanceGroups != null)
      'instance_groups': [for (final e in instanceGroups!) e.encode()],
    if (instancePlacementConfig != null)
      'instance_placement_config': [
        for (final e in instancePlacementConfig!) e.encode(),
      ],
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobResourceConfigInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerTrainingJobResourceConfigInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobResourceConfigInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobResourceConfigInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlM4Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.2xlarge'),
  );
  static const mlM4p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.4xlarge'),
  );
  static const mlM4p10xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.10xlarge'),
  );
  static const mlM4p16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.16xlarge'),
  );
  static const mlG4dnXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.g4dn.12xlarge'),
      );
  static const mlG4dn16xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.g4dn.16xlarge'),
      );
  static const mlM5Large = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlC4Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.2xlarge'),
  );
  static const mlC4p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.4xlarge'),
  );
  static const mlC4p8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.8xlarge'),
  );
  static const mlP2Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p2.8xlarge'),
  );
  static const mlP2p16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p2.16xlarge'),
  );
  static const mlP3p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.p3dn.24xlarge'),
      );
  static const mlP4d24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.p4de.24xlarge'),
      );
  static const mlP5p48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5e48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p5e.48xlarge'),
  );
  static const mlP5en48xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.p5en.48xlarge'),
      );
  static const mlC5Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p18xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5nXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.xlarge'),
  );
  static const mlC5n2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.2xlarge'),
  );
  static const mlC5n4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.4xlarge'),
  );
  static const mlC5n9xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.9xlarge'),
  );
  static const mlC5n18xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.18xlarge'),
  );
  static const mlG5Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlTrn1p2xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.trn1.2xlarge'),
      );
  static const mlTrn1p32xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.trn1.32xlarge'),
      );
  static const mlTrn1n32xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.trn1n.32xlarge'),
      );
  static const mlTrn2p48xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.trn2.48xlarge'),
      );
  static const mlM6iLarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlC6iXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlR5dLarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.large'),
  );
  static const mlR5dXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.xlarge'),
  );
  static const mlR5d2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.2xlarge'),
  );
  static const mlR5d4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.4xlarge'),
  );
  static const mlR5d8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.8xlarge'),
  );
  static const mlR5d12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.12xlarge'),
  );
  static const mlR5d16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.16xlarge'),
  );
  static const mlR5d24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.24xlarge'),
  );
  static const mlT3Medium = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlR5Large = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlP6B200p48xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.p6-b200.48xlarge'),
      );
  static const mlM7iLarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC7iLarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR7iLarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlP6eGb200p36xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.p6e-gb200.36xlarge'),
      );
  static const mlP5p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlP6B300p48xlarge =
      SagemakerTrainingJobResourceConfigInstanceType._(
        TfArgLiteral('ml.p6-b300.48xlarge'),
      );
  static const mlG7e2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );
  static const mlG7p2xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerTrainingJobResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );

  static const List<SagemakerTrainingJobResourceConfigInstanceType> values = [
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
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
    mlP3dn24xlarge,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlP5p48xlarge,
    mlP5e48xlarge,
    mlP5en48xlarge,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5nXlarge,
    mlC5n2xlarge,
    mlC5n4xlarge,
    mlC5n9xlarge,
    mlC5n18xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p16xlarge,
    mlG6p12xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e16xlarge,
    mlG6e12xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlTrn2p48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i8xlarge,
    mlC6i4xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d8xlarge,
    mlR5d12xlarge,
    mlR5d16xlarge,
    mlR5d24xlarge,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlP6B200p48xlarge,
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
    mlP6eGb200p36xlarge,
    mlP5p4xlarge,
    mlP6B300p48xlarge,
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
  ];
}

/// Typed helper for the `resource_config.instance_groups` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInstanceGroups {
  const SagemakerTrainingJobInstanceGroups({
    this.instanceCount,
    this.instanceGroupName,
    this.instanceType,
  });

  final TfArg<num>? instanceCount;

  final TfArg<String>? instanceGroupName;

  final SagemakerTrainingJobResourceConfigInstanceType? instanceType;

  Map<String, Object?> encode() => {
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_group_name': ?instanceGroupName?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
  };
}

/// Typed helper for the `resource_config.instance_placement_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobInstancePlacementConfig {
  const SagemakerTrainingJobInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  final TfArg<bool>? enableMultipleJobs;

  final List<SagemakerTrainingJobPlacementSpecifications>?
  placementSpecifications;

  Map<String, Object?> encode() => {
    'enable_multiple_jobs': ?enableMultipleJobs?.toTfJson(),
    if (placementSpecifications != null)
      'placement_specifications': [
        for (final e in placementSpecifications!) e.encode(),
      ],
  };
}

/// Typed helper for the `resource_config.instance_placement_config.placement_specifications` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobPlacementSpecifications {
  const SagemakerTrainingJobPlacementSpecifications({
    this.instanceCount,
    this.ultraServerId,
  });

  final TfArg<num>? instanceCount;

  final TfArg<String>? ultraServerId;

  Map<String, Object?> encode() => {
    'instance_count': ?instanceCount?.toTfJson(),
    'ultra_server_id': ?ultraServerId?.toTfJson(),
  };
}

/// Typed helper for the `retry_strategy` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobRetryStrategy {
  const SagemakerTrainingJobRetryStrategy({required this.maximumRetryAttempts});

  final TfArg<num> maximumRetryAttempts;

  Map<String, Object?> encode() => {
    'maximum_retry_attempts': maximumRetryAttempts.toTfJson(),
  };
}

/// Typed helper for the `serverless_job_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobServerlessJobConfig {
  const SagemakerTrainingJobServerlessJobConfig({
    this.acceptEula,
    required this.baseModelArn,
    this.customizationTechnique,
    this.evaluationType,
    this.evaluatorArn,
    required this.jobType,
    this.peft,
  });

  final TfArg<bool>? acceptEula;

  final TfArg<String> baseModelArn;

  final SagemakerTrainingJobCustomizationTechnique? customizationTechnique;

  final SagemakerTrainingJobEvaluationType? evaluationType;

  final TfArg<String>? evaluatorArn;

  final SagemakerTrainingJobType jobType;

  final SagemakerTrainingJobPeft? peft;

  Map<String, Object?> encode() => {
    'accept_eula': ?acceptEula?.toTfJson(),
    'base_model_arn': baseModelArn.toTfJson(),
    'customization_technique': ?customizationTechnique?.toTfJson(),
    'evaluation_type': ?evaluationType?.toTfJson(),
    'evaluator_arn': ?evaluatorArn?.toTfJson(),
    'job_type': jobType.toTfJson(),
    'peft': ?peft?.toTfJson(),
  };
}

/// `customization_technique` — derived from the provider schema description.
extension type const SagemakerTrainingJobCustomizationTechnique._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerTrainingJobCustomizationTechnique.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobCustomizationTechnique.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobCustomizationTechnique.arg(TfArg<String> arg)
    : this._(arg);

  static const sft = SagemakerTrainingJobCustomizationTechnique._(
    TfArgLiteral('SFT'),
  );
  static const dpo = SagemakerTrainingJobCustomizationTechnique._(
    TfArgLiteral('DPO'),
  );
  static const rlvr = SagemakerTrainingJobCustomizationTechnique._(
    TfArgLiteral('RLVR'),
  );
  static const rlaif = SagemakerTrainingJobCustomizationTechnique._(
    TfArgLiteral('RLAIF'),
  );

  static const List<SagemakerTrainingJobCustomizationTechnique> values = [
    sft,
    dpo,
    rlvr,
    rlaif,
  ];
}

/// `evaluation_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobEvaluationType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobEvaluationType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerTrainingJobEvaluationType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobEvaluationType.arg(TfArg<String> arg) : this._(arg);

  static const llmajevaluation = SagemakerTrainingJobEvaluationType._(
    TfArgLiteral('LLMAJEvaluation'),
  );
  static const customscorerevaluation = SagemakerTrainingJobEvaluationType._(
    TfArgLiteral('CustomScorerEvaluation'),
  );
  static const benchmarkevaluation = SagemakerTrainingJobEvaluationType._(
    TfArgLiteral('BenchmarkEvaluation'),
  );

  static const List<SagemakerTrainingJobEvaluationType> values = [
    llmajevaluation,
    customscorerevaluation,
    benchmarkevaluation,
  ];
}

/// `job_type` — derived from the provider schema description.
extension type const SagemakerTrainingJobType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobType.variable(String name) : this._(TfArg.variable(name));
  SagemakerTrainingJobType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobType.arg(TfArg<String> arg) : this._(arg);

  static const finetuning = SagemakerTrainingJobType._(
    TfArgLiteral('FineTuning'),
  );
  static const evaluation = SagemakerTrainingJobType._(
    TfArgLiteral('Evaluation'),
  );

  static const List<SagemakerTrainingJobType> values = [finetuning, evaluation];
}

/// `peft` — derived from the provider schema description.
extension type const SagemakerTrainingJobPeft._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerTrainingJobPeft.variable(String name) : this._(TfArg.variable(name));
  SagemakerTrainingJobPeft.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerTrainingJobPeft.arg(TfArg<String> arg) : this._(arg);

  static const lora = SagemakerTrainingJobPeft._(TfArgLiteral('LORA'));

  static const List<SagemakerTrainingJobPeft> values = [lora];
}

/// Typed helper for the `session_chaining_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobSessionChainingConfig {
  const SagemakerTrainingJobSessionChainingConfig({
    this.enableSessionTagChaining,
  });

  final TfArg<bool>? enableSessionTagChaining;

  Map<String, Object?> encode() => {
    'enable_session_tag_chaining': ?enableSessionTagChaining?.toTfJson(),
  };
}

/// Typed helper for the `stopping_condition` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobStoppingCondition {
  const SagemakerTrainingJobStoppingCondition({
    this.maxPendingTimeInSeconds,
    this.maxRuntimeInSeconds,
    this.maxWaitTimeInSeconds,
  });

  final TfArg<num>? maxPendingTimeInSeconds;

  final TfArg<num>? maxRuntimeInSeconds;

  final TfArg<num>? maxWaitTimeInSeconds;

  Map<String, Object?> encode() => {
    'max_pending_time_in_seconds': ?maxPendingTimeInSeconds?.toTfJson(),
    'max_runtime_in_seconds': ?maxRuntimeInSeconds?.toTfJson(),
    'max_wait_time_in_seconds': ?maxWaitTimeInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `tensor_board_output_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobTensorBoardOutputConfig {
  const SagemakerTrainingJobTensorBoardOutputConfig({
    this.localPath,
    required this.s3OutputPath,
  });

  final TfArg<String>? localPath;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    'local_path': ?localPath?.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_sagemaker_training_job` (derived from provider schema).
@immutable
final class SagemakerTrainingJobVpcConfig {
  const SagemakerTrainingJobVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_training_job`.
final class AwsSagemakerTrainingJob extends Resource {
  static const String tfType = 'aws_sagemaker_training_job';

  AwsSagemakerTrainingJob(
    super.localName, {
    TfArg<bool>? deleteModelPackagesOnDestroy,
    TfArg<bool>? deleteVpcEnisOnDestroy,
    TfArg<bool>? enableInterContainerTrafficEncryption,
    TfArg<bool>? enableManagedSpotTraining,
    TfArg<bool>? enableNetworkIsolation,
    TfArg<Map<String, String>>? environment,
    TfArg<Map<String, String>>? hyperParameters,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trainingJobName,
    List<SagemakerTrainingJobAlgorithmSpecification>? algorithmSpecification,
    List<SagemakerTrainingJobCheckpointConfig>? checkpointConfig,
    List<SagemakerTrainingJobDebugHookConfig>? debugHookConfig,
    List<SagemakerTrainingJobDebugRuleConfigurations>? debugRuleConfigurations,
    List<SagemakerTrainingJobExperimentConfig>? experimentConfig,
    List<SagemakerTrainingJobInfraCheckConfig>? infraCheckConfig,
    List<SagemakerTrainingJobInputDataConfig>? inputDataConfig,
    List<SagemakerTrainingJobMlflowConfig>? mlflowConfig,
    List<SagemakerTrainingJobModelPackageConfig>? modelPackageConfig,
    List<SagemakerTrainingJobOutputDataConfig>? outputDataConfig,
    List<SagemakerTrainingJobProfilerConfig>? profilerConfig,
    List<SagemakerTrainingJobProfilerRuleConfigurations>?
    profilerRuleConfigurations,
    List<SagemakerTrainingJobRemoteDebugConfig>? remoteDebugConfig,
    List<SagemakerTrainingJobResourceConfig>? resourceConfig,
    List<SagemakerTrainingJobRetryStrategy>? retryStrategy,
    List<SagemakerTrainingJobServerlessJobConfig>? serverlessJobConfig,
    List<SagemakerTrainingJobSessionChainingConfig>? sessionChainingConfig,
    List<SagemakerTrainingJobStoppingCondition>? stoppingCondition,
    List<SagemakerTrainingJobTensorBoardOutputConfig>? tensorBoardOutputConfig,
    List<SagemakerTrainingJobVpcConfig>? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delete_model_packages_on_destroy': ?deleteModelPackagesOnDestroy,
           'delete_vpc_enis_on_destroy': ?deleteVpcEnisOnDestroy,
           'enable_inter_container_traffic_encryption':
               ?enableInterContainerTrafficEncryption,
           'enable_managed_spot_training': ?enableManagedSpotTraining,
           'enable_network_isolation': ?enableNetworkIsolation,
           'environment': ?environment,
           'hyper_parameters': ?hyperParameters,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'training_job_name': trainingJobName,
           if (algorithmSpecification != null)
             'algorithm_specification': TfArg.literal([
               for (final e in algorithmSpecification) e.encode(),
             ]),
           if (checkpointConfig != null)
             'checkpoint_config': TfArg.literal([
               for (final e in checkpointConfig) e.encode(),
             ]),
           if (debugHookConfig != null)
             'debug_hook_config': TfArg.literal([
               for (final e in debugHookConfig) e.encode(),
             ]),
           if (debugRuleConfigurations != null)
             'debug_rule_configurations': TfArg.literal([
               for (final e in debugRuleConfigurations) e.encode(),
             ]),
           if (experimentConfig != null)
             'experiment_config': TfArg.literal([
               for (final e in experimentConfig) e.encode(),
             ]),
           if (infraCheckConfig != null)
             'infra_check_config': TfArg.literal([
               for (final e in infraCheckConfig) e.encode(),
             ]),
           if (inputDataConfig != null)
             'input_data_config': TfArg.literal([
               for (final e in inputDataConfig) e.encode(),
             ]),
           if (mlflowConfig != null)
             'mlflow_config': TfArg.literal([
               for (final e in mlflowConfig) e.encode(),
             ]),
           if (modelPackageConfig != null)
             'model_package_config': TfArg.literal([
               for (final e in modelPackageConfig) e.encode(),
             ]),
           if (outputDataConfig != null)
             'output_data_config': TfArg.literal([
               for (final e in outputDataConfig) e.encode(),
             ]),
           if (profilerConfig != null)
             'profiler_config': TfArg.literal([
               for (final e in profilerConfig) e.encode(),
             ]),
           if (profilerRuleConfigurations != null)
             'profiler_rule_configurations': TfArg.literal([
               for (final e in profilerRuleConfigurations) e.encode(),
             ]),
           if (remoteDebugConfig != null)
             'remote_debug_config': TfArg.literal([
               for (final e in remoteDebugConfig) e.encode(),
             ]),
           if (resourceConfig != null)
             'resource_config': TfArg.literal([
               for (final e in resourceConfig) e.encode(),
             ]),
           if (retryStrategy != null)
             'retry_strategy': TfArg.literal([
               for (final e in retryStrategy) e.encode(),
             ]),
           if (serverlessJobConfig != null)
             'serverless_job_config': TfArg.literal([
               for (final e in serverlessJobConfig) e.encode(),
             ]),
           if (sessionChainingConfig != null)
             'session_chaining_config': TfArg.literal([
               for (final e in sessionChainingConfig) e.encode(),
             ]),
           if (stoppingCondition != null)
             'stopping_condition': TfArg.literal([
               for (final e in stoppingCondition) e.encode(),
             ]),
           if (tensorBoardOutputConfig != null)
             'tensor_board_output_config': TfArg.literal([
               for (final e in tensorBoardOutputConfig) e.encode(),
             ]),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal([
               for (final e in vpcConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerTrainingJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerTrainingJob>`.
  RefTo<AwsSagemakerTrainingJob> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `delete_model_packages_on_destroy` attribute.
  TfRef<bool> get deleteModelPackagesOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_model_packages_on_destroy');

  /// Reference to `delete_vpc_enis_on_destroy` attribute.
  TfRef<bool> get deleteVpcEnisOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_vpc_enis_on_destroy');

  /// Reference to `enable_inter_container_traffic_encryption` attribute.
  TfRef<bool> get enableInterContainerTrafficEncryption =>
      TfRef.attribute<bool>(this, 'enable_inter_container_traffic_encryption');

  /// Reference to `enable_managed_spot_training` attribute.
  TfRef<bool> get enableManagedSpotTraining =>
      TfRef.attribute<bool>(this, 'enable_managed_spot_training');

  /// Reference to `enable_network_isolation` attribute.
  TfRef<bool> get enableNetworkIsolation =>
      TfRef.attribute<bool>(this, 'enable_network_isolation');

  /// Reference to `environment` attribute.
  TfRef<Map<String, String>> get environment =>
      TfRef.attribute<Map<String, String>>(this, 'environment');

  /// Reference to `hyper_parameters` attribute.
  TfRef<Map<String, String>> get hyperParameters =>
      TfRef.attribute<Map<String, String>>(this, 'hyper_parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `training_job_name` attribute.
  TfRef<String> get trainingJobName =>
      TfRef.attribute<String>(this, 'training_job_name');
}
