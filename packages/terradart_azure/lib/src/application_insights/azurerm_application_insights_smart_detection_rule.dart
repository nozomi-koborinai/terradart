// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_application_insights_smart_detection_rule`.
const Set<String> _azurermApplicationInsightsSmartDetectionRuleSensitive =
    <String>{};

/// Application Insights Smart Detection Rule enum for `name`.
extension type const ApplicationInsightsSmartDetectionRuleName._(
  TfArg<String> _
) implements TfArg<String> {
  ApplicationInsightsSmartDetectionRuleName.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationInsightsSmartDetectionRuleName.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationInsightsSmartDetectionRuleName.arg(TfArg<String> arg)
    : this._(arg);

  static const slowPageLoadTime = ApplicationInsightsSmartDetectionRuleName._(
    TfArgLiteral('Slow page load time'),
  );
  static const slowServerResponseTime =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Slow server response time'),
      );
  static const longDependencyDuration =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Long dependency duration'),
      );
  static const degradationInServerResponseTime =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Degradation in server response time'),
      );
  static const degradationInDependencyDuration =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Degradation in dependency duration'),
      );
  static const degradationInTraceSeverityRatio =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Degradation in trace severity ratio'),
      );
  static const abnormalRiseInExceptionVolume =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Abnormal rise in exception volume'),
      );
  static const potentialMemoryLeakDetected =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Potential memory leak detected'),
      );
  static const potentialSecurityIssueDetected =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Potential security issue detected'),
      );
  static const abnormalRiseInDailyDataVolume =
      ApplicationInsightsSmartDetectionRuleName._(
        TfArgLiteral('Abnormal rise in daily data volume'),
      );

  static const List<ApplicationInsightsSmartDetectionRuleName> values = [
    slowPageLoadTime,
    slowServerResponseTime,
    longDependencyDuration,
    degradationInServerResponseTime,
    degradationInDependencyDuration,
    degradationInTraceSeverityRatio,
    abnormalRiseInExceptionVolume,
    potentialMemoryLeakDetected,
    potentialSecurityIssueDetected,
    abnormalRiseInDailyDataVolume,
  ];
}

/// Factory wrapper for `azurerm_application_insights_smart_detection_rule`.
final class AzurermApplicationInsightsSmartDetectionRule extends Resource {
  static const String tfType =
      'azurerm_application_insights_smart_detection_rule';

  AzurermApplicationInsightsSmartDetectionRule(
    super.localName, {
    TfArg<List<String>>? additionalEmailRecipients,
    required TfArg<String> applicationInsightsId,
    TfArg<bool>? enabled,
    required ApplicationInsightsSmartDetectionRuleName name,
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
