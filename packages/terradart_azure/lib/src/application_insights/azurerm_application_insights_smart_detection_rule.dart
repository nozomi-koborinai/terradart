// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_application_insights_smart_detection_rule`.
const Set<String> _azurermApplicationInsightsSmartDetectionRuleSensitive =
    <String>{};

/// Factory wrapper for `azurerm_application_insights_smart_detection_rule`.
final class AzurermApplicationInsightsSmartDetectionRule extends Resource {
  static const String tfType =
      'azurerm_application_insights_smart_detection_rule';

  AzurermApplicationInsightsSmartDetectionRule(
    super.localName, {
    TfArg<List<String>>? additionalEmailRecipients,
    required TfArg<String> applicationInsightsId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<bool>? sendEmailsToSubscriptionOwners,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_email_recipients': ?additionalEmailRecipients,
           'application_insights_id': applicationInsightsId,
           'enabled': ?enabled,
           'name': name,
           'send_emails_to_subscription_owners':
               ?sendEmailsToSubscriptionOwners,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApplicationInsightsSmartDetectionRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsSmartDetectionRule>`.
  RefTo<AzurermApplicationInsightsSmartDetectionRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_email_recipients` attribute.
  TfRef<List<String>> get additionalEmailRecipients =>
      TfRef.attribute<List<String>>(this, 'additional_email_recipients');

  /// Reference to `application_insights_id` attribute.
  TfRef<String> get applicationInsightsId =>
      TfRef.attribute<String>(this, 'application_insights_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `send_emails_to_subscription_owners` attribute.
  TfRef<bool> get sendEmailsToSubscriptionOwners =>
      TfRef.attribute<bool>(this, 'send_emails_to_subscription_owners');
}
