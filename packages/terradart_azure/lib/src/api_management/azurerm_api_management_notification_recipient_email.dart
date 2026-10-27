// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_notification_recipient_email`.
const Set<String> _azurermApiManagementNotificationRecipientEmailSensitive =
    <String>{};

/// Api Management Notification Recipient Email Notification enum for `notification_type`.
extension type const ApiManagementNotificationRecipientEmailNotificationType._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementNotificationRecipientEmailNotificationType.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementNotificationRecipientEmailNotificationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApiManagementNotificationRecipientEmailNotificationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const accountclosedpublisher =
      ApiManagementNotificationRecipientEmailNotificationType._(
        TfArgLiteral('AccountClosedPublisher'),
      );
  static const bcc = ApiManagementNotificationRecipientEmailNotificationType._(
    TfArgLiteral('BCC'),
  );
  static const newapplicationnotificationmessage =
      ApiManagementNotificationRecipientEmailNotificationType._(
        TfArgLiteral('NewApplicationNotificationMessage'),
      );
  static const newissuepublishernotificationmessage =
      ApiManagementNotificationRecipientEmailNotificationType._(
        TfArgLiteral('NewIssuePublisherNotificationMessage'),
      );
  static const purchasepublishernotificationmessage =
      ApiManagementNotificationRecipientEmailNotificationType._(
        TfArgLiteral('PurchasePublisherNotificationMessage'),
      );
  static const quotalimitapproachingpublishernotificationmessage =
      ApiManagementNotificationRecipientEmailNotificationType._(
        TfArgLiteral('QuotaLimitApproachingPublisherNotificationMessage'),
      );
  static const requestpublishernotificationmessage =
      ApiManagementNotificationRecipientEmailNotificationType._(
        TfArgLiteral('RequestPublisherNotificationMessage'),
      );

  static const List<ApiManagementNotificationRecipientEmailNotificationType>
  values = [
    accountclosedpublisher,
    bcc,
    newapplicationnotificationmessage,
    newissuepublishernotificationmessage,
    purchasepublishernotificationmessage,
    quotalimitapproachingpublishernotificationmessage,
    requestpublishernotificationmessage,
  ];
}

/// Factory wrapper for `azurerm_api_management_notification_recipient_email`.
final class AzurermApiManagementNotificationRecipientEmail extends Resource {
  static const String tfType =
      'azurerm_api_management_notification_recipient_email';

  AzurermApiManagementNotificationRecipientEmail(
    super.localName, {
    required TfArg<String> apiManagementId,
    required TfArg<String> email,
    required ApiManagementNotificationRecipientEmailNotificationType
    notificationType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'email': email,
           'notification_type': notificationType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementNotificationRecipientEmailSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementNotificationRecipientEmail>`.
  RefTo<AzurermApiManagementNotificationRecipientEmail> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `notification_type` attribute.
  TfRef<String> get notificationType =>
      TfRef.attribute<String>(this, 'notification_type');
}
