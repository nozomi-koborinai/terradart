// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Dataplex: governed data products, Universal Catalog metadata (entry groups /
/// entry types / aspect types), Data Lineage project config, and their IAM
/// adjuncts.
library;

export 'src/dataplex/google_data_lineage_config.dart'
    show
        DataLineageConfigIngestion,
        DataLineageConfigIngestionRule,
        DataLineageConfigIngestionRuleIntegrationSelector,
        DataLineageConfigIngestionRuleIntegrationSelectorIntegration,
        DataLineageConfigIngestionRuleLineageEnablement,
        GoogleDataLineageConfig;
export 'src/dataplex/google_dataplex_aspect_type.dart'
    show DataplexAspectTypeDataClassification, GoogleDataplexAspectType;
export 'src/dataplex/google_dataplex_aspect_type_iam_binding.dart'
    show
        DataplexAspectTypeIamBindingCondition,
        GoogleDataplexAspectTypeIamBinding;
export 'src/dataplex/google_dataplex_aspect_type_iam_member.dart'
    show
        DataplexAspectTypeIamMemberCondition,
        GoogleDataplexAspectTypeIamMember;
export 'src/dataplex/google_dataplex_aspect_type_iam_policy.dart'
    show GoogleDataplexAspectTypeIamPolicy;
export 'src/dataplex/google_dataplex_asset.dart'
    show
        DataplexAssetDiscoverySpec,
        DataplexAssetDiscoverySpecCsvOptions,
        DataplexAssetDiscoverySpecJsonOptions,
        DataplexAssetResourceSpec,
        DataplexAssetResourceSpecReadAccessMode,
        DataplexAssetResourceSpecType,
        GoogleDataplexAsset;
export 'src/dataplex/google_dataplex_asset_iam_binding.dart'
    show DataplexAssetIamBindingCondition, GoogleDataplexAssetIamBinding;
export 'src/dataplex/google_dataplex_asset_iam_member.dart'
    show DataplexAssetIamMemberCondition, GoogleDataplexAssetIamMember;
export 'src/dataplex/google_dataplex_asset_iam_policy.dart'
    show GoogleDataplexAssetIamPolicy;
export 'src/dataplex/google_dataplex_data_product.dart'
    show
        DataplexDataProductAccessApprovalConfig,
        DataplexDataProductAccessGroups,
        DataplexDataProductAccessGroupsPrincipal,
        GoogleDataplexDataProduct;
export 'src/dataplex/google_dataplex_data_product_data_asset.dart'
    show
        DataplexDataProductDataAssetAccessGroupConfigs,
        GoogleDataplexDataProductDataAsset;
export 'src/dataplex/google_dataplex_data_product_iam_binding.dart'
    show
        DataplexDataProductIamBindingCondition,
        GoogleDataplexDataProductIamBinding;
export 'src/dataplex/google_dataplex_data_product_iam_member.dart'
    show
        DataplexDataProductIamMemberCondition,
        GoogleDataplexDataProductIamMember;
export 'src/dataplex/google_dataplex_data_product_iam_policy.dart'
    show GoogleDataplexDataProductIamPolicy;
export 'src/dataplex/google_dataplex_datascan.dart'
    show
        DataplexDatascanData,
        DataplexDatascanDataDiscoverySpec,
        DataplexDatascanDataDocumentationSpec,
        DataplexDatascanDataEntity,
        DataplexDatascanDataProfileSpec,
        DataplexDatascanDataQualitySpec,
        DataplexDatascanDataResource,
        DataplexDatascanExecutionIdentity,
        DataplexDatascanExecutionIdentityDataplexServiceAgent,
        DataplexDatascanExecutionIdentityDataplexServiceAgentChoice,
        DataplexDatascanExecutionIdentityServiceAccount,
        DataplexDatascanExecutionIdentityServiceAccountChoice,
        DataplexDatascanExecutionIdentityUserCredential,
        DataplexDatascanExecutionIdentityUserCredentialChoice,
        DataplexDatascanExecutionSpec,
        DataplexDatascanExecutionSpecTrigger,
        DataplexDatascanExecutionSpecTriggerOnDemand,
        DataplexDatascanExecutionSpecTriggerOnDemandChoice,
        DataplexDatascanExecutionSpecTriggerOneTime,
        DataplexDatascanExecutionSpecTriggerOneTimeChoice,
        DataplexDatascanExecutionSpecTriggerSchedule,
        DataplexDatascanExecutionSpecTriggerScheduleChoice,
        DataplexDatascanSpec,
        DataplexDatascanState,
        DataplexDatascanType,
        GoogleDataplexDatascan;
export 'src/dataplex/google_dataplex_datascan_iam_binding.dart'
    show DataplexDatascanIamBindingCondition, GoogleDataplexDatascanIamBinding;
export 'src/dataplex/google_dataplex_datascan_iam_member.dart'
    show DataplexDatascanIamMemberCondition, GoogleDataplexDatascanIamMember;
export 'src/dataplex/google_dataplex_datascan_iam_policy.dart'
    show GoogleDataplexDatascanIamPolicy;
export 'src/dataplex/google_dataplex_entry.dart'
    show
        DataplexEntryAspects,
        DataplexEntryAspectsAspect,
        DataplexEntryEntrySource,
        DataplexEntryEntrySourceAncestors,
        GoogleDataplexEntry;
export 'src/dataplex/google_dataplex_entry_group.dart'
    show GoogleDataplexEntryGroup;
export 'src/dataplex/google_dataplex_entry_group_iam_binding.dart'
    show
        DataplexEntryGroupIamBindingCondition,
        GoogleDataplexEntryGroupIamBinding;
