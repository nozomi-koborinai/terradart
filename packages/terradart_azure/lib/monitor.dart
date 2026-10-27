// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager monitor resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_monitor_action_group.dart'
    show DataAzurermMonitorActionGroup;
export 'src/data/azurerm_monitor_data_collection_endpoint.dart'
    show DataAzurermMonitorDataCollectionEndpoint;
export 'src/data/azurerm_monitor_data_collection_rule.dart'
    show DataAzurermMonitorDataCollectionRule;
export 'src/data/azurerm_monitor_diagnostic_categories.dart'
    show DataAzurermMonitorDiagnosticCategories;
export 'src/data/azurerm_monitor_scheduled_query_rules_alert.dart'
    show DataAzurermMonitorScheduledQueryRulesAlert;
export 'src/data/azurerm_monitor_scheduled_query_rules_log.dart'
    show DataAzurermMonitorScheduledQueryRulesLog;
export 'src/data/azurerm_monitor_workspace.dart'
    show DataAzurermMonitorWorkspace;
export 'src/monitor/azurerm_monitor_aad_diagnostic_setting.dart'
    show
        AzurermMonitorAadDiagnosticSetting,
        MonitorAadDiagnosticSettingEnabledLog;
export 'src/monitor/azurerm_monitor_action_group.dart'
    show
        AzurermMonitorActionGroup,
        MonitorActionGroupAadAuth,
        MonitorActionGroupArmRoleReceiver,
        MonitorActionGroupAutomationRunbookReceiver,
        MonitorActionGroupAzureAppPushReceiver,
        MonitorActionGroupAzureFunctionReceiver,
        MonitorActionGroupEmailReceiver,
        MonitorActionGroupEventHubReceiver,
        MonitorActionGroupItsmReceiver,
        MonitorActionGroupLogicAppReceiver,
        MonitorActionGroupSmsReceiver,
        MonitorActionGroupVoiceReceiver,
        MonitorActionGroupWebhookReceiver;
export 'src/monitor/azurerm_monitor_activity_log_alert.dart'
    show
        AzurermMonitorActivityLogAlert,
        MonitorActivityLogAlertAction,
        MonitorActivityLogAlertCategory,
        MonitorActivityLogAlertCriteria,
        MonitorActivityLogAlertCriteriaCallerOrResourceHealthOrServiceHealth,
        MonitorActivityLogAlertCriteriaCallerOrResourceHealthOrServiceHealthCaller,
        MonitorActivityLogAlertCriteriaCallerOrResourceHealthOrServiceHealthChoice,
        MonitorActivityLogAlertCriteriaCallerOrResourceHealthOrServiceHealthResourceHealth,
        MonitorActivityLogAlertCriteriaLevel,
        MonitorActivityLogAlertCriteriaLevelChoice,
        MonitorActivityLogAlertCriteriaLevelLevels,
        MonitorActivityLogAlertCriteriaStatusOrStatuses,
        MonitorActivityLogAlertCriteriaStatusOrStatusesChoice,
        MonitorActivityLogAlertCriteriaStatusOrStatusesStatus,
        MonitorActivityLogAlertCurrent,
        MonitorActivityLogAlertEvents,
        MonitorActivityLogAlertLevel,
        MonitorActivityLogAlertLevels,
        MonitorActivityLogAlertPrevious,
        MonitorActivityLogAlertReason,
        MonitorActivityLogAlertRecommendationCategory,
        MonitorActivityLogAlertRecommendationImpact,
        MonitorActivityLogAlertResourceGroup,
        MonitorActivityLogAlertResourceGroupChoice,
        MonitorActivityLogAlertResourceGroupResourceGroups,
        MonitorActivityLogAlertResourceHealth,
        MonitorActivityLogAlertResourceId,
        MonitorActivityLogAlertResourceIdChoice,
        MonitorActivityLogAlertResourceIdResourceIds,
        MonitorActivityLogAlertResourceProvider,
        MonitorActivityLogAlertResourceProviderChoice,
        MonitorActivityLogAlertResourceProviderResourceProviders,
        MonitorActivityLogAlertResourceType,
        MonitorActivityLogAlertResourceTypeChoice,
        MonitorActivityLogAlertResourceTypeResourceTypes,
        MonitorActivityLogAlertServiceHealth,
        MonitorActivityLogAlertSub,
        MonitorActivityLogAlertSubStatus,
        MonitorActivityLogAlertSubStatuses;
