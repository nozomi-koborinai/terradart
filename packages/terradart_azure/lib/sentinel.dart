// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager sentinel resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_sentinel_alert_rule.dart'
    show DataAzurermSentinelAlertRule;
export 'src/data/azurerm_sentinel_alert_rule_anomaly.dart'
    show DataAzurermSentinelAlertRuleAnomaly;
export 'src/data/azurerm_sentinel_alert_rule_template.dart'
    show DataAzurermSentinelAlertRuleTemplate;
export 'src/sentinel/azurerm_sentinel_alert_rule_anomaly_built_in.dart'
    show
        AzurermSentinelAlertRuleAnomalyBuiltIn,
        SentinelAlertRuleAnomalyBuiltInDisplayNameOrName,
        SentinelAlertRuleAnomalyBuiltInDisplayNameOrNameChoice,
        SentinelAlertRuleAnomalyBuiltInDisplayNameOrNameDisplayName,
        SentinelAlertRuleAnomalyBuiltInMode;
export 'src/sentinel/azurerm_sentinel_alert_rule_anomaly_duplicate.dart'
    show
        AzurermSentinelAlertRuleAnomalyDuplicate,
        SentinelAlertRuleAnomalyDuplicateMode,
        SentinelAlertRuleAnomalyDuplicateMultiSelectObservation,
        SentinelAlertRuleAnomalyDuplicatePrioritizedExcludeObservation,
        SentinelAlertRuleAnomalyDuplicateSingleSelectObservation,
        SentinelAlertRuleAnomalyDuplicateThresholdObservation;
export 'src/sentinel/azurerm_sentinel_alert_rule_fusion.dart'
    show
        AzurermSentinelAlertRuleFusion,
        SentinelAlertRuleFusionSeveritiesAllowed,
        SentinelAlertRuleFusionSource,
        SentinelAlertRuleFusionSubType;
export 'src/sentinel/azurerm_sentinel_alert_rule_machine_learning_behavior_analytics.dart'
    show AzurermSentinelAlertRuleMachineLearningBehaviorAnalytics;
export 'src/sentinel/azurerm_sentinel_alert_rule_ms_security_incident.dart'
    show
        AzurermSentinelAlertRuleMsSecurityIncident,
        SentinelAlertRuleMsSecurityIncidentProductFilter,
        SentinelAlertRuleMsSecurityIncidentSeverityFilter;
export 'src/sentinel/azurerm_sentinel_alert_rule_nrt.dart'
    show
        AzurermSentinelAlertRuleNrt,
        SentinelAlertRuleNrtAggregationMethod,
        SentinelAlertRuleNrtAlertDetailsOverride,
        SentinelAlertRuleNrtByAlertDetails,
        SentinelAlertRuleNrtByEntities,
        SentinelAlertRuleNrtDynamicProperty,
        SentinelAlertRuleNrtDynamicPropertyName,
        SentinelAlertRuleNrtEntityMapping,
        SentinelAlertRuleNrtEntityMatchingMethod,
        SentinelAlertRuleNrtEntityType,
        SentinelAlertRuleNrtEventGrouping,
        SentinelAlertRuleNrtFieldMapping,
        SentinelAlertRuleNrtGrouping,
        SentinelAlertRuleNrtIncident,
        SentinelAlertRuleNrtSentinelEntityMapping,
        SentinelAlertRuleNrtSeverity,
        SentinelAlertRuleNrtTactics;
export 'src/sentinel/azurerm_sentinel_alert_rule_scheduled.dart'
    show
        AzurermSentinelAlertRuleScheduled,
        SentinelAlertRuleScheduledAggregationMethod,
        SentinelAlertRuleScheduledAlertDetailsOverride,
        SentinelAlertRuleScheduledByAlertDetails,
        SentinelAlertRuleScheduledByEntities,
        SentinelAlertRuleScheduledDynamicProperty,
        SentinelAlertRuleScheduledDynamicPropertyName,
        SentinelAlertRuleScheduledEntityMapping,
        SentinelAlertRuleScheduledEntityMatchingMethod,
        SentinelAlertRuleScheduledEntityType,
        SentinelAlertRuleScheduledEventGrouping,
        SentinelAlertRuleScheduledFieldMapping,
        SentinelAlertRuleScheduledGrouping,
        SentinelAlertRuleScheduledIncident,
        SentinelAlertRuleScheduledSentinelEntityMapping,
        SentinelAlertRuleScheduledSeverity,
        SentinelAlertRuleScheduledTactics,
        SentinelAlertRuleScheduledTriggerOperator;
