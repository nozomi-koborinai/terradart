// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Vertex AI — Feature Store (legacy featurestore / entity type / feature)
/// plus feature groups (BigQuery-backed), managed datasets, experiment
/// Tensorboards (with experiments and runs), pipeline schedules, GenAI
/// cache config, online prediction endpoints, shared deployment resource
/// pools, and Vector Search indexes / index endpoints (plus deployed
/// indexes).
/// Nested config blocks (e.g. `encryption_spec`) are passed as structured maps.
library;

export 'src/vertex_ai/google_vertex_ai_cache_config.dart'
    show GoogleVertexAiCacheConfig;
export 'src/vertex_ai/google_vertex_ai_dataset.dart'
    show GoogleVertexAiDataset, VertexAiDatasetEncryptionSpec;
export 'src/vertex_ai/google_vertex_ai_deployment_resource_pool.dart'
    show
        GoogleVertexAiDeploymentResourcePool,
        VertexAiDeploymentResourcePoolAutoscalingMetricSpecs,
        VertexAiDeploymentResourcePoolDedicatedResources,
        VertexAiDeploymentResourcePoolMachineSpec;
export 'src/vertex_ai/google_vertex_ai_endpoint.dart'
    show
        GoogleVertexAiEndpoint,
        VertexAiEndpointBigqueryDestination,
        VertexAiEndpointEncryptionSpec,
        VertexAiEndpointPredictRequestResponseLoggingConfig,
        VertexAiEndpointPrivateServiceConnectConfig,
        VertexAiEndpointPscAutomationConfigs;
export 'src/vertex_ai/google_vertex_ai_endpoint_with_model_garden_deployment.dart'
    show
        GoogleVertexAiEndpointWithModelGardenDeployment,
        VertexAiEndpointWithModelGardenDeploymentAutoscalingMetricSpecs,
        VertexAiEndpointWithModelGardenDeploymentContainerSpec,
        VertexAiEndpointWithModelGardenDeploymentDedicatedResources,
        VertexAiEndpointWithModelGardenDeploymentDeployConfig,
        VertexAiEndpointWithModelGardenDeploymentEndpointConfig,
        VertexAiEndpointWithModelGardenDeploymentEnv,
        VertexAiEndpointWithModelGardenDeploymentExec,
        VertexAiEndpointWithModelGardenDeploymentGrpc,
        VertexAiEndpointWithModelGardenDeploymentGrpcPorts,
        VertexAiEndpointWithModelGardenDeploymentHealthProbe,
        VertexAiEndpointWithModelGardenDeploymentHttpGet,
        VertexAiEndpointWithModelGardenDeploymentHttpHeaders,
        VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel,
        VertexAiEndpointWithModelGardenDeploymentLivenessProbe,
        VertexAiEndpointWithModelGardenDeploymentMachineSpec,
        VertexAiEndpointWithModelGardenDeploymentModel,
        VertexAiEndpointWithModelGardenDeploymentModelConfig,
        VertexAiEndpointWithModelGardenDeploymentPorts,
        VertexAiEndpointWithModelGardenDeploymentPrivateServiceConnectConfig,
        VertexAiEndpointWithModelGardenDeploymentPscAutomationConfigs,
        VertexAiEndpointWithModelGardenDeploymentPublisherModel,
        VertexAiEndpointWithModelGardenDeploymentReservationAffinity,
        VertexAiEndpointWithModelGardenDeploymentStartupProbe,
        VertexAiEndpointWithModelGardenDeploymentTcpSocket;
export 'src/vertex_ai/google_vertex_ai_evaluation_metric.dart'
    show GoogleVertexAiEvaluationMetric, VertexAiEvaluationMetricEncryptionSpec;
export 'src/vertex_ai/google_vertex_ai_feature_group.dart'
    show
        GoogleVertexAiFeatureGroup,
        VertexAiFeatureGroupBigQuery,
        VertexAiFeatureGroupBigQuerySource;
export 'src/vertex_ai/google_vertex_ai_feature_group_feature.dart'
    show GoogleVertexAiFeatureGroupFeature;