export 'src/monitor/azurerm_monitor_alert_processing_rule_action_group.dart'
    show
        AzurermMonitorAlertProcessingRuleActionGroup,
        MonitorAlertProcessingRuleActionGroupAlertContext,
        MonitorAlertProcessingRuleActionGroupAlertRuleId,
        MonitorAlertProcessingRuleActionGroupAlertRuleName,
        MonitorAlertProcessingRuleActionGroupCondition,
        MonitorAlertProcessingRuleActionGroupConditionDescription,
        MonitorAlertProcessingRuleActionGroupDaily,
        MonitorAlertProcessingRuleActionGroupMonitorCondition,
        MonitorAlertProcessingRuleActionGroupMonitorService,
        MonitorAlertProcessingRuleActionGroupMonthly,
        MonitorAlertProcessingRuleActionGroupRecurrence,
        MonitorAlertProcessingRuleActionGroupSchedule,
        MonitorAlertProcessingRuleActionGroupSeverity,
        MonitorAlertProcessingRuleActionGroupSignalType,
        MonitorAlertProcessingRuleActionGroupTargetResource,
        MonitorAlertProcessingRuleActionGroupTargetResourceGroup,
        MonitorAlertProcessingRuleActionGroupTargetResourceType,
        MonitorAlertProcessingRuleActionGroupWeekly;
export 'src/monitor/azurerm_monitor_alert_processing_rule_suppression.dart'
    show
        AzurermMonitorAlertProcessingRuleSuppression,
        MonitorAlertProcessingRuleSuppressionAlertContext,
        MonitorAlertProcessingRuleSuppressionAlertRuleId,
        MonitorAlertProcessingRuleSuppressionAlertRuleName,
        MonitorAlertProcessingRuleSuppressionCondition,
        MonitorAlertProcessingRuleSuppressionConditionDescription,
        MonitorAlertProcessingRuleSuppressionDaily,
        MonitorAlertProcessingRuleSuppressionMonitorCondition,
        MonitorAlertProcessingRuleSuppressionMonitorService,
        MonitorAlertProcessingRuleSuppressionMonthly,
        MonitorAlertProcessingRuleSuppressionRecurrence,
        MonitorAlertProcessingRuleSuppressionSchedule,
        MonitorAlertProcessingRuleSuppressionSeverity,
        MonitorAlertProcessingRuleSuppressionSignalType,
        MonitorAlertProcessingRuleSuppressionTargetResource,
        MonitorAlertProcessingRuleSuppressionTargetResourceGroup,
        MonitorAlertProcessingRuleSuppressionTargetResourceType,
        MonitorAlertProcessingRuleSuppressionWeekly;
export 'src/monitor/azurerm_monitor_alert_prometheus_rule_group.dart'
    show
        AzurermMonitorAlertPrometheusRuleGroup,
        MonitorAlertPrometheusRuleGroupAction,
        MonitorAlertPrometheusRuleGroupAlertResolution,
        MonitorAlertPrometheusRuleGroupRule;
export 'src/monitor/azurerm_monitor_autoscale_setting.dart'
    show
        AzurermMonitorAutoscaleSetting,
        MonitorAutoscaleSettingCapacity,
        MonitorAutoscaleSettingDays,
        MonitorAutoscaleSettingDimensions,
        MonitorAutoscaleSettingDimensionsOperator,
        MonitorAutoscaleSettingEmail,
        MonitorAutoscaleSettingFixedDate,
        MonitorAutoscaleSettingMetricTrigger,
        MonitorAutoscaleSettingNotification,
        MonitorAutoscaleSettingOperator,
        MonitorAutoscaleSettingPredictive,
        MonitorAutoscaleSettingProfile,
        MonitorAutoscaleSettingRecurrence,
        MonitorAutoscaleSettingRule,
        MonitorAutoscaleSettingScaleAction,
        MonitorAutoscaleSettingTimeAggregation,
        MonitorAutoscaleSettingType,
        MonitorAutoscaleSettingWebhook;
export 'src/monitor/azurerm_monitor_data_collection_endpoint.dart'
    show
        AzurermMonitorDataCollectionEndpoint,
        MonitorDataCollectionEndpointKind;
export 'src/monitor/azurerm_monitor_data_collection_rule.dart'
    show
        AzurermMonitorDataCollectionRule,
        MonitorDataCollectionRuleAzureMonitorMetrics,
        MonitorDataCollectionRuleColumn,
        MonitorDataCollectionRuleDataFlow,
        MonitorDataCollectionRuleDataImport,
        MonitorDataCollectionRuleDataSources,
        MonitorDataCollectionRuleDestinations,
        MonitorDataCollectionRuleEventHub,
        MonitorDataCollectionRuleEventHubDataSource,
        MonitorDataCollectionRuleEventHubDirect,
        MonitorDataCollectionRuleExtension,
        MonitorDataCollectionRuleFacilityNames,
        MonitorDataCollectionRuleFormat,
        MonitorDataCollectionRuleIdentity,
        MonitorDataCollectionRuleIisLog,
        MonitorDataCollectionRuleKind,
        MonitorDataCollectionRuleLabelIncludeFilter,
        MonitorDataCollectionRuleLogAnalytics,
        MonitorDataCollectionRuleLogFile,
        MonitorDataCollectionRuleLogLevels,
        MonitorDataCollectionRuleMonitorAccount,
        MonitorDataCollectionRulePerformanceCounter,
        MonitorDataCollectionRulePlatformTelemetry,
        MonitorDataCollectionRulePrometheusForwarder,
        MonitorDataCollectionRuleRecordStartTimestampFormat,
        MonitorDataCollectionRuleSettings,
        MonitorDataCollectionRuleStorageBlob,
        MonitorDataCollectionRuleStorageBlobDirect,
        MonitorDataCollectionRuleStorageTableDirect,
        MonitorDataCollectionRuleStreamDeclaration,
        MonitorDataCollectionRuleSyslog,
        MonitorDataCollectionRuleText,
        MonitorDataCollectionRuleType,
        MonitorDataCollectionRuleWindowsEventLog,
        MonitorDataCollectionRuleWindowsFirewallLog;
