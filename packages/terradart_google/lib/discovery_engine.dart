// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Vertex AI Search (Discovery Engine): data stores, search engines, IAM,
/// schema / serving controls, location CMEK config and third-party data
/// connectors (apply-excluded), and Gemini Enterprise license configs
/// (never_apply — seat subscriptions).
library;

export 'src/discovery_engine/google_discovery_engine_acl_config.dart'
    show
        DiscoveryEngineAclConfigExternalIdpConfig,
        DiscoveryEngineAclConfigIdpConfig,
        DiscoveryEngineAclConfigIdpType,
        GoogleDiscoveryEngineAclConfig;
export 'src/discovery_engine/google_discovery_engine_assistant.dart'
    show
        DiscoveryEngineAssistantBannedPhrases,
        DiscoveryEngineAssistantCustomerPolicy,
        DiscoveryEngineAssistantGenerationConfig,
        DiscoveryEngineAssistantModelArmorConfig,
        DiscoveryEngineAssistantSystemInstruction,
        GoogleDiscoveryEngineAssistant;
export 'src/discovery_engine/google_discovery_engine_chat_engine.dart'
    show
        DiscoveryEngineChatEngineAgent,
        DiscoveryEngineChatEngineAgentCreationConfig,
        DiscoveryEngineChatEngineAgentCreationConfigChoice,
        DiscoveryEngineChatEngineAgentDialogflowAgentToLink,
        DiscoveryEngineChatEngineCommonConfig,
        DiscoveryEngineChatEngineConfig,
        DiscoveryEngineChatEngineIndustryVertical,
        GoogleDiscoveryEngineChatEngine;
export 'src/discovery_engine/google_discovery_engine_cmek_config.dart'
    show
        DiscoveryEngineCmekConfigSingleRegionKeys,
        GoogleDiscoveryEngineCmekConfig;
export 'src/discovery_engine/google_discovery_engine_control.dart'
    show
        DiscoveryEngineControlAction,
        DiscoveryEngineControlActiveTimeRange,
        DiscoveryEngineControlAttributeType,
        DiscoveryEngineControlBoost,
        DiscoveryEngineControlBoostAction,
        DiscoveryEngineControlBoostActionChoice,
        DiscoveryEngineControlBoostInterpolationBoostSpec,
        DiscoveryEngineControlConditions,
        DiscoveryEngineControlFilterAction,
        DiscoveryEngineControlFilterActionChoice,
        DiscoveryEngineControlFixedBoost,
        DiscoveryEngineControlInterpolationBoostSpec,
        DiscoveryEngineControlPoint,
        DiscoveryEngineControlPromoteAction,
        DiscoveryEngineControlPromoteActionChoice,
        DiscoveryEngineControlQueryTerms,
        DiscoveryEngineControlRedirectAction,
        DiscoveryEngineControlRedirectActionChoice,
        DiscoveryEngineControlSearchLinkPromotion,
        DiscoveryEngineControlSolutionType,
        DiscoveryEngineControlSynonymsAction,
        DiscoveryEngineControlSynonymsActionChoice,
        GoogleDiscoveryEngineControl;
export 'src/discovery_engine/google_discovery_engine_data_connector.dart'
    show
        DiscoveryEngineDataConnectorActionConfig,
        DiscoveryEngineDataConnectorBapConfig,
        DiscoveryEngineDataConnectorDestinationConfigs,
        DiscoveryEngineDataConnectorDestinations,
        DiscoveryEngineDataConnectorEntities,
        DiscoveryEngineDataConnectorJsonParams,
        DiscoveryEngineDataConnectorMetadata,
        DiscoveryEngineDataConnectorParams,
        DiscoveryEngineDataConnectorParamsChoice,
        GoogleDiscoveryEngineDataConnector;
export 'src/discovery_engine/google_discovery_engine_data_store.dart'
    show
        DiscoveryEngineDataStoreAdvancedSiteSearchConfig,
        DiscoveryEngineDataStoreChunkingConfig,
        DiscoveryEngineDataStoreContentConfig,
        DiscoveryEngineDataStoreDefaultParsingConfig,
        DiscoveryEngineDataStoreDigitalParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfig,
        DiscoveryEngineDataStoreIndustryVertical,
        DiscoveryEngineDataStoreLayoutBasedChunkingConfig,
        DiscoveryEngineDataStoreLayoutParsingConfig,
        DiscoveryEngineDataStoreOcrParsingConfig,
        DiscoveryEngineDataStoreParsingConfigOverrides,
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
        DiscoveryEngineRecommendationEngineFeaturesConfig,
        DiscoveryEngineRecommendationEngineIndustryVertical,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfig,
        DiscoveryEngineRecommendationEngineMostPopularConfig,
        DiscoveryEngineRecommendationEngineOptimizationObjectiveConfig,
        DiscoveryEngineRecommendationEngineRecommendedForYouConfig,
        DiscoveryEngineRecommendationEngineTrainingState,
        GoogleDiscoveryEngineRecommendationEngine;
export 'src/discovery_engine/google_discovery_engine_schema.dart'
    show GoogleDiscoveryEngineSchema;
export 'src/discovery_engine/google_discovery_engine_search_engine.dart'
    show
        DiscoveryEngineSearchEngineCommonConfig,
        DiscoveryEngineSearchEngineConfig,
        DiscoveryEngineSearchEngineFeatureConfig,
        DiscoveryEngineSearchEngineIndustryVertical,
        DiscoveryEngineSearchEngineKnowledgeGraphConfig,
        DiscoveryEngineSearchEngineRequiredSubscriptionTier,
        DiscoveryEngineSearchEngineSearchTier,
        GoogleDiscoveryEngineSearchEngine;
export 'src/discovery_engine/google_discovery_engine_search_engine_iam_binding.dart'
    show
        DiscoveryEngineSearchEngineIamBindingCondition,
        GoogleDiscoveryEngineSearchEngineIamBinding;
export 'src/discovery_engine/google_discovery_engine_search_engine_iam_member.dart'
    show
        DiscoveryEngineSearchEngineIamMemberCondition,
        GoogleDiscoveryEngineSearchEngineIamMember;
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
        DiscoveryEngineWidgetConfigDataStoreUiConfigs,
        DiscoveryEngineWidgetConfigDeviceVisibility,
        DiscoveryEngineWidgetConfigFacetField,
        DiscoveryEngineWidgetConfigFieldsUiComponentsMap,
        DiscoveryEngineWidgetConfigGenerativeAnswerConfig,
        DiscoveryEngineWidgetConfigHomepageSetting,
        DiscoveryEngineWidgetConfigIcon,
        DiscoveryEngineWidgetConfigImageSource,
        DiscoveryEngineWidgetConfigInteractionType,
        DiscoveryEngineWidgetConfigLogo,
        DiscoveryEngineWidgetConfigResultDescriptionType,
        DiscoveryEngineWidgetConfigSearchAddonSpec,
        DiscoveryEngineWidgetConfigShortcuts,
        DiscoveryEngineWidgetConfigUiBranding,
        DiscoveryEngineWidgetConfigUiSettings,
        GoogleDiscoveryEngineWidgetConfig;
