// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_devopsguru_notification_channel`.
const Set<String> _awsDevopsguruNotificationChannelSensitive = <String>{};

/// Typed helper for the `filters` block of
/// `aws_devopsguru_notification_channel` (derived from provider schema).
@immutable
final class DevopsguruNotificationChannelFilters {
  const DevopsguruNotificationChannelFilters({
    this.messageTypes,
    this.severities,
  });

  final List<TfArg<DevopsguruNotificationChannelMessageTypes>>? messageTypes;

  final List<TfArg<DevopsguruNotificationChannelSeverities>>? severities;

  Map<String, Object?> encode() => {
    if (messageTypes != null)
      'message_types': [for (final e in messageTypes!) e.toTfJson()],
    if (severities != null)
      'severities': [for (final e in severities!) e.toTfJson()],
  };
}

/// `message_types` — derived from the provider schema description.
enum DevopsguruNotificationChannelMessageTypes implements TerraformEnum {
  newInsight('NEW_INSIGHT'),
  closedInsight('CLOSED_INSIGHT'),
  newAssociation('NEW_ASSOCIATION'),
  severityUpgraded('SEVERITY_UPGRADED'),
  newRecommendation('NEW_RECOMMENDATION');

  const DevopsguruNotificationChannelMessageTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `severities` — derived from the provider schema description.
enum DevopsguruNotificationChannelSeverities implements TerraformEnum {
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH');

  const DevopsguruNotificationChannelSeverities(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `sns` block of
/// `aws_devopsguru_notification_channel` (derived from provider schema).
@immutable
final class DevopsguruNotificationChannelSns {
  const DevopsguruNotificationChannelSns({required this.topicArn});

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_devopsguru_notification_channel`.
final class AwsDevopsguruNotificationChannel extends Resource {
  static const String tfType = 'aws_devopsguru_notification_channel';

  AwsDevopsguruNotificationChannel(
    super.localName, {
    TfArg<String>? region,
    List<DevopsguruNotificationChannelFilters>? filters,
    List<DevopsguruNotificationChannelSns>? sns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (filters != null)
             'filters': TfArg.literal([for (final e in filters) e.encode()]),
           if (sns != null)
             'sns': TfArg.literal([for (final e in sns) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsguruNotificationChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevopsguruNotificationChannel>`.
  RefTo<AwsDevopsguruNotificationChannel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
