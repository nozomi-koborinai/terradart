// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? kmsMasterKeyId,
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
           if (contentBasedDeduplication != null)
             'content_based_deduplication': contentBasedDeduplication,
           if (deduplicationScope != null)
             'deduplication_scope': deduplicationScope,
           if (delaySeconds != null) 'delay_seconds': delaySeconds,
           if (fifoQueue != null) 'fifo_queue': fifoQueue,
           if (fifoThroughputLimit != null)
             'fifo_throughput_limit': fifoThroughputLimit,
           if (kmsDataKeyReusePeriodSeconds != null)
             'kms_data_key_reuse_period_seconds': kmsDataKeyReusePeriodSeconds,
           if (kmsMasterKeyId != null) 'kms_master_key_id': kmsMasterKeyId,
           if (maxMessageSize != null) 'max_message_size': maxMessageSize,
           if (messageRetentionSeconds != null)
             'message_retention_seconds': messageRetentionSeconds,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (policy != null) 'policy': policy,
           if (receiveWaitTimeSeconds != null)
             'receive_wait_time_seconds': receiveWaitTimeSeconds,
           if (redriveAllowPolicy != null)
             'redrive_allow_policy': redriveAllowPolicy,
           if (redrivePolicy != null) 'redrive_policy': redrivePolicy,
           if (region != null) 'region': region,
           if (sqsManagedSseEnabled != null)
             'sqs_managed_sse_enabled': sqsManagedSseEnabled,
           if (tags != null) 'tags': tags,
           if (visibilityTimeoutSeconds != null)
             'visibility_timeout_seconds': visibilityTimeoutSeconds,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSqsQueueSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
