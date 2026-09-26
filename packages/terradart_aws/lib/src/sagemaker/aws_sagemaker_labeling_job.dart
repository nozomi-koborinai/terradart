// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_labeling_job`.
const Set<String> _awsSagemakerLabelingJobSensitive = <String>{};

/// Typed helper for the `human_task_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobHumanTaskConfig {
  const SagemakerLabelingJobHumanTaskConfig({
    this.maxConcurrentTaskCount,
    required this.numberOfHumanWorkersPerDataObject,
    this.preHumanTaskLambdaArn,
    this.taskAvailabilityLifetimeInSeconds,
    required this.taskDescription,
    this.taskKeywords,
    required this.taskTimeLimitInSeconds,
    required this.taskTitle,
    required this.workteamArn,
    this.annotationConsolidationConfig,
    this.publicWorkforceTaskPrice,
    this.uiConfig,
  });

  final TfArg<num>? maxConcurrentTaskCount;

  final TfArg<num> numberOfHumanWorkersPerDataObject;

  final TfArg<String>? preHumanTaskLambdaArn;

  final TfArg<num>? taskAvailabilityLifetimeInSeconds;

  final TfArg<String> taskDescription;

  final TfArg<List<Object?>>? taskKeywords;

  final TfArg<num> taskTimeLimitInSeconds;

  final TfArg<String> taskTitle;

  final TfArg<String> workteamArn;

  final List<SagemakerLabelingJobHumanTaskConfigAnnotationConsolidationConfig>?
  annotationConsolidationConfig;

  final List<SagemakerLabelingJobHumanTaskConfigPublicWorkforceTaskPrice>?
  publicWorkforceTaskPrice;

  final List<SagemakerLabelingJobHumanTaskConfigUiConfig>? uiConfig;

  Map<String, Object?> encode() => {
    if (maxConcurrentTaskCount != null)
      'max_concurrent_task_count': maxConcurrentTaskCount!.toTfJson(),
    'number_of_human_workers_per_data_object': numberOfHumanWorkersPerDataObject
        .toTfJson(),
    if (preHumanTaskLambdaArn != null)
      'pre_human_task_lambda_arn': preHumanTaskLambdaArn!.toTfJson(),
    if (taskAvailabilityLifetimeInSeconds != null)
      'task_availability_lifetime_in_seconds':
          taskAvailabilityLifetimeInSeconds!.toTfJson(),
    'task_description': taskDescription.toTfJson(),
    if (taskKeywords != null) 'task_keywords': taskKeywords!.toTfJson(),
    'task_time_limit_in_seconds': taskTimeLimitInSeconds.toTfJson(),
    'task_title': taskTitle.toTfJson(),
    'workteam_arn': workteamArn.toTfJson(),
    if (annotationConsolidationConfig != null)
      'annotation_consolidation_config': [
        for (final e in annotationConsolidationConfig!) e.encode(),
      ],
    if (publicWorkforceTaskPrice != null)
      'public_workforce_task_price': [
        for (final e in publicWorkforceTaskPrice!) e.encode(),
      ],
    if (uiConfig != null) 'ui_config': [for (final e in uiConfig!) e.encode()],
  };
}

/// Typed helper for the `human_task_config.annotation_consolidation_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobHumanTaskConfigAnnotationConsolidationConfig {
  const SagemakerLabelingJobHumanTaskConfigAnnotationConsolidationConfig({
    required this.annotationConsolidationLambdaArn,
  });

  final TfArg<String> annotationConsolidationLambdaArn;

  Map<String, Object?> encode() => {
    'annotation_consolidation_lambda_arn': annotationConsolidationLambdaArn
        .toTfJson(),
  };
}

/// Typed helper for the `human_task_config.public_workforce_task_price` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobHumanTaskConfigPublicWorkforceTaskPrice {
  const SagemakerLabelingJobHumanTaskConfigPublicWorkforceTaskPrice({
    this.amountInUsd,
  });

  final List<
    SagemakerLabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd
  >?
  amountInUsd;

  Map<String, Object?> encode() => {
    if (amountInUsd != null)
      'amount_in_usd': [for (final e in amountInUsd!) e.encode()],
  };
}

/// Typed helper for the `human_task_config.public_workforce_task_price.amount_in_usd` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd {
  const SagemakerLabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd({
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

/// Typed helper for the `human_task_config.ui_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobHumanTaskConfigUiConfig {
  const SagemakerLabelingJobHumanTaskConfigUiConfig({
    this.humanTaskUiArn,
    this.uiTemplateS3Uri,
  });

  final TfArg<String>? humanTaskUiArn;

  final TfArg<String>? uiTemplateS3Uri;

  Map<String, Object?> encode() => {
    if (humanTaskUiArn != null) 'human_task_ui_arn': humanTaskUiArn!.toTfJson(),
    if (uiTemplateS3Uri != null)
      'ui_template_s3_uri': uiTemplateS3Uri!.toTfJson(),
  };
}

/// Typed helper for the `input_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobInputConfig {
  const SagemakerLabelingJobInputConfig({this.dataAttributes, this.dataSource});

  final List<SagemakerLabelingJobInputConfigDataAttributes>? dataAttributes;

  final List<SagemakerLabelingJobInputConfigDataSource>? dataSource;

  Map<String, Object?> encode() => {
    if (dataAttributes != null)
      'data_attributes': [for (final e in dataAttributes!) e.encode()],
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
  };
}

/// Typed helper for the `input_config.data_attributes` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobInputConfigDataAttributes {
  const SagemakerLabelingJobInputConfigDataAttributes({
    this.contentClassifiers,
  });

  final TfArg<List<Object?>>? contentClassifiers;

  Map<String, Object?> encode() => {
    if (contentClassifiers != null)
      'content_classifiers': contentClassifiers!.toTfJson(),
  };
}

