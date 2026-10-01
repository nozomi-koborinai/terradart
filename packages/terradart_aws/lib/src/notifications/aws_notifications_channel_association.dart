// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_channel_association`.
const Set<String> _awsNotificationsChannelAssociationSensitive = <String>{};

/// Factory wrapper for `aws_notifications_channel_association`.
final class AwsNotificationsChannelAssociation extends Resource {
  static const String tfType = 'aws_notifications_channel_association';

  AwsNotificationsChannelAssociation({
    required super.localName,
    required TfArg<String> arn,
    required TfArg<String> notificationConfigurationArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           'notification_configuration_arn': notificationConfigurationArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationsChannelAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNotificationsChannelAssociation>`.
  RefTo<AwsNotificationsChannelAssociation> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `notification_configuration_arn` attribute.
  TfRef<String> get notificationConfigurationArn =>
      TfRef.attribute<String>(this, 'notification_configuration_arn');
}
