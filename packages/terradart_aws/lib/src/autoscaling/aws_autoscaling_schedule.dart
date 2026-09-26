// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_schedule`.
const Set<String> _awsAutoscalingScheduleSensitive = <String>{};

/// Factory wrapper for `aws_autoscaling_schedule`.
final class AwsAutoscalingSchedule extends Resource {
  static const String tfType = 'aws_autoscaling_schedule';

  AwsAutoscalingSchedule({
    required super.localName,
    required TfArg<String> autoscalingGroupName,
    TfArg<num>? desiredCapacity,
    TfArg<String>? endTime,
    TfArg<num>? maxSize,
    TfArg<num>? minSize,
    TfArg<String>? recurrence,
    TfArg<String>? region,
    required TfArg<String> scheduledActionName,
    TfArg<String>? startTime,
    TfArg<String>? timeZone,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_group_name': autoscalingGroupName,
           if (desiredCapacity != null) 'desired_capacity': desiredCapacity,
           if (endTime != null) 'end_time': endTime,
           if (maxSize != null) 'max_size': maxSize,
           if (minSize != null) 'min_size': minSize,
           if (recurrence != null) 'recurrence': recurrence,
           if (region != null) 'region': region,
           'scheduled_action_name': scheduledActionName,
           if (startTime != null) 'start_time': startTime,
           if (timeZone != null) 'time_zone': timeZone,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingScheduleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