/// Typed helper for the `input_config.data_source` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobInputConfigDataSource {
  const SagemakerLabelingJobInputConfigDataSource({
    this.s3DataSource,
    this.snsDataSource,
  });

  final List<SagemakerLabelingJobInputConfigDataSourceS3DataSource>?
  s3DataSource;

  final List<SagemakerLabelingJobInputConfigDataSourceSnsDataSource>?
  snsDataSource;

  Map<String, Object?> encode() => {
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
    if (snsDataSource != null)
      'sns_data_source': [for (final e in snsDataSource!) e.encode()],
  };
}

/// Typed helper for the `input_config.data_source.s3_data_source` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobInputConfigDataSourceS3DataSource {
  const SagemakerLabelingJobInputConfigDataSourceS3DataSource({
    required this.manifestS3Uri,
  });

  final TfArg<String> manifestS3Uri;

  Map<String, Object?> encode() => {
    'manifest_s3_uri': manifestS3Uri.toTfJson(),
  };
}

/// Typed helper for the `input_config.data_source.sns_data_source` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobInputConfigDataSourceSnsDataSource {
  const SagemakerLabelingJobInputConfigDataSourceSnsDataSource({
    required this.snsTopicArn,
  });

  final TfArg<String> snsTopicArn;

  Map<String, Object?> encode() => {'sns_topic_arn': snsTopicArn.toTfJson()};
}

/// Typed helper for the `labeling_job_algorithms_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobLabelingJobAlgorithmsConfig {
  const SagemakerLabelingJobLabelingJobAlgorithmsConfig({
    this.initialActiveLearningModelArn,
    required this.labelingJobAlgorithmSpecificationArn,
    this.labelingJobResourceConfig,
  });

  final TfArg<String>? initialActiveLearningModelArn;

  final TfArg<String> labelingJobAlgorithmSpecificationArn;

  final List<
    SagemakerLabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig
  >?
  labelingJobResourceConfig;

  Map<String, Object?> encode() => {
    if (initialActiveLearningModelArn != null)
      'initial_active_learning_model_arn': initialActiveLearningModelArn!
          .toTfJson(),
    'labeling_job_algorithm_specification_arn':
        labelingJobAlgorithmSpecificationArn.toTfJson(),
    if (labelingJobResourceConfig != null)
      'labeling_job_resource_config': [
        for (final e in labelingJobResourceConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `labeling_job_algorithms_config.labeling_job_resource_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig {
  const SagemakerLabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig({
    this.volumeKmsKeyId,
    this.vpcConfig,
  });

  final TfArg<String>? volumeKmsKeyId;

  final List<
    SagemakerLabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig
  >?
  vpcConfig;

  Map<String, Object?> encode() => {
    if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId!.toTfJson(),
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// Typed helper for the `labeling_job_algorithms_config.labeling_job_resource_config.vpc_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig {
  const SagemakerLabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Typed helper for the `output_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobOutputConfig {
  const SagemakerLabelingJobOutputConfig({
    this.kmsKeyId,
    required this.s3OutputPath,
    this.snsTopicArn,
  });

  final TfArg<String>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  final TfArg<String>? snsTopicArn;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
    if (snsTopicArn != null) 'sns_topic_arn': snsTopicArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_labeling_job`.
final class AwsSagemakerLabelingJob extends Resource {
  static const String tfType = 'aws_sagemaker_labeling_job';

  AwsSagemakerLabelingJob({
    required super.localName,
    required TfArg<String> labelAttributeName,
    TfArg<String>? labelCategoryConfigS3Uri,
    required TfArg<String> labelingJobName,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<List<Map<String, Object?>>>? stoppingConditions,
    TfArg<Map<String, String>>? tags,
    List<SagemakerLabelingJobHumanTaskConfig>? humanTaskConfig,
    List<SagemakerLabelingJobInputConfig>? inputConfig,
    List<SagemakerLabelingJobLabelingJobAlgorithmsConfig>?
    labelingJobAlgorithmsConfig,
    List<SagemakerLabelingJobOutputConfig>? outputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'label_attribute_name': labelAttributeName,
           if (labelCategoryConfigS3Uri != null)
             'label_category_config_s3_uri': labelCategoryConfigS3Uri,
           'labeling_job_name': labelingJobName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (stoppingConditions != null)
             'stopping_conditions': stoppingConditions,
           if (tags != null) 'tags': tags,
           if (humanTaskConfig != null)
             'human_task_config': TfArg.literal([
               for (final e in humanTaskConfig) e.encode(),
             ]),
           if (inputConfig != null)
             'input_config': TfArg.literal([
               for (final e in inputConfig) e.encode(),
             ]),
           if (labelingJobAlgorithmsConfig != null)
             'labeling_job_algorithms_config': TfArg.literal([
               for (final e in labelingJobAlgorithmsConfig) e.encode(),
             ]),
           if (outputConfig != null)
             'output_config': TfArg.literal([
               for (final e in outputConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerLabelingJobSensitive;

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `job_reference_code` attribute.
  TfRef<String> get jobReferenceCode =>
      TfRef.attribute<String>(this, 'job_reference_code');

  /// Reference to `label_counters` attribute.
  TfRef<List<Map<String, Object?>>> get labelCounters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'label_counters');

  /// Reference to `labeling_job_arn` attribute.
  TfRef<String> get labelingJobArn =>
      TfRef.attribute<String>(this, 'labeling_job_arn');

  /// Reference to `labeling_job_status` attribute.
  TfRef<String> get labelingJobStatus =>
      TfRef.attribute<String>(this, 'labeling_job_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
