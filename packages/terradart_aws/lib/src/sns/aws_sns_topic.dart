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

  AwsSnsTopic({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `beginning_archive_time` attribute.
  TfRef<String> get beginningArchiveTime =>
      TfRef.attribute<String>(this, 'beginning_archive_time');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');
}
