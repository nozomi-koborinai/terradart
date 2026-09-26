// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_composite_alarm`.
const Set<String> _awsCloudwatchCompositeAlarmSensitive = <String>{};

/// Typed helper for the `actions_suppressor` block of
/// `aws_cloudwatch_composite_alarm` (derived from provider schema).
@immutable
final class CloudwatchCompositeAlarmActionsSuppressor {
  const CloudwatchCompositeAlarmActionsSuppressor({
    required this.alarm,
    required this.extensionPeriod,
    required this.waitPeriod,
  });

  final TfArg<String> alarm;

  final TfArg<num> extensionPeriod;

  final TfArg<num> waitPeriod;

  Map<String, Object?> encode() => {
    'alarm': alarm.toTfJson(),
    'extension_period': extensionPeriod.toTfJson(),
    'wait_period': waitPeriod.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_composite_alarm`.
final class AwsCloudwatchCompositeAlarm extends Resource {
  static const String tfType = 'aws_cloudwatch_composite_alarm';

  AwsCloudwatchCompositeAlarm({
    required super.localName,
    TfArg<bool>? actionsEnabled,
    TfArg<List<String>>? alarmActions,
    TfArg<String>? alarmDescription,
    required TfArg<String> alarmName,
    required TfArg<String> alarmRule,
    TfArg<List<String>>? insufficientDataActions,
    TfArg<List<String>>? okActions,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CloudwatchCompositeAlarmActionsSuppressor? actionsSuppressor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (actionsEnabled != null) 'actions_enabled': actionsEnabled,
           if (alarmActions != null) 'alarm_actions': alarmActions,
           if (alarmDescription != null) 'alarm_description': alarmDescription,
           'alarm_name': alarmName,
           'alarm_rule': alarmRule,
           if (insufficientDataActions != null)
             'insufficient_data_actions': insufficientDataActions,
           if (okActions != null) 'ok_actions': okActions,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (actionsSuppressor != null)
             'actions_suppressor': TfArg.literal(actionsSuppressor.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchCompositeAlarmSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
