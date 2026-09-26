// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_managed_notification_account_contact_association`.
const Set<String>
_awsNotificationsManagedNotificationAccountContactAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_notifications_managed_notification_account_contact_association`.
final class AwsNotificationsManagedNotificationAccountContactAssociation
    extends Resource {
  static const String tfType =
      'aws_notifications_managed_notification_account_contact_association';

  AwsNotificationsManagedNotificationAccountContactAssociation({
    required super.localName,
    required TfArg<String> contactIdentifier,
    required TfArg<String> managedNotificationConfigurationArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_identifier': contactIdentifier,
           'managed_notification_configuration_arn':
               managedNotificationConfigurationArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNotificationsManagedNotificationAccountContactAssociationSensitive;
}
