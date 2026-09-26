// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_job_queue`.
const Set<String> _awsBatchJobQueueSensitive = <String>{};

/// Typed helper for the `compute_environment_order` block of
/// `aws_batch_job_queue` (derived from provider schema).
@immutable
final class BatchJobQueueComputeEnvironmentOrder {
  const BatchJobQueueComputeEnvironmentOrder({
    required this.computeEnvironment,
    required this.order,
  });

  final TfArg<String> computeEnvironment;

  final TfArg<num> order;

  Map<String, Object?> encode() => {
    'compute_environment': computeEnvironment.toTfJson(),
    'order': order.toTfJson(),
  };
}

/// Typed helper for the `job_state_time_limit_action` block of
/// `aws_batch_job_queue` (derived from provider schema).
@immutable
final class BatchJobQueueJobStateTimeLimitAction {
  const BatchJobQueueJobStateTimeLimitAction({
    required this.action,
    required this.maxTimeSeconds,
    required this.reason,
    required this.state,
  });

  final TfArg<String> action;

  final TfArg<num> maxTimeSeconds;

  final TfArg<String> reason;

  final TfArg<String> state;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'max_time_seconds': maxTimeSeconds.toTfJson(),
    'reason': reason.toTfJson(),
    'state': state.toTfJson(),
  };
}

/// Factory wrapper for `aws_batch_job_queue`.
final class AwsBatchJobQueue extends Resource {
  static const String tfType = 'aws_batch_job_queue';

  AwsBatchJobQueue({
    required super.localName,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? region,
    TfArg<String>? schedulingPolicyArn,
    required TfArg<String> state,
    TfArg<Map<String, String>>? tags,
    List<BatchJobQueueComputeEnvironmentOrder>? computeEnvironmentOrder,
    List<BatchJobQueueJobStateTimeLimitAction>? jobStateTimeLimitAction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'priority': priority,
           if (region != null) 'region': region,
           if (schedulingPolicyArn != null)
             'scheduling_policy_arn': schedulingPolicyArn,
           'state': state,
           if (tags != null) 'tags': tags,
           if (computeEnvironmentOrder != null)
             'compute_environment_order': TfArg.literal([
               for (final e in computeEnvironmentOrder) e.encode(),
             ]),
           if (jobStateTimeLimitAction != null)
             'job_state_time_limit_action': TfArg.literal([
               for (final e in jobStateTimeLimitAction) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchJobQueueSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
