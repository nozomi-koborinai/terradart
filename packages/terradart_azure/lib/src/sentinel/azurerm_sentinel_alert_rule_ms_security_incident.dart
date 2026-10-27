// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_ms_security_incident`.
const Set<String> _azurermSentinelAlertRuleMsSecurityIncidentSensitive =
    <String>{};

/// Sentinel Alert Rule Ms Security Incident Product enum for `product_filter`.
extension type const SentinelAlertRuleMsSecurityIncidentProductFilter._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelAlertRuleMsSecurityIncidentProductFilter.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleMsSecurityIncidentProductFilter.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleMsSecurityIncidentProductFilter.arg(TfArg<String> arg)
    : this._(arg);

  static const azureActiveDirectoryIdentityProtection =
      SentinelAlertRuleMsSecurityIncidentProductFilter._(
        TfArgLiteral('Azure Active Directory Identity Protection'),
      );
  static const azureAdvancedThreatProtection =
      SentinelAlertRuleMsSecurityIncidentProductFilter._(
        TfArgLiteral('Azure Advanced Threat Protection'),
      );
  static const azureSecurityCenter =
      SentinelAlertRuleMsSecurityIncidentProductFilter._(
        TfArgLiteral('Azure Security Center'),
      );
  static const azureSecurityCenterForIot =
      SentinelAlertRuleMsSecurityIncidentProductFilter._(
        TfArgLiteral('Azure Security Center for IoT'),
      );
  static const microsoftCloudAppSecurity =
      SentinelAlertRuleMsSecurityIncidentProductFilter._(
        TfArgLiteral('Microsoft Cloud App Security'),
      );
  static const microsoftDefenderAdvancedThreatProtection =
      SentinelAlertRuleMsSecurityIncidentProductFilter._(
        TfArgLiteral('Microsoft Defender Advanced Threat Protection'),
      );
  static const office365AdvancedThreatProtection =
      SentinelAlertRuleMsSecurityIncidentProductFilter._(
        TfArgLiteral('Office 365 Advanced Threat Protection'),
      );

  static const List<SentinelAlertRuleMsSecurityIncidentProductFilter> values = [
    azureActiveDirectoryIdentityProtection,
    azureAdvancedThreatProtection,
    azureSecurityCenter,
    azureSecurityCenterForIot,
    microsoftCloudAppSecurity,
    microsoftDefenderAdvancedThreatProtection,
    office365AdvancedThreatProtection,
  ];
}

/// Sentinel Alert Rule Ms Security Incident Severity enum for `severity_filter`.
extension type const SentinelAlertRuleMsSecurityIncidentSeverityFilter._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelAlertRuleMsSecurityIncidentSeverityFilter.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleMsSecurityIncidentSeverityFilter.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleMsSecurityIncidentSeverityFilter.arg(TfArg<String> arg)
    : this._(arg);

  static const high = SentinelAlertRuleMsSecurityIncidentSeverityFilter._(
    TfArgLiteral('High'),
  );
  static const informational =
      SentinelAlertRuleMsSecurityIncidentSeverityFilter._(
        TfArgLiteral('Informational'),
      );
  static const low = SentinelAlertRuleMsSecurityIncidentSeverityFilter._(
    TfArgLiteral('Low'),
  );
  static const medium = SentinelAlertRuleMsSecurityIncidentSeverityFilter._(
    TfArgLiteral('Medium'),
  );

  static const List<SentinelAlertRuleMsSecurityIncidentSeverityFilter> values =
      [high, informational, low, medium];
}

/// Factory wrapper for `azurerm_sentinel_alert_rule_ms_security_incident`.
final class AzurermSentinelAlertRuleMsSecurityIncident extends Resource {
  static const String tfType =
      'azurerm_sentinel_alert_rule_ms_security_incident';

  AzurermSentinelAlertRuleMsSecurityIncident(
    super.localName, {
    TfArg<String>? alertRuleTemplateGuid,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<List<String>>? displayNameExcludeFilter,
    TfArg<List<String>>? displayNameFilter,
    TfArg<bool>? enabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    required SentinelAlertRuleMsSecurityIncidentProductFilter productFilter,
    required List<SentinelAlertRuleMsSecurityIncidentSeverityFilter>
    severityFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alert_rule_template_guid': ?alertRuleTemplateGuid,
           'description': ?description,
           'display_name': displayName,
           'display_name_exclude_filter': ?displayNameExcludeFilter,
           'display_name_filter': ?displayNameFilter,
           'enabled': ?enabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'product_filter': productFilter,
           'severity_filter': TfArg.literal([
             for (final e in severityFilter) e.toTfJson(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelAlertRuleMsSecurityIncidentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAlertRuleMsSecurityIncident>`.
  RefTo<AzurermSentinelAlertRuleMsSecurityIncident> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alert_rule_template_guid` attribute.
  TfRef<String> get alertRuleTemplateGuid =>
      TfRef.attribute<String>(this, 'alert_rule_template_guid');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `display_name_exclude_filter` attribute.
  TfRef<List<String>> get displayNameExcludeFilter =>
      TfRef.attribute<List<String>>(this, 'display_name_exclude_filter');

  /// Reference to `display_name_filter` attribute.
  TfRef<List<String>> get displayNameFilter =>
      TfRef.attribute<List<String>>(this, 'display_name_filter');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `product_filter` attribute.
  TfRef<String> get productFilter =>
      TfRef.attribute<String>(this, 'product_filter');

  /// Reference to `severity_filter` attribute.
  TfRef<List<String>> get severityFilter =>
      TfRef.attribute<List<String>>(this, 'severity_filter');
}