export 'src/sentinel/azurerm_sentinel_alert_rule_threat_intelligence.dart'
    show AzurermSentinelAlertRuleThreatIntelligence;
export 'src/sentinel/azurerm_sentinel_automation_rule.dart'
    show
        AzurermSentinelAutomationRule,
        SentinelAutomationRuleActionIncident,
        SentinelAutomationRuleActionIncidentTask,
        SentinelAutomationRuleActionPlaybook;
export 'src/sentinel/azurerm_sentinel_data_connector_aws_cloud_trail.dart'
    show AzurermSentinelDataConnectorAwsCloudTrail;
export 'src/sentinel/azurerm_sentinel_data_connector_aws_s3.dart'
    show AzurermSentinelDataConnectorAwsS3;
export 'src/sentinel/azurerm_sentinel_data_connector_azure_active_directory.dart'
    show AzurermSentinelDataConnectorAzureActiveDirectory;
export 'src/sentinel/azurerm_sentinel_data_connector_azure_advanced_threat_protection.dart'
    show AzurermSentinelDataConnectorAzureAdvancedThreatProtection;
export 'src/sentinel/azurerm_sentinel_data_connector_azure_security_center.dart'
    show AzurermSentinelDataConnectorAzureSecurityCenter;
export 'src/sentinel/azurerm_sentinel_data_connector_dynamics_365.dart'
    show AzurermSentinelDataConnectorDynamics365;
export 'src/sentinel/azurerm_sentinel_data_connector_iot.dart'
    show AzurermSentinelDataConnectorIot;
export 'src/sentinel/azurerm_sentinel_data_connector_microsoft_cloud_app_security.dart'
    show AzurermSentinelDataConnectorMicrosoftCloudAppSecurity;
export 'src/sentinel/azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection.dart'
    show AzurermSentinelDataConnectorMicrosoftDefenderAdvancedThreatProtection;
export 'src/sentinel/azurerm_sentinel_data_connector_microsoft_threat_intelligence.dart'
    show AzurermSentinelDataConnectorMicrosoftThreatIntelligence;
export 'src/sentinel/azurerm_sentinel_data_connector_microsoft_threat_protection.dart'
    show AzurermSentinelDataConnectorMicrosoftThreatProtection;
export 'src/sentinel/azurerm_sentinel_data_connector_office_365.dart'
    show AzurermSentinelDataConnectorOffice365;
export 'src/sentinel/azurerm_sentinel_data_connector_office_365_project.dart'
    show AzurermSentinelDataConnectorOffice365Project;
export 'src/sentinel/azurerm_sentinel_data_connector_office_atp.dart'
    show AzurermSentinelDataConnectorOfficeAtp;
export 'src/sentinel/azurerm_sentinel_data_connector_office_irm.dart'
    show AzurermSentinelDataConnectorOfficeIrm;
export 'src/sentinel/azurerm_sentinel_data_connector_office_power_bi.dart'
    show AzurermSentinelDataConnectorOfficePowerBi;
export 'src/sentinel/azurerm_sentinel_data_connector_threat_intelligence.dart'
    show AzurermSentinelDataConnectorThreatIntelligence;
export 'src/sentinel/azurerm_sentinel_data_connector_threat_intelligence_taxii.dart'
    show
        AzurermSentinelDataConnectorThreatIntelligenceTaxii,
        SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency;
export 'src/sentinel/azurerm_sentinel_log_analytics_workspace_onboarding.dart'
    show AzurermSentinelLogAnalyticsWorkspaceOnboarding;
export 'src/sentinel/azurerm_sentinel_metadata.dart'
    show
        AzurermSentinelMetadata,
        SentinelMetadataAuthor,
        SentinelMetadataCategory,
        SentinelMetadataKind,
        SentinelMetadataSource,
        SentinelMetadataSourceKind,
        SentinelMetadataSupport,
        SentinelMetadataThreatAnalysisTactics,
        SentinelMetadataTier;
export 'src/sentinel/azurerm_sentinel_threat_intelligence_indicator.dart'
    show
        AzurermSentinelThreatIntelligenceIndicator,
        SentinelThreatIntelligenceIndicatorExternalReference,
        SentinelThreatIntelligenceIndicatorGranularMarking,
        SentinelThreatIntelligenceIndicatorKillChainPhase,
        SentinelThreatIntelligenceIndicatorPatternType;
export 'src/sentinel/azurerm_sentinel_watchlist.dart'
    show AzurermSentinelWatchlist;
export 'src/sentinel/azurerm_sentinel_watchlist_item.dart'
    show AzurermSentinelWatchlistItem;
