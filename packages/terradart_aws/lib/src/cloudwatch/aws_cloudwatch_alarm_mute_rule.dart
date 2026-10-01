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

  final TfArg<List<String>> alarmNames;

  Map<String, Object?> encode() => {'alarm_names': alarmNames.toTfJson()};
}

/// Typed helper for the `rule` block of
/// `aws_cloudwatch_alarm_mute_rule` (derived from provider schema).
@immutable
final class CloudwatchAlarmMuteRule {
  const CloudwatchAlarmMuteRule({this.schedule});

  final List<CloudwatchAlarmMuteRuleSchedule>? schedule;

  Map<String, Object?> encode() => {
    if (schedule != null) 'schedule': [for (final e in schedule!) e.encode()],
  };
}

/// Typed helper for the `rule.schedule` block of
/// `aws_cloudwatch_alarm_mute_rule` (derived from provider schema).
@immutable
final class CloudwatchAlarmMuteRuleSchedule {
  const CloudwatchAlarmMuteRuleSchedule({
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
    'timezone': ?timezone?.toTfJson(),
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
    List<CloudwatchAlarmMuteRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'expire_date': ?expireDate,
           'name': name,
           'region': ?region,
           'start_date': ?startDate,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchAlarmMuteRule>`.
  RefTo<AwsCloudwatchAlarmMuteRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expire_date` attribute.
  TfRef<String> get expireDate => TfRef.attribute<String>(this, 'expire_date');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `start_date` attribute.
  TfRef<String> get startDate => TfRef.attribute<String>(this, 'start_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
