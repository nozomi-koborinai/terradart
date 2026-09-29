// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sqs_queue`.
const Set<String> _awsSqsQueueSensitive = <String>{};

/// Factory wrapper for `aws_sqs_queue`.
final class AwsSqsQueue extends Resource {
  static const String tfType = 'aws_sqs_queue';

  AwsSqsQueue({
    required super.localName,
    TfArg<bool>? contentBasedDeduplication,
    TfArg<String>? deduplicationScope,
    TfArg<num>? delaySeconds,
    TfArg<bool>? fifoQueue,
    TfArg<String>? fifoThroughputLimit,
    TfArg<num>? kmsDataKeyReusePeriodSeconds,
    RefTo<AwsKmsKey>? kmsMasterKeyId,
    TfArg<num>? maxMessageSize,
    TfArg<num>? messageRetentionSeconds,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? policy,
    TfArg<num>? receiveWaitTimeSeconds,
    TfArg<String>? redriveAllowPolicy,
    TfArg<String>? redrivePolicy,
    TfArg<String>? region,
    TfArg<bool>? sqsManagedSseEnabled,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? visibilityTimeoutSeconds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_based_deduplication': ?contentBasedDeduplication,
           'deduplication_scope': ?deduplicationScope,
           'delay_seconds': ?delaySeconds,
           'fifo_queue': ?fifoQueue,
           'fifo_throughput_limit': ?fifoThroughputLimit,
           'kms_data_key_reuse_period_seconds': ?kmsDataKeyReusePeriodSeconds,
           'kms_master_key_id': ?kmsMasterKeyId?.encodeAs('arn'),
           'max_message_size': ?maxMessageSize,
           'message_retention_seconds': ?messageRetentionSeconds,
           'name': ?name,
           'name_prefix': ?namePrefix,
           'policy': ?policy,
           'receive_wait_time_seconds': ?receiveWaitTimeSeconds,
           'redrive_allow_policy': ?redriveAllowPolicy,
           'redrive_policy': ?redrivePolicy,
           'region': ?region,
           'sqs_managed_sse_enabled': ?sqsManagedSseEnabled,
           'tags': ?tags,
           'visibility_timeout_seconds': ?visibilityTimeoutSeconds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSqsQueueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSqsQueue>`.
  RefTo<AwsSqsQueue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