export 'src/vertex_ai/google_vertex_ai_feature_online_store.dart'
    show
        GoogleVertexAiFeatureOnlineStore,
        VertexAiFeatureOnlineStoreBigtable,
        VertexAiFeatureOnlineStoreBigtableAutoScaling,
        VertexAiFeatureOnlineStoreDedicatedServingEndpoint,
        VertexAiFeatureOnlineStoreEncryptionSpec,
        VertexAiFeatureOnlineStoreOptimized,
        VertexAiFeatureOnlineStorePrivateServiceConnectConfig,
        VertexAiFeatureOnlineStoreStorage;
export 'src/vertex_ai/google_vertex_ai_feature_online_store_featureview.dart'
    show
        GoogleVertexAiFeatureOnlineStoreFeatureview,
        VertexAiFeatureOnlineStoreFeatureviewBigQuerySource,
        VertexAiFeatureOnlineStoreFeatureviewBigQuerySourceChoice,
        VertexAiFeatureOnlineStoreFeatureviewFeatureGroups,
        VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource,
        VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySourceChoice,
        VertexAiFeatureOnlineStoreFeatureviewSource,
        VertexAiFeatureOnlineStoreFeatureviewSyncConfig,
        VertexAiFeatureOnlineStoreFeatureviewSyncConfigContinuous,
        VertexAiFeatureOnlineStoreFeatureviewSyncConfigCron;
export 'src/vertex_ai/google_vertex_ai_featurestore.dart'
    show
        GoogleVertexAiFeaturestore,
        VertexAiFeaturestoreEncryptionSpec,
        VertexAiFeaturestoreOnlineServingConfig,
        VertexAiFeaturestoreOnlineServingConfigFixedNodeCount,
        VertexAiFeaturestoreOnlineServingConfigScaling,
        VertexAiFeaturestoreScaling;
export 'src/vertex_ai/google_vertex_ai_featurestore_entitytype.dart'
    show
        GoogleVertexAiFeaturestoreEntitytype,
        VertexAiFeaturestoreEntitytypeCategoricalThresholdConfig,
        VertexAiFeaturestoreEntitytypeImportFeaturesAnalysis,
        VertexAiFeaturestoreEntitytypeMonitoringConfig,
        VertexAiFeaturestoreEntitytypeNumericalThresholdConfig,
        VertexAiFeaturestoreEntitytypeSnapshotAnalysis;
export 'src/vertex_ai/google_vertex_ai_featurestore_entitytype_feature.dart'
    show GoogleVertexAiFeaturestoreEntitytypeFeature;
export 'src/vertex_ai/google_vertex_ai_index.dart'
    show
        GoogleVertexAiIndex,
        VertexAiIndexAlgorithmConfig,
        VertexAiIndexAlgorithmConfigBruteForceConfig,
        VertexAiIndexAlgorithmConfigTreeAhConfig,
        VertexAiIndexBruteForceConfig,
        VertexAiIndexConfig,
        VertexAiIndexEncryptionSpec,
        VertexAiIndexMetadata,
        VertexAiIndexTreeAhConfig;
export 'src/vertex_ai/google_vertex_ai_index_endpoint.dart'
    show
        GoogleVertexAiIndexEndpoint,
        VertexAiIndexEndpointConnectivity,
        VertexAiIndexEndpointConnectivityNetwork,
        VertexAiIndexEndpointConnectivityPrivateServiceConnectConfig,
        VertexAiIndexEndpointEncryptionSpec,
        VertexAiIndexEndpointPrivateServiceConnectConfig,
        VertexAiIndexEndpointPscAutomationConfigs;
export 'src/vertex_ai/google_vertex_ai_index_endpoint_deployed_index.dart'
    show
        GoogleVertexAiIndexEndpointDeployedIndex,
        VertexAiIndexEndpointDeployedIndexAuthConfig,
        VertexAiIndexEndpointDeployedIndexAuthProvider,
        VertexAiIndexEndpointDeployedIndexAutomaticResources,
        VertexAiIndexEndpointDeployedIndexDedicatedResources,
        VertexAiIndexEndpointDeployedIndexMachineSpec;
