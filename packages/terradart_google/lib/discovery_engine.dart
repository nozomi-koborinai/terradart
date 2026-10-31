// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Vertex AI Search (Discovery Engine): data stores, search engines, IAM,
/// schema / serving controls, location CMEK config and third-party data
/// connectors (apply-excluded), and Gemini Enterprise license configs
/// (never_apply — seat subscriptions).
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/google_discovery_engine_data_store.dart'
    show
        DataDiscoveryEngineDataStoreLocation,
        DataGoogleDiscoveryEngineDataStore;
export 'src/data/google_discovery_engine_data_stores.dart'
    show
        DataDiscoveryEngineDataStoresLocation,
        DataGoogleDiscoveryEngineDataStores;
export 'src/data/google_discovery_engine_search_engine_iam_policy.dart'
    show DataGoogleDiscoveryEngineSearchEngineIamPolicy;
export 'src/discovery_engine/google_discovery_engine_acl_config.dart'
    show
        DiscoveryEngineAclConfigExternalIdpConfig,
        DiscoveryEngineAclConfigIdpConfig,
        DiscoveryEngineAclConfigIdpType,
        DiscoveryEngineAclConfigLocation,
        GoogleDiscoveryEngineAclConfig;
export 'src/discovery_engine/google_discovery_engine_assistant.dart'
    show
        DiscoveryEngineAssistantBannedPhrases,
        DiscoveryEngineAssistantCustomerPolicy,
        DiscoveryEngineAssistantFailureMode,
        DiscoveryEngineAssistantGenerationConfig,
        DiscoveryEngineAssistantLocation,
        DiscoveryEngineAssistantMatchType,
        DiscoveryEngineAssistantModelArmorConfig,
        DiscoveryEngineAssistantSystemInstruction,
        DiscoveryEngineAssistantWebGroundingType,
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
        DiscoveryEngineCmekConfigLocation,
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
        DiscoveryEngineControlInterpolationType,
        DiscoveryEngineControlLocation,
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
        DiscoveryEngineControlUseCases,
        GoogleDiscoveryEngineControl;
export 'src/discovery_engine/google_discovery_engine_data_connector.dart'
    show
        DiscoveryEngineDataConnectorActionConfig,
        DiscoveryEngineDataConnectorBapConfig,
        DiscoveryEngineDataConnectorDestinationConfigs,
        DiscoveryEngineDataConnectorDestinations,
        DiscoveryEngineDataConnectorEnabledActions,
        DiscoveryEngineDataConnectorEntities,
        DiscoveryEngineDataConnectorEntityName,
        DiscoveryEngineDataConnectorJsonParams,
        DiscoveryEngineDataConnectorLocation,
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
        DiscoveryEngineDataStoreDefaultParsingConfigDigitalParsingConfig,
        DiscoveryEngineDataStoreDefaultParsingConfigLayoutParsingConfig,
        DiscoveryEngineDataStoreDefaultParsingConfigOcrParsingConfig,
        DiscoveryEngineDataStoreDigitalParsingConfig,
        DiscoveryEngineDataStoreDocumentProcessingConfig,
        DiscoveryEngineDataStoreIndustryVertical,
        DiscoveryEngineDataStoreLayoutBasedChunkingConfig,
        DiscoveryEngineDataStoreLayoutParsingConfig,
        DiscoveryEngineDataStoreLocation,
        DiscoveryEngineDataStoreOcrParsingConfig,
        DiscoveryEngineDataStoreParsingConfigOverrides,
        DiscoveryEngineDataStoreSolutionTypes,
        GoogleDiscoveryEngineDataStore;
export 'src/discovery_engine/google_discovery_engine_license_config.dart'
    show
        DiscoveryEngineLicenseConfigEndDate,
        DiscoveryEngineLicenseConfigLocation,
        DiscoveryEngineLicenseConfigStartDate,
        DiscoveryEngineLicenseConfigSubscriptionTerm,
        DiscoveryEngineLicenseConfigSubscriptionTier,
        GoogleDiscoveryEngineLicenseConfig;
export 'src/discovery_engine/google_discovery_engine_recommendation_engine.dart'
    show
        DiscoveryEngineRecommendationEngineCommonConfig,
        DiscoveryEngineRecommendationEngineContextEventType,
        DiscoveryEngineRecommendationEngineFeaturesConfig,
        DiscoveryEngineRecommendationEngineFeaturesConfigMostPopularConfig,
        DiscoveryEngineRecommendationEngineFeaturesConfigRecommendedForYouConfig,
        DiscoveryEngineRecommendationEngineIndustryVertical,
        DiscoveryEngineRecommendationEngineLocation,
        DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfig,
        DiscoveryEngineRecommendationEngineMostPopularConfig,
        DiscoveryEngineRecommendationEngineOptimizationObjective,
        DiscoveryEngineRecommendationEngineOptimizationObjectiveConfig,
        DiscoveryEngineRecommendationEngineRecommendedForYouConfig,
        DiscoveryEngineRecommendationEngineTargetField,
        DiscoveryEngineRecommendationEngineTrainingState,
        DiscoveryEngineRecommendationEngineType,
        GoogleDiscoveryEngineRecommendationEngine;
export 'src/discovery_engine/google_discovery_engine_schema.dart'
    show DiscoveryEngineSchemaLocation, GoogleDiscoveryEngineSchema;
export 'src/discovery_engine/google_discovery_engine_search_engine.dart'
    show
        DiscoveryEngineSearchEngineAppType,
        DiscoveryEngineSearchEngineCommonConfig,
        DiscoveryEngineSearchEngineConfig,
        DiscoveryEngineSearchEngineConfigSearchAddOns,
        DiscoveryEngineSearchEngineFeatureConfig,
        DiscoveryEngineSearchEngineIndustryVertical,
        DiscoveryEngineSearchEngineKnowledgeGraphConfig,
        DiscoveryEngineSearchEngineRequiredSubscriptionTier,
        DiscoveryEngineSearchEngineTier,
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
    show
        DiscoveryEngineServingConfigLocation,
        GoogleDiscoveryEngineServingConfig;
export 'src/discovery_engine/google_discovery_engine_sitemap.dart'
    show DiscoveryEngineSitemapLocation, GoogleDiscoveryEngineSitemap;
export 'src/discovery_engine/google_discovery_engine_target_site.dart'
    show
        DiscoveryEngineTargetSiteIndexingStatus,
        DiscoveryEngineTargetSiteLocation,
        DiscoveryEngineTargetSiteType,
        GoogleDiscoveryEngineTargetSite;
export 'src/discovery_engine/google_discovery_engine_user_store.dart'
    show DiscoveryEngineUserStoreLocation, GoogleDiscoveryEngineUserStore;
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
        DiscoveryEngineWidgetConfigLocation,
        DiscoveryEngineWidgetConfigLogo,
        DiscoveryEngineWidgetConfigResultDescriptionType,
        DiscoveryEngineWidgetConfigSearchAddonSpec,
        DiscoveryEngineWidgetConfigShortcuts,
        DiscoveryEngineWidgetConfigUiBranding,
        DiscoveryEngineWidgetConfigUiSettings,
        GoogleDiscoveryEngineWidgetConfig;
