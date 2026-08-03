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
export 'src/vertex_ai/google_vertex_ai_dataset.dart' show GoogleVertexAiDataset;
export 'src/vertex_ai/google_vertex_ai_deployment_resource_pool.dart'
    show
        GoogleVertexAiDeploymentResourcePool,
        VertexAiDeploymentResourcePoolDedicatedResources,
        VertexAiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecs,
        VertexAiDeploymentResourcePoolDedicatedResourcesMachineSpec;
export 'src/vertex_ai/google_vertex_ai_endpoint.dart'
    show
        GoogleVertexAiEndpoint,
        VertexAiEndpointEncryptionSpec,
        VertexAiEndpointPredictRequestResponseLoggingConfig,
        VertexAiEndpointPredictRequestResponseLoggingConfigBigqueryDestination,
        VertexAiEndpointPrivateServiceConnectConfig,
        VertexAiEndpointPrivateServiceConnectConfigPscAutomationConfigs;
export 'src/vertex_ai/google_vertex_ai_endpoint_with_model_garden_deployment.dart'
    show
        GoogleVertexAiEndpointWithModelGardenDeployment,
        VertexAiEndpointWithModelGardenDeploymentDeployConfig,
        VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources,
        VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpecs,
        VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec,
        VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity,
        VertexAiEndpointWithModelGardenDeploymentEndpointConfig,
        VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig,
        VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs,
        VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel,
        VertexAiEndpointWithModelGardenDeploymentModel,
        VertexAiEndpointWithModelGardenDeploymentModelConfig,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpec,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPorts,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeExec,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeaders,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeExec,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeaders,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecPorts,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGet,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGetHttpHeaders,
        VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket,
        VertexAiEndpointWithModelGardenDeploymentPublisherModel;
export 'src/vertex_ai/google_vertex_ai_feature_group.dart'
    show GoogleVertexAiFeatureGroup;
export 'src/vertex_ai/google_vertex_ai_feature_group_feature.dart'
    show GoogleVertexAiFeatureGroupFeature;
export 'src/vertex_ai/google_vertex_ai_feature_online_store.dart'
    show
        GoogleVertexAiFeatureOnlineStore,
        VertexAiFeatureOnlineStoreBigtable,
        VertexAiFeatureOnlineStoreBigtableAutoScaling,
        VertexAiFeatureOnlineStoreOptimized,
        VertexAiFeatureOnlineStoreStorage;
export 'src/vertex_ai/google_vertex_ai_feature_online_store_featureview.dart'
    show
        GoogleVertexAiFeatureOnlineStoreFeatureview,
        VertexAiFeatureOnlineStoreFeatureviewBigQuerySource,
        VertexAiFeatureOnlineStoreFeatureviewFeatureGroup,
        VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource,
        VertexAiFeatureOnlineStoreFeatureviewSource,
        VertexAiFeatureOnlineStoreFeatureviewSyncConfig;
export 'src/vertex_ai/google_vertex_ai_featurestore.dart'
    show
        GoogleVertexAiFeaturestore,
        VertexAiFeaturestoreEncryptionSpec,
        VertexAiFeaturestoreOnlineServingConfig,
        VertexAiFeaturestoreOnlineServingConfigScaling;
export 'src/vertex_ai/google_vertex_ai_featurestore_entitytype.dart'
    show
        GoogleVertexAiFeaturestoreEntitytype,
        VertexAiFeaturestoreEntitytypeMonitoringConfig,
        VertexAiFeaturestoreEntitytypeMonitoringConfigCategoricalThresholdConfig,
        VertexAiFeaturestoreEntitytypeMonitoringConfigImportFeaturesAnalysis,
        VertexAiFeaturestoreEntitytypeMonitoringConfigNumericalThresholdConfig,
        VertexAiFeaturestoreEntitytypeMonitoringConfigSnapshotAnalysis;
export 'src/vertex_ai/google_vertex_ai_featurestore_entitytype_feature.dart'
    show GoogleVertexAiFeaturestoreEntitytypeFeature;
