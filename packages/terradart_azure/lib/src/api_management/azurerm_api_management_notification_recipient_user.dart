// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_notification_recipient_user`.
const Set<String> _azurermApiManagementNotificationRecipientUserSensitive =
    <String>{};

/// Api Management Notification Recipient User Notification enum for `notification_type`.
extension type const ApiManagementNotificationRecipientUserNotificationType._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementNotificationRecipientUserNotificationType.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementNotificationRecipientUserNotificationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApiManagementNotificationRecipientUserNotificationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const accountclosedpublisher =
      ApiManagementNotificationRecipientUserNotificationType._(
        TfArgLiteral('AccountClosedPublisher'),
      );
  static const bcc = ApiManagementNotificationRecipientUserNotificationType._(
    TfArgLiteral('BCC'),
  );
  static const newapplicationnotificationmessage =
      ApiManagementNotificationRecipientUserNotificationType._(
        TfArgLiteral('NewApplicationNotificationMessage'),
      );
  static const newissuepublishernotificationmessage =
      ApiManagementNotificationRecipientUserNotificationType._(
        TfArgLiteral('NewIssuePublisherNotificationMessage'),
      );
  static const purchasepublishernotificationmessage =
      ApiManagementNotificationRecipientUserNotificationType._(
        TfArgLiteral('PurchasePublisherNotificationMessage'),
      );
  static const quotalimitapproachingpublishernotificationmessage =
      ApiManagementNotificationRecipientUserNotificationType._(
        TfArgLiteral('QuotaLimitApproachingPublisherNotificationMessage'),
      );
  static const requestpublishernotificationmessage =
      ApiManagementNotificationRecipientUserNotificationType._(
        TfArgLiteral('RequestPublisherNotificationMessage'),
      );

  static const List<ApiManagementNotificationRecipientUserNotificationType>
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

/// Factory wrapper for `azurerm_api_management_notification_recipient_user`.
final class AzurermApiManagementNotificationRecipientUser extends Resource {
  static const String tfType =
      'azurerm_api_management_notification_recipient_user';

  AzurermApiManagementNotificationRecipientUser(
    super.localName, {
    required TfArg<String> apiManagementId,
    required ApiManagementNotificationRecipientUserNotificationType
    notificationType,
    required TfArg<String> userId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'notification_type': notificationType,
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementNotificationRecipientUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementNotificationRecipientUser>`.
  RefTo<AzurermApiManagementNotificationRecipientUser> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `notification_type` attribute.
  TfRef<String> get notificationType =>
      TfRef.attribute<String>(this, 'notification_type');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
