// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_notifications_managed_notification_account_contact_association`.
const Set<String>
_awsNotificationsManagedNotificationAccountContactAssociationSensitive =
    <String>{};

/// Notifications Managed Notification Account Contact Association Contact enum for `contact_identifier`.
extension type const NotificationsManagedNotificationAccountContactAssociationContactIdentifier._(
  TfArg<String> _
) implements TfArg<String> {
  NotificationsManagedNotificationAccountContactAssociationContactIdentifier.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NotificationsManagedNotificationAccountContactAssociationContactIdentifier.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NotificationsManagedNotificationAccountContactAssociationContactIdentifier.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const accountPrimary =
      NotificationsManagedNotificationAccountContactAssociationContactIdentifier._(
        TfArgLiteral('ACCOUNT_PRIMARY'),
      );
  static const accountAlternateBilling =
      NotificationsManagedNotificationAccountContactAssociationContactIdentifier._(
        TfArgLiteral('ACCOUNT_ALTERNATE_BILLING'),
      );
  static const accountAlternateOperations =
      NotificationsManagedNotificationAccountContactAssociationContactIdentifier._(
        TfArgLiteral('ACCOUNT_ALTERNATE_OPERATIONS'),
      );
  static const accountAlternateSecurity =
      NotificationsManagedNotificationAccountContactAssociationContactIdentifier._(
        TfArgLiteral('ACCOUNT_ALTERNATE_SECURITY'),
      );

  static const List<
    NotificationsManagedNotificationAccountContactAssociationContactIdentifier
  >
  values = [
    accountPrimary,
    accountAlternateBilling,
    accountAlternateOperations,
    accountAlternateSecurity,
  ];
}

/// Factory wrapper for `aws_notifications_managed_notification_account_contact_association`.
final class AwsNotificationsManagedNotificationAccountContactAssociation
    extends Resource {
  static const String tfType =
      'aws_notifications_managed_notification_account_contact_association';

  AwsNotificationsManagedNotificationAccountContactAssociation(
    super.localName, {
    required NotificationsManagedNotificationAccountContactAssociationContactIdentifier
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