export 'src/vertex_ai/google_vertex_ai_persistent_resource.dart'
    show
        GoogleVertexAiPersistentResource,
        VertexAiPersistentResourceAutoscalingSpec,
        VertexAiPersistentResourceDiskSpec,
        VertexAiPersistentResourceDnsPeeringConfigs,
        VertexAiPersistentResourceEncryptionSpec,
        VertexAiPersistentResourceMachineSpec,
        VertexAiPersistentResourcePools,
        VertexAiPersistentResourcePscInterfaceConfig,
        VertexAiPersistentResourceRuntimeSpec,
        VertexAiPersistentResourceServiceAccountSpec;
export 'src/vertex_ai/google_vertex_ai_rag_corpus.dart'
    show
        GoogleVertexAiRagCorpus,
        VertexAiRagCorpusAnn,
        VertexAiRagCorpusApiAuth,
        VertexAiRagCorpusApiKeyConfig,
        VertexAiRagCorpusApiKeyConfigApiKeySecretVersion,
        VertexAiRagCorpusApiKeyConfigApiKeyString,
        VertexAiRagCorpusBackend,
        VertexAiRagCorpusBackendVectorDbConfig,
        VertexAiRagCorpusBackendVertexAiSearchConfig,
        VertexAiRagCorpusEncryptionSpec,
        VertexAiRagCorpusKnn,
        VertexAiRagCorpusPinecone,
        VertexAiRagCorpusRagEmbeddingModelConfig,
        VertexAiRagCorpusRagManagedDb,
        VertexAiRagCorpusRagManagedDbAnn,
        VertexAiRagCorpusRagManagedDbKnn,
        VertexAiRagCorpusVectorDbConfig,
        VertexAiRagCorpusVectorDbConfigBackend,
        VertexAiRagCorpusVectorDbConfigBackendPinecone,
        VertexAiRagCorpusVectorDbConfigBackendRagManagedDb,
        VertexAiRagCorpusVectorDbConfigBackendVertexVectorSearch,
        VertexAiRagCorpusVertexAiSearchConfig,
        VertexAiRagCorpusVertexPredictionEndpoint,
        VertexAiRagCorpusVertexVectorSearch;
export 'src/vertex_ai/google_vertex_ai_rag_engine_config.dart'
    show
        GoogleVertexAiRagEngineConfig,
        VertexAiRagEngineConfigBasic,
        VertexAiRagEngineConfigRagManagedDbConfig,
        VertexAiRagEngineConfigRagManagedDbConfigBasic,
        VertexAiRagEngineConfigRagManagedDbConfigScaled,
        VertexAiRagEngineConfigRagManagedDbConfigUnprovisioned,
        VertexAiRagEngineConfigScaled,
        VertexAiRagEngineConfigUnprovisioned;
