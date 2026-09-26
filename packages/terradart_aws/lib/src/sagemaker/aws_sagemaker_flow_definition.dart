// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_flow_definition`.
const Set<String> _awsSagemakerFlowDefinitionSensitive = <String>{};

/// Typed helper for the `human_loop_activation_config` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopActivationConfig {
  const SagemakerFlowDefinitionHumanLoopActivationConfig({
    this.humanLoopActivationConditionsConfig,
  });

  final SagemakerFlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig?
  humanLoopActivationConditionsConfig;

  Map<String, Object?> encode() => {
    if (humanLoopActivationConditionsConfig != null)
      'human_loop_activation_conditions_config':
          humanLoopActivationConditionsConfig!.encode(),
  };
}

/// Typed helper for the `human_loop_activation_config.human_loop_activation_conditions_config` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig {
  const SagemakerFlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig({
    required this.humanLoopActivationConditions,
  });

  final TfArg<String> humanLoopActivationConditions;

  Map<String, Object?> encode() => {
    'human_loop_activation_conditions': humanLoopActivationConditions
        .toTfJson(),
  };
}

/// Typed helper for the `human_loop_config` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopConfig {
  const SagemakerFlowDefinitionHumanLoopConfig({
    required this.humanTaskUiArn,
    this.taskAvailabilityLifetimeInSeconds,
    required this.taskCount,
    required this.taskDescription,
    this.taskKeywords,
    this.taskTimeLimitInSeconds,
    required this.taskTitle,
    required this.workteamArn,
    this.publicWorkforceTaskPrice,
  });

  final TfArg<String> humanTaskUiArn;

  final TfArg<num>? taskAvailabilityLifetimeInSeconds;

  final TfArg<num> taskCount;

  final TfArg<String> taskDescription;

  final TfArg<List<Object?>>? taskKeywords;

  final TfArg<num>? taskTimeLimitInSeconds;

  final TfArg<String> taskTitle;

  final TfArg<String> workteamArn;

  final SagemakerFlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice?
  publicWorkforceTaskPrice;

  Map<String, Object?> encode() => {
    'human_task_ui_arn': humanTaskUiArn.toTfJson(),
    if (taskAvailabilityLifetimeInSeconds != null)
      'task_availability_lifetime_in_seconds':
          taskAvailabilityLifetimeInSeconds!.toTfJson(),
    'task_count': taskCount.toTfJson(),
    'task_description': taskDescription.toTfJson(),
    if (taskKeywords != null) 'task_keywords': taskKeywords!.toTfJson(),
    if (taskTimeLimitInSeconds != null)
      'task_time_limit_in_seconds': taskTimeLimitInSeconds!.toTfJson(),
    'task_title': taskTitle.toTfJson(),
    'workteam_arn': workteamArn.toTfJson(),
    if (publicWorkforceTaskPrice != null)
      'public_workforce_task_price': publicWorkforceTaskPrice!.encode(),
  };
}

/// Typed helper for the `human_loop_config.public_workforce_task_price` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice {
  const SagemakerFlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice({
    this.amountInUsd,
  });

  final SagemakerFlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd?
  amountInUsd;

  Map<String, Object?> encode() => {
    if (amountInUsd != null) 'amount_in_usd': amountInUsd!.encode(),
  };
}

/// Typed helper for the `human_loop_config.public_workforce_task_price.amount_in_usd` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd {
  const SagemakerFlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd({
    this.cents,
    this.dollars,
    this.tenthFractionsOfACent,
  });

  final TfArg<num>? cents;

  final TfArg<num>? dollars;

  final TfArg<num>? tenthFractionsOfACent;

  Map<String, Object?> encode() => {
    if (cents != null) 'cents': cents!.toTfJson(),
    if (dollars != null) 'dollars': dollars!.toTfJson(),
    if (tenthFractionsOfACent != null)
      'tenth_fractions_of_a_cent': tenthFractionsOfACent!.toTfJson(),
  };
}

/// Typed helper for the `human_loop_request_source` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopRequestSource {
  const SagemakerFlowDefinitionHumanLoopRequestSource({
    required this.awsManagedHumanLoopRequestSource,
  });

  final TfArg<String> awsManagedHumanLoopRequestSource;

  Map<String, Object?> encode() => {
    'aws_managed_human_loop_request_source': awsManagedHumanLoopRequestSource
        .toTfJson(),
  };
}

/// Typed helper for the `output_config` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionOutputConfig {
  const SagemakerFlowDefinitionOutputConfig({
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final TfArg<String>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_flow_definition`.
final class AwsSagemakerFlowDefinition extends Resource {
  static const String tfType = 'aws_sagemaker_flow_definition';

  AwsSagemakerFlowDefinition({
    required super.localName,
    required TfArg<String> flowDefinitionName,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    SagemakerFlowDefinitionHumanLoopActivationConfig? humanLoopActivationConfig,
    required SagemakerFlowDefinitionHumanLoopConfig humanLoopConfig,
    SagemakerFlowDefinitionHumanLoopRequestSource? humanLoopRequestSource,
    required SagemakerFlowDefinitionOutputConfig outputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'flow_definition_name': flowDefinitionName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (humanLoopActivationConfig != null)
             'human_loop_activation_config': TfArg.literal(
               humanLoopActivationConfig.encode(),
             ),
           'human_loop_config': TfArg.literal(humanLoopConfig.encode()),
           if (humanLoopRequestSource != null)
             'human_loop_request_source': TfArg.literal(
               humanLoopRequestSource.encode(),
             ),
           'output_config': TfArg.literal(outputConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerFlowDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
