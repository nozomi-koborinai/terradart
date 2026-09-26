// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_job_queue`.
const Set<String> _awsBatchJobQueueSensitive = <String>{};

/// Factory wrapper for `aws_batch_job_queue`.
final class DataAwsBatchJobQueue extends Data {
  static const String tfType = 'aws_batch_job_queue';

  DataAwsBatchJobQueue({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `compute_environment_order` attribute.
  TfRef<List<Map<String, Object?>>> get computeEnvironmentOrder =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'compute_environment_order',
      );

  /// Reference to `job_state_time_limit_action` attribute.
  TfRef<List<Map<String, Object?>>> get jobStateTimeLimitAction =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'job_state_time_limit_action',
      );

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `scheduling_policy_arn` attribute.
  TfRef<String> get schedulingPolicyArn =>
      TfRef.attribute<String>(this, 'scheduling_policy_arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
