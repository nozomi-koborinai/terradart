// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>>? messageTypes;

  final TfArg<List<Object?>>? severities;

  Map<String, Object?> encode() => {
    if (messageTypes != null) 'message_types': messageTypes!.toTfJson(),
    if (severities != null) 'severities': severities!.toTfJson(),
  };
}

/// Typed helper for the `sns` block of
/// `aws_devopsguru_notification_channel` (derived from provider schema).
@immutable
final class DevopsguruNotificationChannelSns {
  const DevopsguruNotificationChannelSns({required this.topicArn});

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {'topic_arn': topicArn.toTfJson()};
}

/// Factory wrapper for `aws_devopsguru_notification_channel`.
final class AwsDevopsguruNotificationChannel extends Resource {
  static const String tfType = 'aws_devopsguru_notification_channel';

  AwsDevopsguruNotificationChannel({
    required super.localName,
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
           if (region != null) 'region': region,
           if (filters != null)
             'filters': TfArg.literal([for (final e in filters) e.encode()]),
           if (sns != null)
             'sns': TfArg.literal([for (final e in sns) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsguruNotificationChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
