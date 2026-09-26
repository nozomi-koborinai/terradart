// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_alarm_mute_rule`.
const Set<String> _awsCloudwatchAlarmMuteRuleSensitive = <String>{};

/// Typed helper for the `mute_targets` block of
/// `aws_cloudwatch_alarm_mute_rule` (derived from provider schema).
@immutable
final class CloudwatchAlarmMuteRuleMuteTargets {
  const CloudwatchAlarmMuteRuleMuteTargets({required this.alarmNames});

  final TfArg<List<Object?>> alarmNames;

  Map<String, Object?> encode() => {'alarm_names': alarmNames.toTfJson()};
}

/// Typed helper for the `rule` block of
/// `aws_cloudwatch_alarm_mute_rule` (derived from provider schema).
@immutable
final class CloudwatchAlarmMuteRuleRule {
  const CloudwatchAlarmMuteRuleRule({this.schedule});

  final List<CloudwatchAlarmMuteRuleRuleSchedule>? schedule;

  Map<String, Object?> encode() => {
    if (schedule != null) 'schedule': [for (final e in schedule!) e.encode()],
  };
}

/// Typed helper for the `rule.schedule` block of
/// `aws_cloudwatch_alarm_mute_rule` (derived from provider schema).
@immutable
final class CloudwatchAlarmMuteRuleRuleSchedule {
  const CloudwatchAlarmMuteRuleRuleSchedule({
    required this.duration,
    required this.expression,
    this.timezone,
  });

  final TfArg<String> duration;

  final TfArg<String> expression;

  final TfArg<String>? timezone;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'expression': expression.toTfJson(),
    if (timezone != null) 'timezone': timezone!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_alarm_mute_rule`.
final class AwsCloudwatchAlarmMuteRule extends Resource {
  static const String tfType = 'aws_cloudwatch_alarm_mute_rule';

  AwsCloudwatchAlarmMuteRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? expireDate,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? startDate,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchAlarmMuteRuleMuteTargets>? muteTargets,
    List<CloudwatchAlarmMuteRuleRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (expireDate != null) 'expire_date': expireDate,
           'name': name,
           if (region != null) 'region': region,
           if (startDate != null) 'start_date': startDate,
           if (tags != null) 'tags': tags,
           if (muteTargets != null)
             'mute_targets': TfArg.literal([
               for (final e in muteTargets) e.encode(),
             ]),
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchAlarmMuteRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `last_updated_timestamp` attribute.
  TfRef<String> get lastUpdatedTimestamp =>
      TfRef.attribute<String>(this, 'last_updated_timestamp');

  /// Reference to `mute_type` attribute.
  TfRef<String> get muteType => TfRef.attribute<String>(this, 'mute_type');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
