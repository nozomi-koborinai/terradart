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
           'desired_capacity': ?desiredCapacity,
           'end_time': ?endTime,
           'max_size': ?maxSize,
           'min_size': ?minSize,
           'recurrence': ?recurrence,
           'region': ?region,
           'scheduled_action_name': scheduledActionName,
           'start_time': ?startTime,
           'time_zone': ?timeZone,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingSchedule>`.
  RefTo<AwsAutoscalingSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `autoscaling_group_name` attribute.
  TfRef<String> get autoscalingGroupName =>
      TfRef.attribute<String>(this, 'autoscaling_group_name');

  /// Reference to `desired_capacity` attribute.
  TfRef<num> get desiredCapacity =>
      TfRef.attribute<num>(this, 'desired_capacity');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `max_size` attribute.
  TfRef<num> get maxSize => TfRef.attribute<num>(this, 'max_size');

  /// Reference to `min_size` attribute.
  TfRef<num> get minSize => TfRef.attribute<num>(this, 'min_size');

  /// Reference to `recurrence` attribute.
  TfRef<String> get recurrence => TfRef.attribute<String>(this, 'recurrence');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scheduled_action_name` attribute.
  TfRef<String> get scheduledActionName =>
      TfRef.attribute<String>(this, 'scheduled_action_name');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
