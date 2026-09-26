// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? kmsMasterKeyId,
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
           if (applicationFailureFeedbackRoleArn != null)
             'application_failure_feedback_role_arn':
                 applicationFailureFeedbackRoleArn,
           if (applicationSuccessFeedbackRoleArn != null)
             'application_success_feedback_role_arn':
                 applicationSuccessFeedbackRoleArn,
           if (applicationSuccessFeedbackSampleRate != null)
             'application_success_feedback_sample_rate':
                 applicationSuccessFeedbackSampleRate,
           if (archivePolicy != null) 'archive_policy': archivePolicy,
           if (contentBasedDeduplication != null)
             'content_based_deduplication': contentBasedDeduplication,
           if (deliveryPolicy != null) 'delivery_policy': deliveryPolicy,
           if (displayName != null) 'display_name': displayName,
           if (fifoThroughputScope != null)
             'fifo_throughput_scope': fifoThroughputScope,
           if (fifoTopic != null) 'fifo_topic': fifoTopic,
           if (firehoseFailureFeedbackRoleArn != null)
             'firehose_failure_feedback_role_arn':
                 firehoseFailureFeedbackRoleArn,
           if (firehoseSuccessFeedbackRoleArn != null)
             'firehose_success_feedback_role_arn':
                 firehoseSuccessFeedbackRoleArn,
           if (firehoseSuccessFeedbackSampleRate != null)
             'firehose_success_feedback_sample_rate':
                 firehoseSuccessFeedbackSampleRate,
           if (httpFailureFeedbackRoleArn != null)
             'http_failure_feedback_role_arn': httpFailureFeedbackRoleArn,
           if (httpSuccessFeedbackRoleArn != null)
             'http_success_feedback_role_arn': httpSuccessFeedbackRoleArn,
           if (httpSuccessFeedbackSampleRate != null)
             'http_success_feedback_sample_rate': httpSuccessFeedbackSampleRate,
           if (kmsMasterKeyId != null) 'kms_master_key_id': kmsMasterKeyId,
           if (lambdaFailureFeedbackRoleArn != null)
             'lambda_failure_feedback_role_arn': lambdaFailureFeedbackRoleArn,
           if (lambdaSuccessFeedbackRoleArn != null)
             'lambda_success_feedback_role_arn': lambdaSuccessFeedbackRoleArn,
           if (lambdaSuccessFeedbackSampleRate != null)
             'lambda_success_feedback_sample_rate':
                 lambdaSuccessFeedbackSampleRate,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           if (signatureVersion != null) 'signature_version': signatureVersion,
           if (sqsFailureFeedbackRoleArn != null)
             'sqs_failure_feedback_role_arn': sqsFailureFeedbackRoleArn,
           if (sqsSuccessFeedbackRoleArn != null)
             'sqs_success_feedback_role_arn': sqsSuccessFeedbackRoleArn,
           if (sqsSuccessFeedbackSampleRate != null)
             'sqs_success_feedback_sample_rate': sqsSuccessFeedbackSampleRate,
           if (tags != null) 'tags': tags,
           if (tracingConfig != null) 'tracing_config': tracingConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSnsTopicSensitive;

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