export 'src/vertex_ai/google_vertex_ai_reasoning_engine.dart'
    show
        GoogleVertexAiReasoningEngine,
        VertexAiReasoningEngineAdkConfig,
        VertexAiReasoningEngineAgentConfigSource,
        VertexAiReasoningEngineAgentConfigSourceInlineSource,
        VertexAiReasoningEngineAgentGatewayConfig,
        VertexAiReasoningEngineAgentToAnywhereConfig,
        VertexAiReasoningEngineAudioTranscription,
        VertexAiReasoningEngineBuildSpec,
        VertexAiReasoningEngineClientToAgentConfig,
        VertexAiReasoningEngineCodeExecutionResult,
        VertexAiReasoningEngineConfig,
        VertexAiReasoningEngineConsolidationConfig,
        VertexAiReasoningEngineContainerSpec,
        VertexAiReasoningEngineContent,
        VertexAiReasoningEngineContextSpec,
        VertexAiReasoningEngineConversationSource,
        VertexAiReasoningEngineCustomMemoryTopic,
        VertexAiReasoningEngineCustomizationConfigs,
        VertexAiReasoningEngineDeployment,
        VertexAiReasoningEngineDeploymentContainerSpec,
        VertexAiReasoningEngineDeploymentSourceCodeSpec,
        VertexAiReasoningEngineDeploymentSpec,
        VertexAiReasoningEngineDeveloperConnectSource,
        VertexAiReasoningEngineDnsPeeringConfigs,
        VertexAiReasoningEngineEncryptionSpec,
        VertexAiReasoningEngineEnv,
        VertexAiReasoningEngineEvents,
        VertexAiReasoningEngineExecutableCode,
        VertexAiReasoningEngineFileData,
        VertexAiReasoningEngineFunctionCall,
        VertexAiReasoningEngineFunctionResponse,
        VertexAiReasoningEngineGenerateMemoriesExamples,
        VertexAiReasoningEngineGeneratedMemories,
        VertexAiReasoningEngineGenerationConfig,
        VertexAiReasoningEngineGenerationRule,
        VertexAiReasoningEngineGenerationTriggerConfig,
        VertexAiReasoningEngineGranularTtlConfig,
        VertexAiReasoningEngineIdentityType,
        VertexAiReasoningEngineImageSpec,
        VertexAiReasoningEngineInlineData,
        VertexAiReasoningEngineInlineSource,
        VertexAiReasoningEngineLanguage,
        VertexAiReasoningEngineManagedMemoryTopic,
        VertexAiReasoningEngineMemoryBankConfig,
        VertexAiReasoningEngineMemoryTopics,
        VertexAiReasoningEngineMemoryTopicsCustomMemoryTopic,
        VertexAiReasoningEngineMemoryTopicsManagedMemoryTopic,
        VertexAiReasoningEngineOutcome,
        VertexAiReasoningEnginePackageSpec,
        VertexAiReasoningEngineParts,
        VertexAiReasoningEnginePolicy,
        VertexAiReasoningEnginePolicyDefaultTtl,
        VertexAiReasoningEnginePolicyGranularTtlConfig,
        VertexAiReasoningEnginePscInterfaceConfig,
        VertexAiReasoningEnginePythonSpec,
        VertexAiReasoningEngineRuntime,
        VertexAiReasoningEngineRuntimeImageSpec,
        VertexAiReasoningEngineRuntimePythonSpec,
        VertexAiReasoningEngineSchemaConfigs,
        VertexAiReasoningEngineSecretEnv,
        VertexAiReasoningEngineSecretRef,
        VertexAiReasoningEngineSimilaritySearchConfig,
        VertexAiReasoningEngineSourceCodeSpec,
        VertexAiReasoningEngineSpec,
        VertexAiReasoningEngineStructuredMemoryConfigs,
        VertexAiReasoningEngineTopics,
        VertexAiReasoningEngineTopicsManagedMemoryTopic,
        VertexAiReasoningEngineTtlConfig,
        VertexAiReasoningEngineVideoMetadata,
        VertexAiReasoningEngineWords;
export 'src/vertex_ai/google_vertex_ai_reasoning_engine_iam_binding.dart'
    show
        GoogleVertexAiReasoningEngineIamBinding,
        VertexAiReasoningEngineIamBindingCondition;
export 'src/vertex_ai/google_vertex_ai_reasoning_engine_iam_member.dart'
    show
        GoogleVertexAiReasoningEngineIamMember,
        VertexAiReasoningEngineIamMemberCondition;
export 'src/vertex_ai/google_vertex_ai_reasoning_engine_iam_policy.dart'
    show GoogleVertexAiReasoningEngineIamPolicy;
export 'src/vertex_ai/google_vertex_ai_semantic_governance_policy_engine.dart'
    show
        GoogleVertexAiSemanticGovernancePolicyEngine,
        VertexAiSemanticGovernancePolicyEngineGatewayConfigs;
export 'src/vertex_ai/google_vertex_ai_tensorboard.dart'
    show GoogleVertexAiTensorboard, VertexAiTensorboardEncryptionSpec;
export 'src/vertex_ai/google_vertex_ai_tensorboard_experiment.dart'
    show GoogleVertexAiTensorboardExperiment;
export 'src/vertex_ai/google_vertex_ai_tensorboard_run.dart'
    show GoogleVertexAiTensorboardRun;
