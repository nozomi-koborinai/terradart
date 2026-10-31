// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_email_template`.
const Set<String> _azurermApiManagementEmailTemplateSensitive = <String>{};

/// Api Management Email Template enum for `template_name`.
extension type const ApiManagementEmailTemplateName._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementEmailTemplateName.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementEmailTemplateName.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementEmailTemplateName.arg(TfArg<String> arg) : this._(arg);

  static const accountcloseddeveloper = ApiManagementEmailTemplateName._(
    TfArgLiteral('AccountClosedDeveloper'),
  );
  static const applicationapprovednotificationmessage =
      ApiManagementEmailTemplateName._(
        TfArgLiteral('ApplicationApprovedNotificationMessage'),
      );
  static const confirmsignupidentitydefault = ApiManagementEmailTemplateName._(
    TfArgLiteral('ConfirmSignUpIdentityDefault'),
  );
  static const emailchangeidentitydefault = ApiManagementEmailTemplateName._(
    TfArgLiteral('EmailChangeIdentityDefault'),
  );
  static const inviteusernotificationmessage = ApiManagementEmailTemplateName._(
    TfArgLiteral('InviteUserNotificationMessage'),
  );
  static const newcommentnotificationmessage = ApiManagementEmailTemplateName._(
    TfArgLiteral('NewCommentNotificationMessage'),
  );
  static const newdevelopernotificationmessage =
      ApiManagementEmailTemplateName._(
        TfArgLiteral('NewDeveloperNotificationMessage'),
      );
  static const newissuenotificationmessage = ApiManagementEmailTemplateName._(
    TfArgLiteral('NewIssueNotificationMessage'),
  );
  static const passwordresetbyadminnotificationmessage =
      ApiManagementEmailTemplateName._(
        TfArgLiteral('PasswordResetByAdminNotificationMessage'),
      );
  static const passwordresetidentitydefault = ApiManagementEmailTemplateName._(
    TfArgLiteral('PasswordResetIdentityDefault'),
  );
  static const purchasedevelopernotificationmessage =
      ApiManagementEmailTemplateName._(
        TfArgLiteral('PurchaseDeveloperNotificationMessage'),
      );
  static const quotalimitapproachingdevelopernotificationmessage =
      ApiManagementEmailTemplateName._(
        TfArgLiteral('QuotaLimitApproachingDeveloperNotificationMessage'),
      );
  static const rejectdevelopernotificationmessage =
      ApiManagementEmailTemplateName._(
        TfArgLiteral('RejectDeveloperNotificationMessage'),
      );
  static const requestdevelopernotificationmessage =
      ApiManagementEmailTemplateName._(
        TfArgLiteral('RequestDeveloperNotificationMessage'),
      );

  static const List<ApiManagementEmailTemplateName> values = [
    accountcloseddeveloper,
    applicationapprovednotificationmessage,
    confirmsignupidentitydefault,
    emailchangeidentitydefault,
    inviteusernotificationmessage,
    newcommentnotificationmessage,
    newdevelopernotificationmessage,
    newissuenotificationmessage,
    passwordresetbyadminnotificationmessage,
    passwordresetidentitydefault,
    purchasedevelopernotificationmessage,
    quotalimitapproachingdevelopernotificationmessage,
    rejectdevelopernotificationmessage,
    requestdevelopernotificationmessage,
  ];
}

/// Factory wrapper for `azurerm_api_management_email_template`.
final class AzurermApiManagementEmailTemplate extends Resource {
  static const String tfType = 'azurerm_api_management_email_template';

  AzurermApiManagementEmailTemplate(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> body,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> subject,
    required ApiManagementEmailTemplateName templateName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'body': body,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subject': subject,
           'template_name': templateName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementEmailTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementEmailTemplate>`.
  RefTo<AzurermApiManagementEmailTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subject` attribute.
  TfRef<String> get subject => TfRef.attribute<String>(this, 'subject');

  /// Reference to `template_name` attribute.
  TfRef<String> get templateName =>
      TfRef.attribute<String>(this, 'template_name');
}
