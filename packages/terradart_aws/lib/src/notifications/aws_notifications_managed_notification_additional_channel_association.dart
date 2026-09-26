// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_managed_notification_additional_channel_association`.
const Set<String>
_awsNotificationsManagedNotificationAdditionalChannelAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_notifications_managed_notification_additional_channel_association`.
final class AwsNotificationsManagedNotificationAdditionalChannelAssociation
    extends Resource {
  static const String tfType =
      'aws_notifications_managed_notification_additional_channel_association';

  AwsNotificationsManagedNotificationAdditionalChannelAssociation({
    required super.localName,
    required TfArg<String> channelArn,
    required TfArg<String> managedNotificationArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'channel_arn': channelArn,
           'managed_notification_arn': managedNotificationArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationsManagedNotificationAdditionalChannelAssociationSensitive;
}
