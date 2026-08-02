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
    show GoogleDataplexAspectTypeIamBinding;
export 'src/dataplex/google_dataplex_aspect_type_iam_member.dart'
    show GoogleDataplexAspectTypeIamMember;
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
    show GoogleDataplexAssetIamBinding;
export 'src/dataplex/google_dataplex_asset_iam_member.dart'
    show GoogleDataplexAssetIamMember;
export 'src/dataplex/google_dataplex_asset_iam_policy.dart'
    show GoogleDataplexAssetIamPolicy;
export 'src/dataplex/google_dataplex_data_product.dart'
    show DataplexDataProductAccessApprovalConfig, GoogleDataplexDataProduct;
export 'src/dataplex/google_dataplex_data_product_data_asset.dart'
    show GoogleDataplexDataProductDataAsset;
export 'src/dataplex/google_dataplex_data_product_iam_binding.dart'
    show GoogleDataplexDataProductIamBinding;
export 'src/dataplex/google_dataplex_data_product_iam_member.dart'
    show GoogleDataplexDataProductIamMember;
export 'src/dataplex/google_dataplex_data_product_iam_policy.dart'
    show GoogleDataplexDataProductIamPolicy;
export 'src/dataplex/google_dataplex_datascan.dart'
    show
        DataplexDatascanData,
        DataplexDatascanDataDiscoverySpec,
        DataplexDatascanDataDocumentationSpec,
        DataplexDatascanDataProfileSpec,
        DataplexDatascanDataQualitySpec,
        DataplexDatascanExecutionIdentity,
        DataplexDatascanExecutionIdentityDataplexServiceAgent,
        DataplexDatascanExecutionIdentityServiceAccount,
        DataplexDatascanExecutionIdentityUserCredential,
        DataplexDatascanExecutionSpec,
        DataplexDatascanExecutionSpecTrigger,
        DataplexDatascanExecutionSpecTriggerOnDemand,
        DataplexDatascanExecutionSpecTriggerOneTime,
        DataplexDatascanExecutionSpecTriggerSchedule,
        DataplexDatascanSpec,
        DataplexDatascanState,
        DataplexDatascanType,
        GoogleDataplexDatascan;
export 'src/dataplex/google_dataplex_datascan_iam_binding.dart'
    show GoogleDataplexDatascanIamBinding;
export 'src/dataplex/google_dataplex_datascan_iam_member.dart'
    show GoogleDataplexDatascanIamMember;
export 'src/dataplex/google_dataplex_datascan_iam_policy.dart'
    show GoogleDataplexDatascanIamPolicy;
export 'src/dataplex/google_dataplex_entry.dart' show GoogleDataplexEntry;
export 'src/dataplex/google_dataplex_entry_group.dart'
    show GoogleDataplexEntryGroup;
export 'src/dataplex/google_dataplex_entry_group_iam_binding.dart'
    show GoogleDataplexEntryGroupIamBinding;
export 'src/dataplex/google_dataplex_entry_group_iam_member.dart'
    show GoogleDataplexEntryGroupIamMember;
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
    show GoogleDataplexEntryType;
export 'src/dataplex/google_dataplex_entry_type_iam_binding.dart'
    show GoogleDataplexEntryTypeIamBinding;
export 'src/dataplex/google_dataplex_entry_type_iam_member.dart'
    show GoogleDataplexEntryTypeIamMember;
export 'src/dataplex/google_dataplex_entry_type_iam_policy.dart'
    show GoogleDataplexEntryTypeIamPolicy;
export 'src/dataplex/google_dataplex_glossary.dart' show GoogleDataplexGlossary;
export 'src/dataplex/google_dataplex_glossary_category.dart'
    show GoogleDataplexGlossaryCategory;
export 'src/dataplex/google_dataplex_glossary_iam_binding.dart'
    show GoogleDataplexGlossaryIamBinding;
export 'src/dataplex/google_dataplex_glossary_iam_member.dart'
    show GoogleDataplexGlossaryIamMember;
export 'src/dataplex/google_dataplex_glossary_iam_policy.dart'
    show GoogleDataplexGlossaryIamPolicy;
export 'src/dataplex/google_dataplex_glossary_term.dart'
    show GoogleDataplexGlossaryTerm;
export 'src/dataplex/google_dataplex_lake.dart' show GoogleDataplexLake;
export 'src/dataplex/google_dataplex_lake_iam_binding.dart'
    show GoogleDataplexLakeIamBinding;
export 'src/dataplex/google_dataplex_lake_iam_member.dart'
    show GoogleDataplexLakeIamMember;
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
        DataplexTaskNotebookWorkload,
        DataplexTaskSparkWorkload,
        DataplexTaskTriggerSpec,
        DataplexTaskTriggerSpecType,
        DataplexTaskWorkload,
        GoogleDataplexTask;
export 'src/dataplex/google_dataplex_task_iam_binding.dart'
    show GoogleDataplexTaskIamBinding;
export 'src/dataplex/google_dataplex_task_iam_member.dart'
    show GoogleDataplexTaskIamMember;
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
    show GoogleDataplexZoneIamBinding;
export 'src/dataplex/google_dataplex_zone_iam_member.dart'
    show GoogleDataplexZoneIamMember;
export 'src/dataplex/google_dataplex_zone_iam_policy.dart'
    show GoogleDataplexZoneIamPolicy;