export 'src/monitor/azurerm_monitor_data_collection_rule_association.dart'
    show
        AzurermMonitorDataCollectionRuleAssociation,
        MonitorDataCollectionRuleAssociationDataCollection,
        MonitorDataCollectionRuleAssociationDataCollectionEndpointId,
        MonitorDataCollectionRuleAssociationDataCollectionRuleId;
export 'src/monitor/azurerm_monitor_diagnostic_setting.dart'
    show
        AzurermMonitorDiagnosticSetting,
        MonitorDiagnosticSettingEnabledLog,
        MonitorDiagnosticSettingEnabledMetric,
        MonitorDiagnosticSettingLogAnalyticsDestinationType;
export 'src/monitor/azurerm_monitor_metric_alert.dart'
    show
        AzurermMonitorMetricAlert,
        MonitorMetricAlertAction,
        MonitorMetricAlertAggregation,
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria,
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria,
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaApplicationInsightsWebTestLocationAvailabilityCriteria,
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaChoice,
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaOption,
        MonitorMetricAlertCriteria,
        MonitorMetricAlertCriteriaOperator,
        MonitorMetricAlertDimension,
        MonitorMetricAlertDimensionOperator,
        MonitorMetricAlertDynamicCriteria,
        MonitorMetricAlertDynamicCriteriaOperator,
        MonitorMetricAlertFrequency,
        MonitorMetricAlertSensitivity,
        MonitorMetricAlertWindowSize;
export 'src/monitor/azurerm_monitor_private_link_scope.dart'
    show
        AzurermMonitorPrivateLinkScope,
        MonitorPrivateLinkScopeIngestionAccessMode,
        MonitorPrivateLinkScopeQueryAccessMode;
export 'src/monitor/azurerm_monitor_private_link_scoped_service.dart'
    show AzurermMonitorPrivateLinkScopedService;
export 'src/monitor/azurerm_monitor_scheduled_query_rules_alert.dart'
    show
        AzurermMonitorScheduledQueryRulesAlert,
        MonitorScheduledQueryRulesAlertAction,
        MonitorScheduledQueryRulesAlertAutoMitigationEnabledOrThrottling,
        MonitorScheduledQueryRulesAlertAutoMitigationEnabledOrThrottlingAutoMitigationEnabled,
        MonitorScheduledQueryRulesAlertAutoMitigationEnabledOrThrottlingChoice,
        MonitorScheduledQueryRulesAlertMetricTrigger,
        MonitorScheduledQueryRulesAlertMetricTriggerType,
        MonitorScheduledQueryRulesAlertOperator,
        MonitorScheduledQueryRulesAlertQueryType,
        MonitorScheduledQueryRulesAlertTrigger;
export 'src/monitor/azurerm_monitor_scheduled_query_rules_alert_v2.dart'
    show
        AzurermMonitorScheduledQueryRulesAlertV2,
        MonitorScheduledQueryRulesAlertV2Action,
        MonitorScheduledQueryRulesAlertV2Criteria,
        MonitorScheduledQueryRulesAlertV2Dimension,
        MonitorScheduledQueryRulesAlertV2EvaluationFrequency,
        MonitorScheduledQueryRulesAlertV2FailingPeriods,
        MonitorScheduledQueryRulesAlertV2Identity,
        MonitorScheduledQueryRulesAlertV2MuteActionsAfterAlertDuration,
        MonitorScheduledQueryRulesAlertV2Operator,
        MonitorScheduledQueryRulesAlertV2QueryTimeRangeOverride,
        MonitorScheduledQueryRulesAlertV2TimeAggregationMethod,
        MonitorScheduledQueryRulesAlertV2WindowDuration;
export 'src/monitor/azurerm_monitor_scheduled_query_rules_log.dart'
    show
        AzurermMonitorScheduledQueryRulesLog,
        MonitorScheduledQueryRulesLogCriteria,
        MonitorScheduledQueryRulesLogDimension;
export 'src/monitor/azurerm_monitor_smart_detector_alert_rule.dart'
    show
        AzurermMonitorSmartDetectorAlertRule,
        MonitorSmartDetectorAlertRuleActionGroup,
        MonitorSmartDetectorAlertRuleDetectorType,
        MonitorSmartDetectorAlertRuleSeverity;
export 'src/monitor/azurerm_monitor_workspace.dart'
    show AzurermMonitorWorkspace;
