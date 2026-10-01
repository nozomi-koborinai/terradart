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

  AwsNotificationsManagedNotificationAdditionalChannelAssociation(
    super.localName, {
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNotificationsManagedNotificationAdditionalChannelAssociation>`.
  RefTo<AwsNotificationsManagedNotificationAdditionalChannelAssociation>
  get ref => RefTo.of(this);

  /// Reference to `channel_arn` attribute.
  TfRef<String> get channelArn => TfRef.attribute<String>(this, 'channel_arn');

  /// Reference to `managed_notification_arn` attribute.
  TfRef<String> get managedNotificationArn =>
      TfRef.attribute<String>(this, 'managed_notification_arn');
}
