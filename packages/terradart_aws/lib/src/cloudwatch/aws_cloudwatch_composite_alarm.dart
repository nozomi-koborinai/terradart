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
           'actions_enabled': ?actionsEnabled,
           'alarm_actions': ?alarmActions,
           'alarm_description': ?alarmDescription,
           'alarm_name': alarmName,
           'alarm_rule': alarmRule,
           'insufficient_data_actions': ?insufficientDataActions,
           'ok_actions': ?okActions,
           'region': ?region,
           'tags': ?tags,
           if (actionsSuppressor != null)
             'actions_suppressor': TfArg.literal(actionsSuppressor.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchCompositeAlarmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchCompositeAlarm>`.
  RefTo<AwsCloudwatchCompositeAlarm> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `actions_enabled` attribute.
  TfRef<bool> get actionsEnabledRef =>
      TfRef.attribute<bool>(this, 'actions_enabled');

  /// Reference to `alarm_actions` attribute.
  TfRef<List<String>> get alarmActionsRef =>
      TfRef.attribute<List<String>>(this, 'alarm_actions');

  /// Reference to `alarm_description` attribute.
  TfRef<String> get alarmDescriptionRef =>
      TfRef.attribute<String>(this, 'alarm_description');

  /// Reference to `alarm_name` attribute.
  TfRef<String> get alarmNameRef => TfRef.attribute<String>(this, 'alarm_name');

  /// Reference to `alarm_rule` attribute.
  TfRef<String> get alarmRuleRef => TfRef.attribute<String>(this, 'alarm_rule');

  /// Reference to `insufficient_data_actions` attribute.
  TfRef<List<String>> get insufficientDataActionsRef =>
      TfRef.attribute<List<String>>(this, 'insufficient_data_actions');

  /// Reference to `ok_actions` attribute.
  TfRef<List<String>> get okActionsRef =>
      TfRef.attribute<List<String>>(this, 'ok_actions');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
