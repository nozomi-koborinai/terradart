// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sns_topic`.
const Set<String> _awsSnsTopicSensitive = <String>{};

/// Factory wrapper for `aws_sns_topic`.
final class AwsSnsTopic extends Resource {
  static const String tfType = 'aws_sns_topic';

  AwsSnsTopic(
    super.localName, {
    TfArg<String>? applicationFailureFeedbackRoleArn,
    TfArg<String>? applicationSuccessFeedbackRoleArn,
    TfArg<num>? applicationSuccessFeedbackSampleRate,
    TfArg<String>? archivePolicy,
    TfArg<bool>? contentBasedDeduplication,
    TfArg<String>? deliveryPolicy,
    TfArg<String>? displayName,
    TfArg<String>? fifoThroughputScope,
    TfArg<bool>? fifoTopic,
    TfArg<String>? firehoseFailureFeedbackRoleArn,
    TfArg<String>? firehoseSuccessFeedbackRoleArn,
    TfArg<num>? firehoseSuccessFeedbackSampleRate,
    TfArg<String>? httpFailureFeedbackRoleArn,
    TfArg<String>? httpSuccessFeedbackRoleArn,
    TfArg<num>? httpSuccessFeedbackSampleRate,
    RefTo<AwsKmsKey>? kmsMasterKeyId,
    TfArg<String>? lambdaFailureFeedbackRoleArn,
    TfArg<String>? lambdaSuccessFeedbackRoleArn,
    TfArg<num>? lambdaSuccessFeedbackSampleRate,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? policy,
    TfArg<String>? region,
    TfArg<num>? signatureVersion,
    TfArg<String>? sqsFailureFeedbackRoleArn,
    TfArg<String>? sqsSuccessFeedbackRoleArn,
    TfArg<num>? sqsSuccessFeedbackSampleRate,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tracingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_failure_feedback_role_arn':
               ?applicationFailureFeedbackRoleArn,
           'application_success_feedback_role_arn':
               ?applicationSuccessFeedbackRoleArn,
           'application_success_feedback_sample_rate':
               ?applicationSuccessFeedbackSampleRate,
           'archive_policy': ?archivePolicy,
           'content_based_deduplication': ?contentBasedDeduplication,
           'delivery_policy': ?deliveryPolicy,
           'display_name': ?displayName,
           'fifo_throughput_scope': ?fifoThroughputScope,
           'fifo_topic': ?fifoTopic,
           'firehose_failure_feedback_role_arn':
               ?firehoseFailureFeedbackRoleArn,
           'firehose_success_feedback_role_arn':
               ?firehoseSuccessFeedbackRoleArn,
           'firehose_success_feedback_sample_rate':
               ?firehoseSuccessFeedbackSampleRate,
           'http_failure_feedback_role_arn': ?httpFailureFeedbackRoleArn,
           'http_success_feedback_role_arn': ?httpSuccessFeedbackRoleArn,
           'http_success_feedback_sample_rate': ?httpSuccessFeedbackSampleRate,
           'kms_master_key_id': ?kmsMasterKeyId?.encodeAs('arn'),
           'lambda_failure_feedback_role_arn': ?lambdaFailureFeedbackRoleArn,
           'lambda_success_feedback_role_arn': ?lambdaSuccessFeedbackRoleArn,
           'lambda_success_feedback_sample_rate':
               ?lambdaSuccessFeedbackSampleRate,
           'name': ?name,
           'name_prefix': ?namePrefix,
           'policy': ?policy,
           'region': ?region,
           'signature_version': ?signatureVersion,
           'sqs_failure_feedback_role_arn': ?sqsFailureFeedbackRoleArn,
           'sqs_success_feedback_role_arn': ?sqsSuccessFeedbackRoleArn,
           'sqs_success_feedback_sample_rate': ?sqsSuccessFeedbackSampleRate,
           'tags': ?tags,
           'tracing_config': ?tracingConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSnsTopic>`.
  RefTo<AwsSnsTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `beginning_archive_time` attribute.
  TfRef<String> get beginningArchiveTime =>
      TfRef.attribute<String>(this, 'beginning_archive_time');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `application_failure_feedback_role_arn` attribute.
  TfRef<String> get applicationFailureFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'application_failure_feedback_role_arn');

  /// Reference to `application_success_feedback_role_arn` attribute.
  TfRef<String> get applicationSuccessFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'application_success_feedback_role_arn');

  /// Reference to `application_success_feedback_sample_rate` attribute.
  TfRef<num> get applicationSuccessFeedbackSampleRate =>
      TfRef.attribute<num>(this, 'application_success_feedback_sample_rate');

  /// Reference to `archive_policy` attribute.
  TfRef<String> get archivePolicy =>
      TfRef.attribute<String>(this, 'archive_policy');

  /// Reference to `content_based_deduplication` attribute.
  TfRef<bool> get contentBasedDeduplication =>
      TfRef.attribute<bool>(this, 'content_based_deduplication');

  /// Reference to `delivery_policy` attribute.
  TfRef<String> get deliveryPolicy =>
      TfRef.attribute<String>(this, 'delivery_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `fifo_throughput_scope` attribute.
  TfRef<String> get fifoThroughputScope =>
      TfRef.attribute<String>(this, 'fifo_throughput_scope');

  /// Reference to `fifo_topic` attribute.
  TfRef<bool> get fifoTopic => TfRef.attribute<bool>(this, 'fifo_topic');

  /// Reference to `firehose_failure_feedback_role_arn` attribute.
  TfRef<String> get firehoseFailureFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'firehose_failure_feedback_role_arn');

  /// Reference to `firehose_success_feedback_role_arn` attribute.
  TfRef<String> get firehoseSuccessFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'firehose_success_feedback_role_arn');

  /// Reference to `firehose_success_feedback_sample_rate` attribute.
  TfRef<num> get firehoseSuccessFeedbackSampleRate =>
      TfRef.attribute<num>(this, 'firehose_success_feedback_sample_rate');

  /// Reference to `http_failure_feedback_role_arn` attribute.
  TfRef<String> get httpFailureFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'http_failure_feedback_role_arn');

  /// Reference to `http_success_feedback_role_arn` attribute.
  TfRef<String> get httpSuccessFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'http_success_feedback_role_arn');

  /// Reference to `http_success_feedback_sample_rate` attribute.
  TfRef<num> get httpSuccessFeedbackSampleRate =>
      TfRef.attribute<num>(this, 'http_success_feedback_sample_rate');

  /// Reference to `kms_master_key_id` attribute.
  TfRef<String> get kmsMasterKeyId =>
      TfRef.attribute<String>(this, 'kms_master_key_id');

  /// Reference to `lambda_failure_feedback_role_arn` attribute.
  TfRef<String> get lambdaFailureFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'lambda_failure_feedback_role_arn');

  /// Reference to `lambda_success_feedback_role_arn` attribute.
  TfRef<String> get lambdaSuccessFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'lambda_success_feedback_role_arn');

  /// Reference to `lambda_success_feedback_sample_rate` attribute.
  TfRef<num> get lambdaSuccessFeedbackSampleRate =>
      TfRef.attribute<num>(this, 'lambda_success_feedback_sample_rate');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `signature_version` attribute.
  TfRef<num> get signatureVersion =>
      TfRef.attribute<num>(this, 'signature_version');

  /// Reference to `sqs_failure_feedback_role_arn` attribute.
  TfRef<String> get sqsFailureFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'sqs_failure_feedback_role_arn');

  /// Reference to `sqs_success_feedback_role_arn` attribute.
  TfRef<String> get sqsSuccessFeedbackRoleArn =>
      TfRef.attribute<String>(this, 'sqs_success_feedback_role_arn');

  /// Reference to `sqs_success_feedback_sample_rate` attribute.
  TfRef<num> get sqsSuccessFeedbackSampleRate =>
      TfRef.attribute<num>(this, 'sqs_success_feedback_sample_rate');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tracing_config` attribute.
  TfRef<String> get tracingConfig =>
      TfRef.attribute<String>(this, 'tracing_config');
}
