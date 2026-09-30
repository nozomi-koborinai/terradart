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

  /// Reference to `content_based_deduplication` attribute.
  TfRef<bool> get contentBasedDeduplicationRef =>
      TfRef.attribute<bool>(this, 'content_based_deduplication');

  /// Reference to `deduplication_scope` attribute.
  TfRef<String> get deduplicationScopeRef =>
      TfRef.attribute<String>(this, 'deduplication_scope');

  /// Reference to `delay_seconds` attribute.
  TfRef<num> get delaySecondsRef => TfRef.attribute<num>(this, 'delay_seconds');

  /// Reference to `fifo_queue` attribute.
  TfRef<bool> get fifoQueueRef => TfRef.attribute<bool>(this, 'fifo_queue');

  /// Reference to `fifo_throughput_limit` attribute.
  TfRef<String> get fifoThroughputLimitRef =>
      TfRef.attribute<String>(this, 'fifo_throughput_limit');

  /// Reference to `kms_data_key_reuse_period_seconds` attribute.
  TfRef<num> get kmsDataKeyReusePeriodSecondsRef =>
      TfRef.attribute<num>(this, 'kms_data_key_reuse_period_seconds');

  /// Reference to `kms_master_key_id` attribute.
  TfRef<String> get kmsMasterKeyIdRef =>
      TfRef.attribute<String>(this, 'kms_master_key_id');

  /// Reference to `max_message_size` attribute.
  TfRef<num> get maxMessageSizeRef =>
      TfRef.attribute<num>(this, 'max_message_size');

  /// Reference to `message_retention_seconds` attribute.
  TfRef<num> get messageRetentionSecondsRef =>
      TfRef.attribute<num>(this, 'message_retention_seconds');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `policy` attribute.
  TfRef<String> get policyRef => TfRef.attribute<String>(this, 'policy');

  /// Reference to `receive_wait_time_seconds` attribute.
  TfRef<num> get receiveWaitTimeSecondsRef =>
      TfRef.attribute<num>(this, 'receive_wait_time_seconds');

  /// Reference to `redrive_allow_policy` attribute.
  TfRef<String> get redriveAllowPolicyRef =>
      TfRef.attribute<String>(this, 'redrive_allow_policy');

  /// Reference to `redrive_policy` attribute.
  TfRef<String> get redrivePolicyRef =>
      TfRef.attribute<String>(this, 'redrive_policy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `sqs_managed_sse_enabled` attribute.
  TfRef<bool> get sqsManagedSseEnabledRef =>
      TfRef.attribute<bool>(this, 'sqs_managed_sse_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `visibility_timeout_seconds` attribute.
  TfRef<num> get visibilityTimeoutSecondsRef =>
      TfRef.attribute<num>(this, 'visibility_timeout_seconds');
}
