// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_managed_notification_account_contact_association`.
const Set<String>
_awsNotificationsManagedNotificationAccountContactAssociationSensitive =
    <String>{};

/// Notifications Managed Notification Account Contact Association Contact enum for `contact_identifier`.
enum NotificationsManagedNotificationAccountContactAssociationContactIdentifier
    implements TerraformEnum {
  accountPrimary('ACCOUNT_PRIMARY'),
  accountAlternateBilling('ACCOUNT_ALTERNATE_BILLING'),
  accountAlternateOperations('ACCOUNT_ALTERNATE_OPERATIONS'),
  accountAlternateSecurity('ACCOUNT_ALTERNATE_SECURITY');

  const NotificationsManagedNotificationAccountContactAssociationContactIdentifier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_notifications_managed_notification_account_contact_association`.
final class AwsNotificationsManagedNotificationAccountContactAssociation
    extends Resource {
  static const String tfType =
      'aws_notifications_managed_notification_account_contact_association';

  AwsNotificationsManagedNotificationAccountContactAssociation({
    required super.localName,
    required TfArg<
      NotificationsManagedNotificationAccountContactAssociationContactIdentifier
    >
    contactIdentifier,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNotificationsManagedNotificationAccountContactAssociation>`.
  RefTo<AwsNotificationsManagedNotificationAccountContactAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `contact_identifier` attribute.
  TfRef<String> get contactIdentifier =>
      TfRef.attribute<String>(this, 'contact_identifier');

  /// Reference to `managed_notification_configuration_arn` attribute.
  TfRef<String> get managedNotificationConfigurationArn =>
      TfRef.attribute<String>(this, 'managed_notification_configuration_arn');
}
