// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Vertex AI Search (Discovery Engine): data stores, search engines, IAM,
/// schema / serving controls, location CMEK config and third-party data
/// connectors (apply-excluded), and Gemini Enterprise license configs
/// (never_apply — seat subscriptions).
library;

export 'src/discovery_engine/google_discovery_engine_acl_config.dart'
    show
        DiscoveryEngineAclConfigIdpConfig,
        DiscoveryEngineAclConfigIdpConfigExternalIdpConfig,
        DiscoveryEngineAclConfigIdpConfigIdpType,
        GoogleDiscoveryEngineAclConfig;
export 'src/discovery_engine/google_discovery_engine_assistant.dart'
    show
        DiscoveryEngineAssistantCustomerPolicy,
        DiscoveryEngineAssistantCustomerPolicyBannedPhrases,
        DiscoveryEngineAssistantCustomerPolicyModelArmorConfig,
        DiscoveryEngineAssistantGenerationConfig,
        DiscoveryEngineAssistantGenerationConfigSystemInstruction,
        GoogleDiscoveryEngineAssistant;
export 'src/discovery_engine/google_discovery_engine_chat_engine.dart'
    show
        DiscoveryEngineChatEngineChatEngineConfig,
        DiscoveryEngineChatEngineChatEngineConfigAgent,
        DiscoveryEngineChatEngineChatEngineConfigAgentCreationConfig,
        DiscoveryEngineChatEngineChatEngineConfigAgentCreationConfigChoice,
        DiscoveryEngineChatEngineChatEngineConfigAgentDialogflowAgentToLink,
        DiscoveryEngineChatEngineCommonConfig,
        DiscoveryEngineChatEngineIndustryVertical,
        GoogleDiscoveryEngineChatEngine;
export 'src/discovery_engine/google_discovery_engine_cmek_config.dart'
    show
        DiscoveryEngineCmekConfigSingleRegionKeys,
        GoogleDiscoveryEngineCmekConfig;
export 'src/discovery_engine/google_discovery_engine_control.dart'
    show
        DiscoveryEngineControlAction,
        DiscoveryEngineControlActionBoostAction,
        DiscoveryEngineControlActionFilterAction,
        DiscoveryEngineControlActionPromoteAction,
        DiscoveryEngineControlActionRedirectAction,
        DiscoveryEngineControlActionSynonymsAction,
        DiscoveryEngineControlBoostAction,
        DiscoveryEngineControlBoostActionBoost,
        DiscoveryEngineControlBoostActionBoostFixedBoost,
        DiscoveryEngineControlBoostActionBoostInterpolationBoostSpec,
        DiscoveryEngineControlBoostActionInterpolationBoostSpec,
        DiscoveryEngineControlBoostActionInterpolationBoostSpecAttributeType,
        DiscoveryEngineControlBoostActionInterpolationBoostSpecControlPoint,
        DiscoveryEngineControlConditions,
        DiscoveryEngineControlConditionsActiveTimeRange,
        DiscoveryEngineControlConditionsQueryTerms,
        DiscoveryEngineControlFilterAction,
        DiscoveryEngineControlPromoteAction,
        DiscoveryEngineControlPromoteActionSearchLinkPromotion,
        DiscoveryEngineControlRedirectAction,
        DiscoveryEngineControlSolutionType,
        DiscoveryEngineControlSynonymsAction,
        GoogleDiscoveryEngineControl;
export 'src/discovery_engine/google_discovery_engine_data_connector.dart'
    show
        DiscoveryEngineDataConnectorActionConfig,
        DiscoveryEngineDataConnectorBapConfig,
        DiscoveryEngineDataConnectorDestinationConfigs,
        DiscoveryEngineDataConnectorDestinationConfigsDestinations,
        DiscoveryEngineDataConnectorEntities,
        DiscoveryEngineDataConnectorMetadata,
        DiscoveryEngineDataConnectorParams,
        DiscoveryEngineDataConnectorParamsChoice,
        DiscoveryEngineDataConnectorParamsJsonParams,
        GoogleDiscoveryEngineDataConnector;