export 'src/vertex_ai/google_vertex_ai_index.dart'
    show
        GoogleVertexAiIndex,
        VertexAiIndexEncryptionSpec,
        VertexAiIndexMetadata,
        VertexAiIndexMetadataConfig,
        VertexAiIndexMetadataConfigAlgorithmConfig,
        VertexAiIndexMetadataConfigAlgorithmConfigBruteForceConfig,
        VertexAiIndexMetadataConfigAlgorithmConfigTreeAhConfig;
export 'src/vertex_ai/google_vertex_ai_index_endpoint.dart'
    show
        GoogleVertexAiIndexEndpoint,
        VertexAiIndexEndpointEncryptionSpec,
        VertexAiIndexEndpointPrivateServiceConnectConfig,
        VertexAiIndexEndpointPrivateServiceConnectConfigPscAutomationConfigs;
export 'src/vertex_ai/google_vertex_ai_index_endpoint_deployed_index.dart'
    show
        GoogleVertexAiIndexEndpointDeployedIndex,
        VertexAiIndexEndpointDeployedIndexAutomaticResources,
        VertexAiIndexEndpointDeployedIndexDedicatedResources,
        VertexAiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec,
        VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfig,
        VertexAiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider;
export 'src/vertex_ai/google_vertex_ai_persistent_resource.dart'
    show
        GoogleVertexAiPersistentResource,
        VertexAiPersistentResourceEncryptionSpec,
        VertexAiPersistentResourcePscInterfaceConfig,
        VertexAiPersistentResourcePscInterfaceConfigDnsPeeringConfigs,
        VertexAiPersistentResourceResourcePools,
        VertexAiPersistentResourceResourcePoolsAutoscalingSpec,
        VertexAiPersistentResourceResourcePoolsDiskSpec,
        VertexAiPersistentResourceResourcePoolsMachineSpec,
        VertexAiPersistentResourceResourceRuntimeSpec,
        VertexAiPersistentResourceResourceRuntimeSpecServiceAccountSpec;
export 'src/vertex_ai/google_vertex_ai_rag_engine_config.dart'
    show
        GoogleVertexAiRagEngineConfig,
        VertexAiRagEngineConfigBasic,
        VertexAiRagEngineConfigManagedDbTier,
        VertexAiRagEngineConfigScaled,
        VertexAiRagEngineConfigUnprovisioned;
export 'src/vertex_ai/google_vertex_ai_reasoning_engine.dart'
    show
        GoogleVertexAiReasoningEngine,
        VertexAiReasoningEngineEncryptionSpec,
        VertexAiReasoningEngineSpec,
        VertexAiReasoningEngineSpecContainerSpec,
        VertexAiReasoningEngineSpecDeploymentSpec,
        VertexAiReasoningEngineSpecDeploymentSpecEnv,
        VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfig,
        VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigs,
        VertexAiReasoningEngineSpecDeploymentSpecSecretEnv,
        VertexAiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef,
        VertexAiReasoningEngineSpecIdentityType,
        VertexAiReasoningEngineSpecPackageSpec,
        VertexAiReasoningEngineSpecSourceCodeSpec,
        VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource,
        VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig,
        VertexAiReasoningEngineSpecSourceCodeSpecImageSpec,
        VertexAiReasoningEngineSpecSourceCodeSpecInlineSource,
        VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec;
export 'src/vertex_ai/google_vertex_ai_schedule.dart'
    show GoogleVertexAiSchedule;
export 'src/vertex_ai/google_vertex_ai_semantic_governance_policy_engine.dart'
    show GoogleVertexAiSemanticGovernancePolicyEngine;
export 'src/vertex_ai/google_vertex_ai_tensorboard.dart'
    show GoogleVertexAiTensorboard;
export 'src/vertex_ai/google_vertex_ai_tensorboard_experiment.dart'
    show GoogleVertexAiTensorboardExperiment;
export 'src/vertex_ai/google_vertex_ai_tensorboard_run.dart'
    show GoogleVertexAiTensorboardRun;