export 'src/dataplex/google_dataplex_entry_group_iam_member.dart'
    show
        DataplexEntryGroupIamMemberCondition,
        GoogleDataplexEntryGroupIamMember;
export 'src/dataplex/google_dataplex_entry_group_iam_policy.dart'
    show GoogleDataplexEntryGroupIamPolicy;
export 'src/dataplex/google_dataplex_entry_link.dart'
    show
        DataplexEntryLinkAspects,
        DataplexEntryLinkAspectsAspect,
        DataplexEntryLinkEntryReferences,
        DataplexEntryLinkEntryReferencesType,
        GoogleDataplexEntryLink;
export 'src/dataplex/google_dataplex_entry_type.dart'
    show DataplexEntryTypeRequiredAspects, GoogleDataplexEntryType;
export 'src/dataplex/google_dataplex_entry_type_iam_binding.dart'
    show
        DataplexEntryTypeIamBindingCondition,
        GoogleDataplexEntryTypeIamBinding;
export 'src/dataplex/google_dataplex_entry_type_iam_member.dart'
    show DataplexEntryTypeIamMemberCondition, GoogleDataplexEntryTypeIamMember;
export 'src/dataplex/google_dataplex_entry_type_iam_policy.dart'
    show GoogleDataplexEntryTypeIamPolicy;
export 'src/dataplex/google_dataplex_glossary.dart' show GoogleDataplexGlossary;
export 'src/dataplex/google_dataplex_glossary_category.dart'
    show GoogleDataplexGlossaryCategory;
export 'src/dataplex/google_dataplex_glossary_iam_binding.dart'
    show DataplexGlossaryIamBindingCondition, GoogleDataplexGlossaryIamBinding;
export 'src/dataplex/google_dataplex_glossary_iam_member.dart'
    show DataplexGlossaryIamMemberCondition, GoogleDataplexGlossaryIamMember;
export 'src/dataplex/google_dataplex_glossary_iam_policy.dart'
    show GoogleDataplexGlossaryIamPolicy;
export 'src/dataplex/google_dataplex_glossary_term.dart'
    show GoogleDataplexGlossaryTerm;
export 'src/dataplex/google_dataplex_lake.dart'
    show DataplexLakeMetastore, GoogleDataplexLake;
export 'src/dataplex/google_dataplex_lake_iam_binding.dart'
    show DataplexLakeIamBindingCondition, GoogleDataplexLakeIamBinding;
export 'src/dataplex/google_dataplex_lake_iam_member.dart'
    show DataplexLakeIamMemberCondition, GoogleDataplexLakeIamMember;
export 'src/dataplex/google_dataplex_lake_iam_policy.dart'
    show GoogleDataplexLakeIamPolicy;
export 'src/dataplex/google_dataplex_metadata_feed.dart'
    show
        DataplexMetadataFeedFilters,
        DataplexMetadataFeedScope,
        GoogleDataplexMetadataFeed;
export 'src/dataplex/google_dataplex_task.dart'
    show
        DataplexTaskExecutionSpec,
        DataplexTaskNotebook,
        DataplexTaskNotebookInfrastructureSpec,
        DataplexTaskNotebookInfrastructureSpecBatch,
        DataplexTaskNotebookInfrastructureSpecContainerImage,
        DataplexTaskNotebookInfrastructureSpecVpcNetwork,
        DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget,
        DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetNetwork,
        DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetSubNetwork,
        DataplexTaskSpark,
        DataplexTaskSparkDriver,
        DataplexTaskSparkDriverMainClass,
        DataplexTaskSparkDriverMainJarFileUri,
        DataplexTaskSparkDriverPythonScriptFile,
        DataplexTaskSparkDriverSqlScript,
        DataplexTaskSparkDriverSqlScriptFile,
        DataplexTaskSparkInfrastructureSpec,
        DataplexTaskSparkInfrastructureSpecBatch,
        DataplexTaskSparkInfrastructureSpecContainerImage,
        DataplexTaskSparkInfrastructureSpecVpcNetwork,
        DataplexTaskSparkInfrastructureSpecVpcNetworkTarget,
        DataplexTaskSparkInfrastructureSpecVpcNetworkTargetNetwork,
        DataplexTaskSparkInfrastructureSpecVpcNetworkTargetSubNetwork,
        DataplexTaskTriggerSpec,
        DataplexTaskTriggerSpecType,
        DataplexTaskWorkload,
        DataplexTaskWorkloadNotebook,
        DataplexTaskWorkloadSpark,
        GoogleDataplexTask;
export 'src/dataplex/google_dataplex_task_iam_binding.dart'
    show DataplexTaskIamBindingCondition, GoogleDataplexTaskIamBinding;
export 'src/dataplex/google_dataplex_task_iam_member.dart'
    show DataplexTaskIamMemberCondition, GoogleDataplexTaskIamMember;
export 'src/dataplex/google_dataplex_task_iam_policy.dart'
    show GoogleDataplexTaskIamPolicy;
export 'src/dataplex/google_dataplex_zone.dart'
    show
        DataplexZoneDiscoverySpec,
        DataplexZoneDiscoverySpecCsvOptions,
        DataplexZoneDiscoverySpecJsonOptions,
        DataplexZoneResourceSpec,
        DataplexZoneResourceSpecLocationType,
        DataplexZoneType,
        GoogleDataplexZone;
export 'src/dataplex/google_dataplex_zone_iam_binding.dart'
    show DataplexZoneIamBindingCondition, GoogleDataplexZoneIamBinding;
export 'src/dataplex/google_dataplex_zone_iam_member.dart'
    show DataplexZoneIamMemberCondition, GoogleDataplexZoneIamMember;
export 'src/dataplex/google_dataplex_zone_iam_policy.dart'
    show GoogleDataplexZoneIamPolicy;