export 'src/discovery_engine/google_discovery_engine_data_store.dart'
    show
        DiscoveryEngineDataStoreAdvancedSiteSearchConfig,
        DiscoveryEngineDataStoreContentConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigChunkingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigDefaultParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigDefaultParsingConfigDigitalParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigParsingConfigOverrides,
        DiscoveryEngineDataStoreDocumentProcessingConfigParsingConfigOverridesDigitalParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigParsingConfigOverridesLayoutParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfigParsingConfigOverridesOcrParsingConfig,
        DiscoveryEngineDataStoreIndustryVertical,
        GoogleDiscoveryEngineDataStore;
export 'src/discovery_engine/google_discovery_engine_license_config.dart'
    show
        DiscoveryEngineLicenseConfigEndDate,
        DiscoveryEngineLicenseConfigStartDate,
        DiscoveryEngineLicenseConfigSubscriptionTerm,
        DiscoveryEngineLicenseConfigSubscriptionTier,
        GoogleDiscoveryEngineLicenseConfig;
export 'src/discovery_engine/google_discovery_engine_recommendation_engine.dart'
    show
        DiscoveryEngineRecommendationEngineCommonConfig,
        DiscoveryEngineRecommendationEngineIndustryVertical,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfig,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigTrainingState,
        GoogleDiscoveryEngineRecommendationEngine;
export 'src/discovery_engine/google_discovery_engine_schema.dart'
    show GoogleDiscoveryEngineSchema;
export 'src/discovery_engine/google_discovery_engine_search_engine.dart'
    show
        DiscoveryEngineSearchEngineCommonConfig,
        DiscoveryEngineSearchEngineIndustryVertical,
        DiscoveryEngineSearchEngineKnowledgeGraphConfig,
        DiscoveryEngineSearchEngineKnowledgeGraphConfigFeatureConfig,
        DiscoveryEngineSearchEngineSearchEngineConfig,
        DiscoveryEngineSearchEngineSearchEngineConfigRequiredSubscriptionTier,
        DiscoveryEngineSearchEngineSearchTier,
        GoogleDiscoveryEngineSearchEngine;
export 'src/discovery_engine/google_discovery_engine_search_engine_iam_binding.dart'
    show GoogleDiscoveryEngineSearchEngineIamBinding;
export 'src/discovery_engine/google_discovery_engine_search_engine_iam_member.dart'
    show GoogleDiscoveryEngineSearchEngineIamMember;
export 'src/discovery_engine/google_discovery_engine_search_engine_iam_policy.dart'
    show GoogleDiscoveryEngineSearchEngineIamPolicy;
export 'src/discovery_engine/google_discovery_engine_serving_config.dart'
    show GoogleDiscoveryEngineServingConfig;
export 'src/discovery_engine/google_discovery_engine_sitemap.dart'
    show GoogleDiscoveryEngineSitemap;
export 'src/discovery_engine/google_discovery_engine_target_site.dart'
    show
        DiscoveryEngineTargetSiteIndexingStatus,
        DiscoveryEngineTargetSiteType,
        GoogleDiscoveryEngineTargetSite;
export 'src/discovery_engine/google_discovery_engine_user_store.dart'
    show GoogleDiscoveryEngineUserStore;
export 'src/discovery_engine/google_discovery_engine_widget_config.dart'
    show
        DiscoveryEngineWidgetConfigAccessSettings,
        DiscoveryEngineWidgetConfigHomepageSetting,
        DiscoveryEngineWidgetConfigHomepageSettingShortcuts,
        DiscoveryEngineWidgetConfigHomepageSettingShortcutsIcon,
        DiscoveryEngineWidgetConfigUiBranding,
        DiscoveryEngineWidgetConfigUiBrandingLogo,
        DiscoveryEngineWidgetConfigUiSettings,
        DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigs,
        DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFacetField,
        DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMap,
        DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMapDeviceVisibility,
        DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfig,
        DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfigImageSource,
        DiscoveryEngineWidgetConfigUiSettingsInteractionType,
        DiscoveryEngineWidgetConfigUiSettingsResultDescriptionType,
        DiscoveryEngineWidgetConfigUiSettingsSearchAddonSpec,
        GoogleDiscoveryEngineWidgetConfig;
