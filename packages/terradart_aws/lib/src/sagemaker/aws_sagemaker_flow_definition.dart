// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_flow_definition`.
const Set<String> _awsSagemakerFlowDefinitionSensitive = <String>{};

/// Typed helper for the `human_loop_activation_config` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopActivationConfig {
  const SagemakerFlowDefinitionHumanLoopActivationConfig({
    this.humanLoopActivationConditionsConfig,
  });

  final SagemakerFlowDefinitionHumanLoopActivationConditionsConfig?
  humanLoopActivationConditionsConfig;

  @internal
  Map<String, Object?> encode() => {
    'human_loop_activation_conditions_config':
        ?humanLoopActivationConditionsConfig?.encode(),
  };
}

/// Typed helper for the `human_loop_activation_config.human_loop_activation_conditions_config` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopActivationConditionsConfig {
  const SagemakerFlowDefinitionHumanLoopActivationConditionsConfig({
    required this.humanLoopActivationConditions,
  });

  final TfArg<String> humanLoopActivationConditions;

  @internal
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

  final TfArg<List<String>>? taskKeywords;

  final TfArg<num>? taskTimeLimitInSeconds;

  final TfArg<String> taskTitle;

  final TfArg<String> workteamArn;

  final SagemakerFlowDefinitionPublicWorkforceTaskPrice?
  publicWorkforceTaskPrice;

  @internal
  Map<String, Object?> encode() => {
    'human_task_ui_arn': humanTaskUiArn.toTfJson(),
    'task_availability_lifetime_in_seconds': ?taskAvailabilityLifetimeInSeconds
        ?.toTfJson(),
    'task_count': taskCount.toTfJson(),
    'task_description': taskDescription.toTfJson(),
    'task_keywords': ?taskKeywords?.toTfJson(),
    'task_time_limit_in_seconds': ?taskTimeLimitInSeconds?.toTfJson(),
    'task_title': taskTitle.toTfJson(),
    'workteam_arn': workteamArn.toTfJson(),
    'public_workforce_task_price': ?publicWorkforceTaskPrice?.encode(),
  };
}

/// Typed helper for the `human_loop_config.public_workforce_task_price` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionPublicWorkforceTaskPrice {
  const SagemakerFlowDefinitionPublicWorkforceTaskPrice({this.amountInUsd});

  final SagemakerFlowDefinitionAmountInUsd? amountInUsd;

  @internal
  Map<String, Object?> encode() => {'amount_in_usd': ?amountInUsd?.encode()};
}

/// Typed helper for the `human_loop_config.public_workforce_task_price.amount_in_usd` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionAmountInUsd {
  const SagemakerFlowDefinitionAmountInUsd({
    this.cents,
    this.dollars,
    this.tenthFractionsOfACent,
  });

  final TfArg<num>? cents;

  final TfArg<num>? dollars;

  final TfArg<num>? tenthFractionsOfACent;

  @internal
  Map<String, Object?> encode() => {
    'cents': ?cents?.toTfJson(),
    'dollars': ?dollars?.toTfJson(),
    'tenth_fractions_of_a_cent': ?tenthFractionsOfACent?.toTfJson(),
  };
}

/// Typed helper for the `human_loop_request_source` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionHumanLoopRequestSource {
  const SagemakerFlowDefinitionHumanLoopRequestSource({
    required this.awsManagedHumanLoopRequestSource,
  });

  final SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource
  awsManagedHumanLoopRequestSource;

  @internal
  Map<String, Object?> encode() => {
    'aws_managed_human_loop_request_source': awsManagedHumanLoopRequestSource
        .toTfJson(),
  };
}

/// `aws_managed_human_loop_request_source` — derived from the provider schema description.
extension type const SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const awsRekognitionDetectmoderationlabelsImageV3 =
      SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource._(
        TfArgLiteral('AWS/Rekognition/DetectModerationLabels/Image/V3'),
      );
  static const awsTextractAnalyzedocumentFormsV1 =
      SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource._(
        TfArgLiteral('AWS/Textract/AnalyzeDocument/Forms/V1'),
      );

  static const List<SagemakerFlowDefinitionAwsManagedHumanLoopRequestSource>
  values = [
    awsRekognitionDetectmoderationlabelsImageV3,
    awsTextractAnalyzedocumentFormsV1,
  ];
}

/// Typed helper for the `output_config` block of
/// `aws_sagemaker_flow_definition` (derived from provider schema).
@immutable
final class SagemakerFlowDefinitionOutputConfig {
  const SagemakerFlowDefinitionOutputConfig({
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_flow_definition`.
final class AwsSagemakerFlowDefinition extends Resource {
  static const String tfType = 'aws_sagemaker_flow_definition';

  AwsSagemakerFlowDefinition(
    super.localName, {
    required TfArg<String> flowDefinitionName,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
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
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerFlowDefinition>`.
  RefTo<AwsSagemakerFlowDefinition> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `flow_definition_name` attribute.
  TfRef<String> get flowDefinitionName =>
      TfRef.attribute<String>(this, 'flow_definition_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
