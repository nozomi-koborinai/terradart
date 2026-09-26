// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_notification_hub`.
const Set<String> _awsNotificationsNotificationHubSensitive = <String>{};

/// Factory wrapper for `aws_notifications_notification_hub`.
final class AwsNotificationsNotificationHub extends Resource {
  static const String tfType = 'aws_notifications_notification_hub';

  AwsNotificationsNotificationHub({
    required super.localName,
    required TfArg<String> notificationHubRegion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'notification_hub_region': notificationHubRegion},
       );

  @override
  Set<String> get sensitiveFields => _awsNotificationsNotificationHubSensitive;
}
