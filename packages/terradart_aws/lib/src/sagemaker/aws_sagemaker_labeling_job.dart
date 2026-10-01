// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

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

  final TfArg<List<String>>? taskKeywords;

  final TfArg<num> taskTimeLimitInSeconds;

  final TfArg<String> taskTitle;

  final TfArg<String> workteamArn;

  final List<SagemakerLabelingJobAnnotationConsolidationConfig>?
  annotationConsolidationConfig;

  final List<SagemakerLabelingJobPublicWorkforceTaskPrice>?
  publicWorkforceTaskPrice;

  final List<SagemakerLabelingJobUiConfig>? uiConfig;

  Map<String, Object?> encode() => {
    'max_concurrent_task_count': ?maxConcurrentTaskCount?.toTfJson(),
    'number_of_human_workers_per_data_object': numberOfHumanWorkersPerDataObject
        .toTfJson(),
    'pre_human_task_lambda_arn': ?preHumanTaskLambdaArn?.toTfJson(),
    'task_availability_lifetime_in_seconds': ?taskAvailabilityLifetimeInSeconds
        ?.toTfJson(),
    'task_description': taskDescription.toTfJson(),
    'task_keywords': ?taskKeywords?.toTfJson(),
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
final class SagemakerLabelingJobAnnotationConsolidationConfig {
  const SagemakerLabelingJobAnnotationConsolidationConfig({
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
final class SagemakerLabelingJobPublicWorkforceTaskPrice {
  const SagemakerLabelingJobPublicWorkforceTaskPrice({this.amountInUsd});

  final List<SagemakerLabelingJobAmountInUsd>? amountInUsd;

  Map<String, Object?> encode() => {
    if (amountInUsd != null)
      'amount_in_usd': [for (final e in amountInUsd!) e.encode()],
  };
}

/// Typed helper for the `human_task_config.public_workforce_task_price.amount_in_usd` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobAmountInUsd {
  const SagemakerLabelingJobAmountInUsd({
    this.cents,
    this.dollars,
    this.tenthFractionsOfACent,
  });

  final TfArg<num>? cents;

  final TfArg<num>? dollars;

  final TfArg<num>? tenthFractionsOfACent;

  Map<String, Object?> encode() => {
    'cents': ?cents?.toTfJson(),
    'dollars': ?dollars?.toTfJson(),
    'tenth_fractions_of_a_cent': ?tenthFractionsOfACent?.toTfJson(),
  };
}

/// Typed helper for the `human_task_config.ui_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobUiConfig {
  const SagemakerLabelingJobUiConfig({
    this.humanTaskUiArn,
    this.uiTemplateS3Uri,
  });

  final TfArg<String>? humanTaskUiArn;

  final TfArg<String>? uiTemplateS3Uri;

  Map<String, Object?> encode() => {
    'human_task_ui_arn': ?humanTaskUiArn?.toTfJson(),
    'ui_template_s3_uri': ?uiTemplateS3Uri?.toTfJson(),
  };
}

/// Typed helper for the `input_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobInputConfig {
  const SagemakerLabelingJobInputConfig({this.dataAttributes, this.dataSource});

  final List<SagemakerLabelingJobDataAttributes>? dataAttributes;

  final List<SagemakerLabelingJobDataSource>? dataSource;

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
final class SagemakerLabelingJobDataAttributes {
  const SagemakerLabelingJobDataAttributes({this.contentClassifiers});

  final List<TfArg<SagemakerLabelingJobContentClassifiers>>? contentClassifiers;

  Map<String, Object?> encode() => {
    if (contentClassifiers != null)
      'content_classifiers': [
        for (final e in contentClassifiers!) e.toTfJson(),
      ],
  };
}

/// `content_classifiers` — derived from the provider schema description.
enum SagemakerLabelingJobContentClassifiers implements TerraformEnum {
  freeofpersonallyidentifiableinformation(
    'FreeOfPersonallyIdentifiableInformation',
  ),
  freeofadultcontent('FreeOfAdultContent');

  const SagemakerLabelingJobContentClassifiers(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_config.data_source` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobDataSource {
  const SagemakerLabelingJobDataSource({this.s3DataSource, this.snsDataSource});

  final List<SagemakerLabelingJobS3DataSource>? s3DataSource;

  final List<SagemakerLabelingJobSnsDataSource>? snsDataSource;

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
final class SagemakerLabelingJobS3DataSource {
  const SagemakerLabelingJobS3DataSource({required this.manifestS3Uri});

  final TfArg<String> manifestS3Uri;

  Map<String, Object?> encode() => {
    'manifest_s3_uri': manifestS3Uri.toTfJson(),
  };
}

/// Typed helper for the `input_config.data_source.sns_data_source` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobSnsDataSource {
  const SagemakerLabelingJobSnsDataSource({required this.snsTopicArn});

  final RefTo<AwsSnsTopic> snsTopicArn;

  Map<String, Object?> encode() => {
    'sns_topic_arn': snsTopicArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `labeling_job_algorithms_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobAlgorithmsConfig {
  const SagemakerLabelingJobAlgorithmsConfig({
    this.initialActiveLearningModelArn,
    required this.labelingJobAlgorithmSpecificationArn,
    this.labelingJobResourceConfig,
  });

  final TfArg<String>? initialActiveLearningModelArn;

  final TfArg<String> labelingJobAlgorithmSpecificationArn;

  final List<SagemakerLabelingJobResourceConfig>? labelingJobResourceConfig;

  Map<String, Object?> encode() => {
    'initial_active_learning_model_arn': ?initialActiveLearningModelArn
        ?.toTfJson(),
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
final class SagemakerLabelingJobResourceConfig {
  const SagemakerLabelingJobResourceConfig({
    this.volumeKmsKeyId,
    this.vpcConfig,
  });

  final TfArg<String>? volumeKmsKeyId;

  final List<SagemakerLabelingJobVpcConfig>? vpcConfig;

  Map<String, Object?> encode() => {
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    if (vpcConfig != null)
      'vpc_config': [for (final e in vpcConfig!) e.encode()],
  };
}

/// Typed helper for the `labeling_job_algorithms_config.labeling_job_resource_config.vpc_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobVpcConfig {
  const SagemakerLabelingJobVpcConfig({
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

/// Typed helper for the `output_config` block of
/// `aws_sagemaker_labeling_job` (derived from provider schema).
@immutable
final class SagemakerLabelingJobOutputConfig {
  const SagemakerLabelingJobOutputConfig({
    this.kmsKeyId,
    required this.s3OutputPath,
    this.snsTopicArn,
  });

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  final RefTo<AwsSnsTopic>? snsTopicArn;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
    'sns_topic_arn': ?snsTopicArn?.encodeAs('arn').toTfJson(),
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
    required RefTo<AwsIamRole> roleArn,
    TfArg<List<Map<String, Object?>>>? stoppingConditions,
    TfArg<Map<String, String>>? tags,
    List<SagemakerLabelingJobHumanTaskConfig>? humanTaskConfig,
    List<SagemakerLabelingJobInputConfig>? inputConfig,
    List<SagemakerLabelingJobAlgorithmsConfig>? labelingJobAlgorithmsConfig,
    List<SagemakerLabelingJobOutputConfig>? outputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'label_attribute_name': labelAttributeName,
           'label_category_config_s3_uri': ?labelCategoryConfigS3Uri,
           'labeling_job_name': labelingJobName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'stopping_conditions': ?stoppingConditions,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerLabelingJob>`.
  RefTo<AwsSagemakerLabelingJob> get ref => RefTo.of(this);

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

  /// Reference to `label_attribute_name` attribute.
  TfRef<String> get labelAttributeNameRef =>
      TfRef.attribute<String>(this, 'label_attribute_name');

  /// Reference to `label_category_config_s3_uri` attribute.
  TfRef<String> get labelCategoryConfigS3UriRef =>
      TfRef.attribute<String>(this, 'label_category_config_s3_uri');

  /// Reference to `labeling_job_name` attribute.
  TfRef<String> get labelingJobNameRef =>
      TfRef.attribute<String>(this, 'labeling_job_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `stopping_conditions` attribute.
  TfRef<List<Map<String, Object?>>> get stoppingConditionsRef =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stopping_conditions');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
