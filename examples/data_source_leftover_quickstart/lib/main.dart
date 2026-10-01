/// Data-source leftover quickstart — remaining GA data sources.
///
/// Coverage stack with dummy ids; synth + `terraform validate` only.
/// Never apply.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/provider.dart';

final class DataSourceLeftoverStack extends Stack {
  DataSourceLeftoverStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    // Dummy ids only — this stack is never applied.
    const leftover = 'terradart-leftover';
    final saEmail = 'terradart@$projectId.iam.gserviceaccount.com';
    final saId = 'projects/$projectId/serviceAccounts/$saEmail';
    final kmsVersion =
        'projects/$projectId/locations/us-central1/keyRings/terradart/'
        'cryptoKeys/terradart/cryptoKeyVersions/1';

    add(
      DataGoogleAccessApprovalFolderServiceAccount(
        localName: 'access_approval_folder_service_account',
        folderId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessApprovalOrganizationServiceAccount(
        localName: 'access_approval_organization_service_account',
        organizationId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessApprovalProjectServiceAccount(
        localName: 'access_approval_project_service_account',
        projectId: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleAccessContextManagerAccessPolicy(
        localName: 'access_context_manager_access_policy',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessContextManagerAccessPolicyIamPolicy(
        localName: 'access_context_manager_access_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessContextManagerSupportedService(
        localName: 'access_context_manager_supported_service',
        serviceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessContextManagerSupportedServices(
        localName: 'access_context_manager_supported_services',
      ),
    );

    add(
      DataGoogleActiveFolder(
        localName: 'active_folder',
        displayName: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAgentRegistryAgent(
        localName: 'agent_registry_agent',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAgentRegistryEndpoint(
        localName: 'agent_registry_endpoint',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAgentRegistryMcpServer(
        localName: 'agent_registry_mcp_server',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAlloydbCluster(
        localName: 'alloydb_cluster',
        clusterId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAlloydbInstance(
        localName: 'alloydb_instance',
        clusterId: TfArg.literal(leftover),
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleAlloydbLocations(localName: 'alloydb_locations'));

    add(
      DataGoogleAlloydbSupportedDatabaseFlags(
        localName: 'alloydb_supported_database_flags',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleApigeeEnvironmentIamPolicy(
        localName: 'apigee_environment_iam_policy',
        envId: TfArg.literal(leftover),
        orgId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleApigeeInstance(
        localName: 'apigee_instance',
        name: TfArg.literal(leftover),
        orgId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAppEngineDefaultServiceAccount(
        localName: 'app_engine_default_service_account',
      ),
    );

    add(
      DataGoogleApphubApplication(
        localName: 'apphub_application',
        applicationId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleApphubDiscoveredService(
        localName: 'apphub_discovered_service',
        location: TfArg.literal(leftover),
        serviceUri: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleApphubDiscoveredWorkload(
        localName: 'apphub_discovered_workload',
        location: TfArg.literal(leftover),
        workloadUri: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryDockerImage(
        localName: 'artifact_registry_docker_image',
        imageName: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryDockerImages(
        localName: 'artifact_registry_docker_images',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryFile(
        localName: 'artifact_registry_file',
        fileId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        outputPath: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryLocations(
        localName: 'artifact_registry_locations',
      ),
    );

    add(
      DataGoogleArtifactRegistryMavenArtifact(
        localName: 'artifact_registry_maven_artifact',
        artifactId: TfArg.literal(leftover),
        groupId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryMavenArtifacts(
        localName: 'artifact_registry_maven_artifacts',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryNpmPackage(
        localName: 'artifact_registry_npm_package',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryNpmPackages(
        localName: 'artifact_registry_npm_packages',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPackage(
        localName: 'artifact_registry_package',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPackages(
        localName: 'artifact_registry_packages',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPythonPackage(
        localName: 'artifact_registry_python_package',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPythonPackages(
        localName: 'artifact_registry_python_packages',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryRepositories(
        localName: 'artifact_registry_repositories',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryRepository(
        localName: 'artifact_registry_repository',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryRepositoryIamPolicy(
        localName: 'artifact_registry_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryTag(
        localName: 'artifact_registry_tag',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
        tagName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryTags(
        localName: 'artifact_registry_tags',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryVersion(
        localName: 'artifact_registry_version',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
        versionName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryVersions(
        localName: 'artifact_registry_versions',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackup(
        localName: 'backup_dr_backup',
        backupVaultId: TfArg.literal(leftover),
        dataSourceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleBackupDrBackupPlan(
        localName: 'backup_dr_backup_plan',
        backupPlanId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackupPlanAssociation(
        localName: 'backup_dr_backup_plan_association',
        backupPlanAssociationId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackupPlanAssociations(
        localName: 'backup_dr_backup_plan_associations',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackupVault(
        localName: 'backup_dr_backup_vault',
        backupVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSource(
        localName: 'backup_dr_data_source',
        backupVaultId: TfArg.literal(leftover),
        dataSourceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSourceReference(
        localName: 'backup_dr_data_source_reference',
        dataSourceReferenceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSourceReferences(
        localName: 'backup_dr_data_source_references',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSources(
        localName: 'backup_dr_data_sources',
        backupVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrManagementServer(
        localName: 'backup_dr_management_server',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBeyondcorpSecurityGateway(
        localName: 'beyondcorp_security_gateway',
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBeyondcorpSecurityGatewayApplicationIamPolicy(
        localName: 'beyondcorp_security_gateway_application_iam_poli',
        applicationId: TfArg.literal(leftover),
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBeyondcorpSecurityGatewayIamPolicy(
        localName: 'beyondcorp_security_gateway_iam_policy',
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeHiveCatalogIamPolicy(
        localName: 'biglake_hive_catalog_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeHiveDatabaseIamPolicy(
        localName: 'biglake_hive_database_iam_policy',
        catalog: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeHiveTableIamPolicy(
        localName: 'biglake_hive_table_iam_policy',
        catalog: TfArg.literal(leftover),
        database: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeIcebergCatalogIamPolicy(
        localName: 'biglake_iceberg_catalog_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeIcebergNamespaceIamPolicy(
        localName: 'biglake_iceberg_namespace_iam_policy',
        catalog: TfArg.literal(leftover),
        namespaceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeIcebergTableIamPolicy(
        localName: 'biglake_iceberg_table_iam_policy',
        catalog: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        namespace: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryAnalyticsHubDataExchangeIamPolicy(
        localName: 'bigquery_analytics_hub_data_exchange_iam_policy',
        dataExchangeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryAnalyticsHubListingIamPolicy(
        localName: 'bigquery_analytics_hub_listing_iam_policy',
        dataExchangeId: TfArg.literal(leftover),
        listingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryConnectionIamPolicy(
        localName: 'bigquery_connection_iam_policy',
        connectionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDatapolicyDataPolicyIamPolicy(
        localName: 'bigquery_datapolicy_data_policy_iam_policy',
        dataPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDatapolicyv2DataPolicyIamPolicy(
        localName: 'bigquery_datapolicyv2_data_policy_iam_policy',
        dataPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDataset(
        localName: 'bigquery_dataset',
        datasetId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDatasetIamPolicy(
        localName: 'bigquery_dataset_iam_policy',
        datasetId: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleBigqueryDatasets(localName: 'bigquery_datasets'));

    add(
      DataGoogleBigqueryDefaultServiceAccount(
        localName: 'bigquery_default_service_account',
      ),
    );

    add(
      DataGoogleBigqueryRoutineIamPolicy(
        localName: 'bigquery_routine_iam_policy',
        datasetId: RefTo.literal(leftover),
        routineId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryTable(
        localName: 'bigquery_table',
        datasetId: RefTo.literal(leftover),
        tableId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryTableIamPolicy(
        localName: 'bigquery_table_iam_policy',
        datasetId: RefTo.literal(leftover),
        tableId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryTables(
        localName: 'bigquery_tables',
        datasetId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleBigtableInstanceIamPolicy(
        localName: 'bigtable_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigtableTableIamPolicy(
        localName: 'bigtable_table_iam_policy',
        instanceName: TfArg.literal(leftover),
        table: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleBillingAccount(localName: 'billing_account'));

    add(
      DataGoogleBillingAccountIamPolicy(
        localName: 'billing_account_iam_policy',
        billingAccountId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBinaryAuthorizationAttestorIamPolicy(
        localName: 'binary_authorization_attestor_iam_policy',
        attestor: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCertificateManagerCertificateMap(
        localName: 'certificate_manager_certificate_map',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCertificateManagerCertificates(
        localName: 'certificate_manager_certificates',
      ),
    );

    add(
      DataGoogleCertificateManagerDnsAuthorization(
        localName: 'certificate_manager_dns_authorization',
        domain: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleClientConfig(localName: 'client_config'));

    add(DataGoogleClientOpenidUserinfo(localName: 'client_openid_userinfo'));

    add(
      DataGoogleCloudAssetSearchAllResources(
        localName: 'cloud_asset_search_all_resources',
        scope: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudIdentityGroupLookup(
        localName: 'cloud_identity_group_lookup',
        groupKey: DataCloudIdentityGroupLookupGroupKey(id: .literal(leftover)),
      ),
    );

    add(
      DataGoogleCloudIdentityGroupMemberships(
        localName: 'cloud_identity_group_memberships',
        group: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudIdentityGroupTransitiveMemberships(
        localName: 'cloud_identity_group_transitive_memberships',
        group: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudIdentityGroups(
        localName: 'cloud_identity_groups',
        parent: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleCloudIdentityPolicies(localName: 'cloud_identity_policies'));

    add(
      DataGoogleCloudIdentityPolicy(
        localName: 'cloud_identity_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudQuotasQuotaInfo(
        localName: 'cloud_quotas_quota_info',
        parent: TfArg.literal(leftover),
        quotaId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudQuotasQuotaInfos(
        localName: 'cloud_quotas_quota_infos',
        parent: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleCloudRunLocations(localName: 'cloud_run_locations'));

    add(
      DataGoogleCloudRunService(
        localName: 'cloud_run_service',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunServiceIamPolicy(
        localName: 'cloud_run_service_iam_policy',
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2Job(
        localName: 'cloud_run_v2_job',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2JobIamPolicy(
        localName: 'cloud_run_v2_job_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2Service(
        localName: 'cloud_run_v2_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2ServiceIamPolicy(
        localName: 'cloud_run_v2_service_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2WorkerPool(
        localName: 'cloud_run_v2_worker_pool',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2WorkerPoolIamPolicy(
        localName: 'cloud_run_v2_worker_pool_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudTasksQueueIamPolicy(
        localName: 'cloud_tasks_queue_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudbuildTrigger(
        localName: 'cloudbuild_trigger',
        location: TfArg.literal(leftover),
        triggerId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudbuildWorkerPool(
        localName: 'cloudbuild_worker_pool',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudbuildv2ConnectionIamPolicy(
        localName: 'cloudbuildv2_connection_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleClouddeployCustomTargetTypeIamPolicy(
        localName: 'clouddeploy_custom_target_type_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleClouddeployDeliveryPipelineIamPolicy(
        localName: 'clouddeploy_delivery_pipeline_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleClouddeployTargetIamPolicy(
        localName: 'clouddeploy_target_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctions2Function(
        localName: 'cloudfunctions2_function',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctions2FunctionIamPolicy(
        localName: 'cloudfunctions2_function_iam_policy',
        cloudFunction: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctionsFunction(
        localName: 'cloudfunctions_function',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctionsFunctionIamPolicy(
        localName: 'cloudfunctions_function_iam_policy',
        cloudFunction: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleColabRuntimeTemplateIamPolicy(
        localName: 'colab_runtime_template_iam_policy',
        runtimeTemplate: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComposerEnvironment(
        localName: 'composer_environment',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComposerImageVersions(localName: 'composer_image_versions'));

    add(
      DataGoogleComposerUserWorkloadsConfigMap(
        localName: 'composer_user_workloads_config_map',
        environment: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComposerUserWorkloadsSecret(
        localName: 'composer_user_workloads_secret',
        environment: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeAddress(
        localName: 'compute_address',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeAddresses(localName: 'compute_addresses'));

    add(
      DataGoogleComputeBackendBucket(
        localName: 'compute_backend_bucket',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeBackendService(
        localName: 'compute_backend_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeDefaultServiceAccount(
        localName: 'compute_default_service_account',
      ),
    );

    add(
      DataGoogleComputeDisk(
        localName: 'compute_disk',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeDiskIamPolicy(
        localName: 'compute_disk_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeFirewallPolicyIamPolicy(
        localName: 'compute_firewall_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeForwardingRule(
        localName: 'compute_forwarding_rule',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeForwardingRules(localName: 'compute_forwarding_rules'),
    );

    add(
      DataGoogleComputeGlobalAddress(
        localName: 'compute_global_address',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeGlobalForwardingRule(
        localName: 'compute_global_forwarding_rule',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeHaVpnGateway(
        localName: 'compute_ha_vpn_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeHealthCheck(
        localName: 'compute_health_check',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeImage(
        localName: 'compute_image',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeImageIamPolicy(
        localName: 'compute_image_iam_policy',
        image: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeImages(localName: 'compute_images'));

    add(DataGoogleComputeInstance(localName: 'compute_instance'));

    add(DataGoogleComputeInstanceGroup(localName: 'compute_instance_group'));

    add(
      DataGoogleComputeInstanceGroupManager(
        localName: 'compute_instance_group_manager',
      ),
    );

    add(DataGoogleComputeInstanceGroups(localName: 'compute_instance_groups'));

    add(
      DataGoogleComputeInstanceGuestAttributes(
        localName: 'compute_instance_guest_attributes',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstanceIamPolicy(
        localName: 'compute_instance_iam_policy',
        instanceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstanceSerialPort(
        localName: 'compute_instance_serial_port',
        instance: TfArg.literal(leftover),
        port: TfArg.literal(1),
      ),
    );

    add(
      DataGoogleComputeInstanceTemplate(
        localName: 'compute_instance_template',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstanceTemplateIamPolicy(
        localName: 'compute_instance_template_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstantSnapshotIamPolicy(
        localName: 'compute_instant_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInterconnectLocation(
        localName: 'compute_interconnect_location',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInterconnectLocations(
        localName: 'compute_interconnect_locations',
      ),
    );

    add(DataGoogleComputeLbIpRanges(localName: 'compute_lb_ip_ranges'));

    add(DataGoogleComputeMachineTypes(localName: 'compute_machine_types'));

    add(DataGoogleComputeNetwork(localName: 'compute_network'));

    add(
      DataGoogleComputeNetworkAttachment(
        localName: 'compute_network_attachment',
        name: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeNetworkEndpointGroup(
        localName: 'compute_network_endpoint_group',
      ),
    );

    add(
      DataGoogleComputeNetworkEndpointGroups(
        localName: 'compute_network_endpoint_groups',
      ),
    );

    add(
      DataGoogleComputeNetworkFirewallPolicyIamPolicy(
        localName: 'compute_network_firewall_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeNetworkPeering(
        localName: 'compute_network_peering',
        name: TfArg.literal(leftover),
        network: RefTo.literal('projects/$projectId/global/networks/terradart'),
      ),
    );

    add(DataGoogleComputeNetworks(localName: 'compute_networks'));

    add(DataGoogleComputeNodeTypes(localName: 'compute_node_types'));

    add(
      DataGoogleComputeRegionBackendService(
        localName: 'compute_region_backend_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionDisk(
        localName: 'compute_region_disk',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionDiskIamPolicy(
        localName: 'compute_region_disk_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionInstanceGroup(
        localName: 'compute_region_instance_group',
      ),
    );

    add(
      DataGoogleComputeRegionInstanceGroupManager(
        localName: 'compute_region_instance_group_manager',
      ),
    );

    add(
      DataGoogleComputeRegionInstanceTemplate(
        localName: 'compute_region_instance_template',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionInstantSnapshotIamPolicy(
        localName: 'compute_region_instant_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionNetworkEndpointGroup(
        localName: 'compute_region_network_endpoint_group',
      ),
    );

    add(
      DataGoogleComputeRegionNetworkFirewallPolicyIamPolicy(
        localName: 'compute_region_network_firewall_policy_iam_polic',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionSecurityPolicy(
        localName: 'compute_region_security_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionSslCertificate(
        localName: 'compute_region_ssl_certificate',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionSslPolicy(
        localName: 'compute_region_ssl_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionTargetHttpProxy(
        localName: 'compute_region_target_http_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionTargetHttpsProxy(
        localName: 'compute_region_target_https_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeRegions(localName: 'compute_regions'));

    add(
      DataGoogleComputeReservation(
        localName: 'compute_reservation',
        name: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeReservationBlock(
        localName: 'compute_reservation_block',
        name: TfArg.literal(leftover),
        reservation: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeReservationSubBlock(
        localName: 'compute_reservation_sub_block',
        name: TfArg.literal(leftover),
        reservation: TfArg.literal(leftover),
        reservationBlock: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeResourcePolicy(
        localName: 'compute_resource_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRouter(
        localName: 'compute_router',
        name: TfArg.literal(leftover),
        network: RefTo.literal('projects/$projectId/global/networks/terradart'),
      ),
    );

    add(
      DataGoogleComputeRouterNat(
        localName: 'compute_router_nat',
        name: TfArg.literal(leftover),
        router: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRouterStatus(
        localName: 'compute_router_status',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeRouters(localName: 'compute_routers'));

    add(DataGoogleComputeSecurityPolicy(localName: 'compute_security_policy'));

    add(
      DataGoogleComputeServiceAttachment(
        localName: 'compute_service_attachment',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeServiceAttachments(
        localName: 'compute_service_attachments',
      ),
    );

    add(
      DataGoogleComputeSnapshot(
        localName: 'compute_snapshot',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeSnapshotIamPolicy(
        localName: 'compute_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeSslCertificate(
        localName: 'compute_ssl_certificate',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeSslPolicy(
        localName: 'compute_ssl_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeStoragePool(
        localName: 'compute_storage_pool',
        name: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeStoragePoolIamPolicy(
        localName: 'compute_storage_pool_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeStoragePoolTypes(
        localName: 'compute_storage_pool_types',
        storagePoolType: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeSubnetwork(localName: 'compute_subnetwork'));

    add(
      DataGoogleComputeSubnetworkIamPolicy(
        localName: 'compute_subnetwork_iam_policy',
        subnetwork: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleComputeSubnetworks(localName: 'compute_subnetworks'));

    add(
      DataGoogleComputeTargetHttpProxy(
        localName: 'compute_target_http_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeTargetHttpsProxy(
        localName: 'compute_target_https_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeVpnGateway(
        localName: 'compute_vpn_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeZones(localName: 'compute_zones'));

    add(
      DataGoogleContainerAnalysisNoteIamPolicy(
        localName: 'container_analysis_note_iam_policy',
        note: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleContainerAttachedInstallManifest(
        localName: 'container_attached_install_manifest',
        clusterId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        platformVersion: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleContainerAttachedVersions(
        localName: 'container_attached_versions',
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(DataGoogleContainerAwsVersions(localName: 'container_aws_versions'));

    add(
      DataGoogleContainerAzureVersions(localName: 'container_azure_versions'),
    );

    add(
      DataGoogleContainerCluster(
        localName: 'container_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleContainerEngineVersions(localName: 'container_engine_versions'),
    );

    add(
      DataGoogleContainerRegistryImage(
        localName: 'container_registry_image',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleContainerRegistryRepository(
        localName: 'container_registry_repository',
      ),
    );

    add(
      DataGoogleDataCatalogEntryGroupIamPolicy(
        localName: 'data_catalog_entry_group_iam_policy',
        entryGroup: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogPolicyTagIamPolicy(
        localName: 'data_catalog_policy_tag_iam_policy',
        policyTag: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogTagTemplateIamPolicy(
        localName: 'data_catalog_tag_template_iam_policy',
        tagTemplate: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogTaxonomy(
        localName: 'data_catalog_taxonomy',
        displayName: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogTaxonomyIamPolicy(
        localName: 'data_catalog_taxonomy_iam_policy',
        taxonomy: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataFusionInstanceIamPolicy(
        localName: 'data_fusion_instance_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataLineageConfig(
        localName: 'data_lineage_config',
        location: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataformRepositoryIamPolicy(
        localName: 'dataform_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexAspectTypeIamPolicy(
        localName: 'dataplex_aspect_type_iam_policy',
        aspectTypeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexAssetIamPolicy(
        localName: 'dataplex_asset_iam_policy',
        asset: TfArg.literal(leftover),
        dataplexZone: TfArg.literal(leftover),
        lake: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexDataProductIamPolicy(
        localName: 'dataplex_data_product_iam_policy',
        dataProductId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexDataQualityRules(
        localName: 'dataplex_data_quality_rules',
        dataScanId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexDatascanIamPolicy(
        localName: 'dataplex_datascan_iam_policy',
        dataScanId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexEntryGroupIamPolicy(
        localName: 'dataplex_entry_group_iam_policy',
        entryGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexEntryTypeIamPolicy(
        localName: 'dataplex_entry_type_iam_policy',
        entryTypeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexGlossaryIamPolicy(
        localName: 'dataplex_glossary_iam_policy',
        glossaryId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexLakeIamPolicy(
        localName: 'dataplex_lake_iam_policy',
        lake: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexTaskIamPolicy(
        localName: 'dataplex_task_iam_policy',
        lake: TfArg.literal(leftover),
        taskId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexZoneIamPolicy(
        localName: 'dataplex_zone_iam_policy',
        dataplexZone: TfArg.literal(leftover),
        lake: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocAutoscalingPolicyIamPolicy(
        localName: 'dataproc_autoscaling_policy_iam_policy',
        policyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocClusterIamPolicy(
        localName: 'dataproc_cluster_iam_policy',
        cluster: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocJobIamPolicy(
        localName: 'dataproc_job_iam_policy',
        jobId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreDatabaseIamPolicy(
        localName: 'dataproc_metastore_database_iam_policy',
        database: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreFederationIamPolicy(
        localName: 'dataproc_metastore_federation_iam_policy',
        federationId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreService(
        localName: 'dataproc_metastore_service',
        location: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreServiceIamPolicy(
        localName: 'dataproc_metastore_service_iam_policy',
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreTableIamPolicy(
        localName: 'dataproc_metastore_table_iam_policy',
        databaseId: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
        table: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDatastreamStaticIps(
        localName: 'datastream_static_ips',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDiscoveryEngineDataStore(
        localName: 'discovery_engine_data_store',
        dataStoreId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDiscoveryEngineDataStores(
        localName: 'discovery_engine_data_stores',
      ),
    );

    add(
      DataGoogleDiscoveryEngineSearchEngineIamPolicy(
        localName: 'discovery_engine_search_engine_iam_policy',
        collectionId: TfArg.literal(leftover),
        engineId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDnsKeys(
        localName: 'dns_keys',
        managedZone: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleDnsManagedZone(
        localName: 'dns_managed_zone',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDnsManagedZoneIamPolicy(
        localName: 'dns_managed_zone_iam_policy',
        managedZone: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleDnsManagedZones(localName: 'dns_managed_zones'));

    add(
      DataGoogleDnsRecordSet(
        localName: 'dns_record_set',
        managedZone: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDnsRecordSets(
        localName: 'dns_record_sets',
        managedZone: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleEndpointsServiceConsumersIamPolicy(
        localName: 'endpoints_service_consumers_iam_policy',
        consumerProject: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleEndpointsServiceIamPolicy(
        localName: 'endpoints_service_iam_policy',
        serviceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleEventarcPipelineIamPolicy(
        localName: 'eventarc_pipeline_iam_policy',
        pipelineId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleFilestoreInstance(
        localName: 'filestore_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleFirestoreDocument(
        localName: 'firestore_document',
        collection: TfArg.literal(leftover),
        database: RefTo.literal(leftover),
        documentId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleFolder(localName: 'folder', folder: TfArg.literal(leftover)));

    add(
      DataGoogleFolderIamPolicy(
        localName: 'folder_iam_policy',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleFolderOrganizationPolicy(
        localName: 'folder_organization_policy',
        constraint: TfArg.literal(leftover),
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleFolders(
        localName: 'folders',
        parentId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGeminiRepositoryGroupIamPolicy(
        localName: 'gemini_repository_group_iam_policy',
        codeRepositoryIndex: RefTo.literal(leftover),
        repositoryGroupId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeBackupBackupPlanIamPolicy(
        localName: 'gke_backup_backup_plan_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeBackupRestorePlanIamPolicy(
        localName: 'gke_backup_restore_plan_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubFeature(
        localName: 'gke_hub_feature',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubFeatureIamPolicy(
        localName: 'gke_hub_feature_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubMembership(
        localName: 'gke_hub_membership',
        location: TfArg.literal(leftover),
        membershipId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubMembershipBinding(
        localName: 'gke_hub_membership_binding',
        location: TfArg.literal(leftover),
        membershipBindingId: TfArg.literal(leftover),
        membershipId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubMembershipIamPolicy(
        localName: 'gke_hub_membership_iam_policy',
        membershipId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubScopeIamPolicy(
        localName: 'gke_hub_scope_iam_policy',
        scopeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareConsentStoreIamPolicy(
        localName: 'healthcare_consent_store_iam_policy',
        consentStoreId: TfArg.literal(leftover),
        dataset: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareDatasetIamPolicy(
        localName: 'healthcare_dataset_iam_policy',
        datasetId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareDicomStoreIamPolicy(
        localName: 'healthcare_dicom_store_iam_policy',
        dicomStoreId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareFhirStoreIamPolicy(
        localName: 'healthcare_fhir_store_iam_policy',
        fhirStoreId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareHl7V2StoreIamPolicy(
        localName: 'healthcare_hl7_v2_store_iam_policy',
        hl7V2StoreId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleIamPolicy(localName: 'iam_policy'));

    add(
      DataGoogleIamRole(localName: 'iam_role', name: TfArg.literal(leftover)),
    );

    add(
      DataGoogleIamTestablePermissions(
        localName: 'iam_testable_permissions',
        fullResourceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkforcePoolIamPolicy(
        localName: 'iam_workforce_pool_iam_policy',
        workforcePoolId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPool(
        localName: 'iam_workload_identity_pool',
        workloadIdentityPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPoolIamPolicy(
        localName: 'iam_workload_identity_pool_iam_policy',
        workloadIdentityPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPoolOpenidConfig(
        localName: 'iam_workload_identity_pool_openid_config',
        resourceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPoolProvider(
        localName: 'iam_workload_identity_pool_provider',
        workloadIdentityPoolId: RefTo.literal(leftover),
        workloadIdentityPoolProviderId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryAgentIamPolicy(
        localName: 'iap_agent_registry_agent_iam_policy',
        agentId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryEndpointIamPolicy(
        localName: 'iap_agent_registry_endpoint_iam_policy',
        endpointId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryIamPolicy(
        localName: 'iap_agent_registry_iam_policy',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryMcpServerIamPolicy(
        localName: 'iap_agent_registry_mcp_server_iam_policy',
        mcpServerId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAppEngineServiceIamPolicy(
        localName: 'iap_app_engine_service_iam_policy',
        appId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAppEngineVersionIamPolicy(
        localName: 'iap_app_engine_version_iam_policy',
        appId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
        versionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapLocationWebIamPolicy(
        localName: 'iap_location_web_iam_policy',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapTunnelDestGroupIamPolicy(
        localName: 'iap_tunnel_dest_group_iam_policy',
        destGroup: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleIapTunnelIamPolicy(localName: 'iap_tunnel_iam_policy'));

    add(
      DataGoogleIapTunnelInstanceIamPolicy(
        localName: 'iap_tunnel_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebBackendServiceIamPolicy(
        localName: 'iap_web_backend_service_iam_policy',
        webBackendService: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebCloudRunServiceIamPolicy(
        localName: 'iap_web_cloud_run_service_iam_policy',
        cloudRunServiceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebForwardingRuleServiceIamPolicy(
        localName: 'iap_web_forwarding_rule_service_iam_policy',
        forwardingRuleServiceName: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleIapWebIamPolicy(localName: 'iap_web_iam_policy'));

    add(
      DataGoogleIapWebRegionBackendServiceIamPolicy(
        localName: 'iap_web_region_backend_service_iam_policy',
        webRegionBackendService: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebRegionForwardingRuleServiceIamPolicy(
        localName: 'iap_web_region_forwarding_rule_service_iam_polic',
        forwardingRuleRegionServiceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebTypeAppEngineIamPolicy(
        localName: 'iap_web_type_app_engine_iam_policy',
        appId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebTypeComputeIamPolicy(
        localName: 'iap_web_type_compute_iam_policy',
      ),
    );

    add(
      DataGoogleKmsAutokeyConfig(
        localName: 'kms_autokey_config',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKey(
        localName: 'kms_crypto_key',
        keyRing: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyIamPolicy(
        localName: 'kms_crypto_key_iam_policy',
        cryptoKeyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyLatestVersion(
        localName: 'kms_crypto_key_latest_version',
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyVersion(
        localName: 'kms_crypto_key_version',
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyVersions(
        localName: 'kms_crypto_key_versions',
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeys(
        localName: 'kms_crypto_keys',
        keyRing: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsEkmConnectionIamPolicy(
        localName: 'kms_ekm_connection_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyHandle(
        localName: 'kms_key_handle',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyHandles(
        localName: 'kms_key_handles',
        location: TfArg.literal(leftover),
        resourceTypeSelector: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyRing(
        localName: 'kms_key_ring',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyRingIamPolicy(
        localName: 'kms_key_ring_iam_policy',
        keyRingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyRings(
        localName: 'kms_key_rings',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsSecret(
        localName: 'kms_secret',
        ciphertext: TfArg.literal('dGVycmFkYXJ0'),
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsSecretAsymmetric(
        localName: 'kms_secret_asymmetric',
        ciphertext: TfArg.literal('dGVycmFkYXJ0'),
        cryptoKeyVersion: TfArg.literal(kmsVersion),
      ),
    );

    add(
      DataGoogleKmsSecretCiphertext(
        localName: 'kms_secret_ciphertext',
        cryptoKey: RefTo.literal(leftover),
        plaintext: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingFolderSettings(
        localName: 'logging_folder_settings',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingLogView(
        localName: 'logging_log_view',
        bucket: RefTo.literal(leftover),
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingLogViewIamPolicy(
        localName: 'logging_log_view_iam_policy',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingOrganizationSettings(
        localName: 'logging_organization_settings',
        organization: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingProjectCmekSettings(
        localName: 'logging_project_cmek_settings',
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleLoggingProjectSettings(
        localName: 'logging_project_settings',
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleLoggingSink(
        localName: 'logging_sink',
        id: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLustreInstance(
        localName: 'lustre_instance',
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMemcacheInstance(
        localName: 'memcache_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMemorystoreAclPolicy(
        localName: 'memorystore_acl_policy',
        aclPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMemorystoreInstance(
        localName: 'memorystore_instance',
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringAppEngineService(
        localName: 'monitoring_app_engine_service',
        moduleId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringClusterIstioService(
        localName: 'monitoring_cluster_istio_service',
        clusterName: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringIstioCanonicalService(
        localName: 'monitoring_istio_canonical_service',
        canonicalService: TfArg.literal(leftover),
        canonicalServiceNamespace: TfArg.literal(leftover),
        meshUid: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringMeshIstioService(
        localName: 'monitoring_mesh_istio_service',
        meshUid: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringNotificationChannel(
        localName: 'monitoring_notification_channel',
      ),
    );

    add(
      DataGoogleMonitoringUptimeCheckIps(
        localName: 'monitoring_uptime_check_ips',
      ),
    );

    add(DataGoogleNetblockIpRanges(localName: 'netblock_ip_ranges'));

    add(
      DataGoogleNetworkConnectivityHubIamPolicy(
        localName: 'network_connectivity_hub_iam_policy',
        hub: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleNetworkManagementConnectivityTestRun(
        localName: 'network_management_connectivity_test_run',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleNetworkManagementConnectivityTests(
        localName: 'network_management_connectivity_tests',
      ),
    );

    add(
      DataGoogleNetworkSecurityAddressGroupIamPolicy(
        localName: 'network_security_address_group_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleNetworkSecurityAddressGroups(
        localName: 'network_security_address_groups',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleObservabilityFolderSettings(
        localName: 'observability_folder_settings',
        folder: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleObservabilityOrganizationSettings(
        localName: 'observability_organization_settings',
        location: TfArg.literal(leftover),
        organization: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleObservabilityProjectSettings(
        localName: 'observability_project_settings',
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleOracleDatabaseAutonomousDatabase(
        localName: 'oracle_database_autonomous_database',
        autonomousDatabaseId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseAutonomousDatabases(
        localName: 'oracle_database_autonomous_databases',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudExadataInfrastructure(
        localName: 'oracle_database_cloud_exadata_infrastructure',
        cloudExadataInfrastructureId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudExadataInfrastructures(
        localName: 'oracle_database_cloud_exadata_infrastructures',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudVmCluster(
        localName: 'oracle_database_cloud_vm_cluster',
        cloudVmClusterId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudVmClusters(
        localName: 'oracle_database_cloud_vm_clusters',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseDbNodes(
        localName: 'oracle_database_db_nodes',
        cloudVmCluster: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseDbServers(
        localName: 'oracle_database_db_servers',
        cloudExadataInfrastructure: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseExascaleDbStorageVault(
        localName: 'oracle_database_exascale_db_storage_vault',
        exascaleDbStorageVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseExascaleDbStorageVaults(
        localName: 'oracle_database_exascale_db_storage_vaults',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateConnectionTypes(
        localName: 'oracle_database_goldengate_connection_types',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateDeploymentEnvironments(
        localName: 'oracle_database_goldengate_deployment_environmen',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateDeploymentTypes(
        localName: 'oracle_database_goldengate_deployment_types',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateDeploymentVersions(
        localName: 'oracle_database_goldengate_deployment_versions',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseOdbNetwork(
        localName: 'oracle_database_odb_network',
        location: TfArg.literal(leftover),
        odbNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseOdbSubnet(
        localName: 'oracle_database_odb_subnet',
        location: TfArg.literal(leftover),
        odbSubnetId: TfArg.literal(leftover),
        odbnetwork: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleOrganization(localName: 'organization'));

    add(
      DataGoogleOrganizationIamCustomRole(
        localName: 'organization_iam_custom_role',
        orgId: TfArg.literal(leftover),
        roleId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOrganizationIamCustomRoles(
        localName: 'organization_iam_custom_roles',
      ),
    );

    add(
      DataGoogleOrganizationIamPolicy(
        localName: 'organization_iam_policy',
        orgId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleOrganizations(localName: 'organizations'));

    add(
      DataGoogleParameterManagerParameter(
        localName: 'parameter_manager_parameter',
        parameterId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerParameterVersion(
        localName: 'parameter_manager_parameter_version',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerParameterVersionRender(
        localName: 'parameter_manager_parameter_version_render',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerParameters(
        localName: 'parameter_manager_parameters',
      ),
    );

    add(
      DataGoogleParameterManagerRegionalParameter(
        localName: 'parameter_manager_regional_parameter',
        location: TfArg.literal(leftover),
        parameterId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerRegionalParameterVersion(
        localName: 'parameter_manager_regional_parameter_version',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerRegionalParameterVersionRender(
        localName: 'parameter_manager_regional_parameter_version_ren',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerRegionalParameters(
        localName: 'parameter_manager_regional_parameters',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePrivatecaCaPoolIamPolicy(
        localName: 'privateca_ca_pool_iam_policy',
        caPool: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePrivatecaCertificateAuthority(
        localName: 'privateca_certificate_authority',
      ),
    );

    add(
      DataGooglePrivatecaCertificateTemplateIamPolicy(
        localName: 'privateca_certificate_template_iam_policy',
        certificateTemplate: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePrivilegedAccessManagerEntitlement(
        localName: 'privileged_access_manager_entitlement',
      ),
    );

    add(GoogleProject(localName: 'project'));

    add(DataGoogleProjectAncestry(localName: 'project_ancestry'));

    add(
      DataGoogleProjectIamCustomRole(
        localName: 'project_iam_custom_role',
        roleId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleProjectIamCustomRoles(localName: 'project_iam_custom_roles'));

    add(
      DataGoogleProjectIamPolicy(
        localName: 'project_iam_policy',
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleProjectOrganizationPolicy(
        localName: 'project_organization_policy',
        constraint: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleProjectService(
        localName: 'project_service',
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleProjects(
        localName: 'projects',
        filter: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePubsubSchemaIamPolicy(
        localName: 'pubsub_schema_iam_policy',
        schema: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePubsubSubscription(
        localName: 'pubsub_subscription',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePubsubSubscriptionIamPolicy(
        localName: 'pubsub_subscription_iam_policy',
        subscription: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePubsubTopic(
        localName: 'pubsub_topic',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePubsubTopicIamPolicy(
        localName: 'pubsub_topic_iam_policy',
        topic: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleRedisCluster(
        localName: 'redis_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleRedisClusterAclPolicy(
        localName: 'redis_cluster_acl_policy',
        aclPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleRedisInstance(
        localName: 'redis_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSccSourceIamPolicy(
        localName: 'scc_source_iam_policy',
        organization: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSccV2OrganizationSourceIamPolicy(
        localName: 'scc_v2_organization_source_iam_policy',
        organization: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecret(
        localName: 'secret_manager_regional_secret',
        location: TfArg.literal(leftover),
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecretIamPolicy(
        localName: 'secret_manager_regional_secret_iam_policy',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecretVersion(
        localName: 'secret_manager_regional_secret_version',
        secret: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecretVersionAccess(
        localName: 'secret_manager_regional_secret_version_access',
        secret: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecrets(
        localName: 'secret_manager_regional_secrets',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecret(
        localName: 'secret_manager_secret',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecretIamPolicy(
        localName: 'secret_manager_secret_iam_policy',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecretVersion(
        localName: 'secret_manager_secret_version',
        secret: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecretVersionAccess(
        localName: 'secret_manager_secret_version_access',
        secret: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleSecretManagerSecrets(localName: 'secret_manager_secrets'));

    add(
      DataGoogleSecureSourceManagerInstanceIamPolicy(
        localName: 'secure_source_manager_instance_iam_policy',
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecureSourceManagerRepositoryIamPolicy(
        localName: 'secure_source_manager_repository_iam_policy',
        repositoryId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceAccount(
        localName: 'service_account',
        accountId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceAccountAccessToken(
        localName: 'service_account_access_token',
        scopes: TfArg.literal([leftover]),
        targetServiceAccount: TfArg.literal(saEmail),
      ),
    );

    add(
      DataGoogleServiceAccountIamPolicy(
        localName: 'service_account_iam_policy',
        serviceAccountId: RefTo.literal(saId),
      ),
    );

    add(
      DataGoogleServiceAccountIdToken(
        localName: 'service_account_id_token',
        targetAudience: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceAccountJwt(
        localName: 'service_account_jwt',
        payload: TfArg.literal(leftover),
        targetServiceAccount: TfArg.literal(saEmail),
      ),
    );

    add(
      DataGoogleServiceAccountKey(
        localName: 'service_account_key',
        name: TfArg.literal('$saId/keys/1'),
      ),
    );

    add(DataGoogleServiceAccounts(localName: 'service_accounts'));

    add(
      DataGoogleServiceDirectoryNamespaceIamPolicy(
        localName: 'service_directory_namespace_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceDirectoryServiceIamPolicy(
        localName: 'service_directory_service_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceNetworkingPeeredDnsDomain(
        localName: 'service_networking_peered_dns_domain',
        name: TfArg.literal(leftover),
        network: RefTo.literal('projects/$projectId/global/networks/terradart'),
        project: TfArg.literal(projectId),
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSiteVerificationToken(
        localName: 'site_verification_token',
        identifier: TfArg.literal(leftover),
        type: TfArg.literal('INET_DOMAIN'),
        verificationMethod: TfArg.literal('DNS_TXT'),
      ),
    );

    add(
      DataGoogleSourcerepoRepository(
        localName: 'sourcerepo_repository',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSourcerepoRepositoryIamPolicy(
        localName: 'sourcerepo_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerDatabase(
        localName: 'spanner_database',
        instance: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerDatabaseIamPolicy(
        localName: 'spanner_database_iam_policy',
        database: TfArg.literal(leftover),
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerInstance(
        localName: 'spanner_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerInstanceIamPolicy(
        localName: 'spanner_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlBackupRun(
        localName: 'sql_backup_run',
        instance: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlCaCerts(
        localName: 'sql_ca_certs',
        instance: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlDatabase(
        localName: 'sql_database',
        instance: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlDatabaseInstance(
        localName: 'sql_database_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlDatabaseInstanceLatestRecoveryTime(
        localName: 'sql_database_instance_latest_recovery_time',
        instance: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleSqlDatabaseInstances(localName: 'sql_database_instances'));

    add(
      DataGoogleSqlDatabases(
        localName: 'sql_databases',
        instance: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleSqlTiers(localName: 'sql_tiers'));

    add(
      DataGoogleStorageBucket(
        localName: 'storage_bucket',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageBucketIamPolicy(
        localName: 'storage_bucket_iam_policy',
        bucket: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleStorageBucketObject(localName: 'storage_bucket_object'));

    add(
      DataGoogleStorageBucketObjectContent(
        localName: 'storage_bucket_object_content',
        bucket: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageBucketObjectContents(
        localName: 'storage_bucket_object_contents',
        bucket: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageBucketObjects(
        localName: 'storage_bucket_objects',
        bucket: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleStorageBuckets(localName: 'storage_buckets'));

    add(
      DataGoogleStorageControlFolderIntelligenceConfig(
        localName: 'storage_control_folder_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlFolderIntelligenceFindingsSummary(
        localName: 'storage_control_folder_intelligence_findings_sum',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlOrganizationIntelligenceConfig(
        localName: 'storage_control_organization_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlOrganizationIntelligenceFindingsSummary(
        localName: 'storage_control_organization_intelligence_findin',
        organization: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceConfig(
        localName: 'storage_control_project_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFinding(
        localName: 'storage_control_project_intelligence_finding',
        findingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindingRevision(
        localName: 'storage_control_project_intelligence_finding_rev',
        findingId: TfArg.literal(leftover),
        revisionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindingRevisions(
        localName: 'storage_control_project_intelligence_finding_rev_2',
        findingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindings(
        localName: 'storage_control_project_intelligence_findings',
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindingsSummary(
        localName: 'storage_control_project_intelligence_findings_su',
      ),
    );

    add(
      DataGoogleStorageInsightsDatasetConfig(
        localName: 'storage_insights_dataset_config',
        datasetConfigId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageManagedFolderIamPolicy(
        localName: 'storage_managed_folder_iam_policy',
        bucket: RefTo.literal(leftover),
        managedFolder: TfArg.literal('terradart-leftover/'),
      ),
    );

    add(
      DataGoogleStorageObjectSignedUrl(
        localName: 'storage_object_signed_url',
        bucket: RefTo.literal(leftover),
        path: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageProjectServiceAccount(
        localName: 'storage_project_service_account',
      ),
    );

    add(
      DataGoogleStorageTransferProjectServiceAccount(
        localName: 'storage_transfer_project_service_account',
      ),
    );

    add(
      DataGoogleTagsTagKey(
        localName: 'tags_tag_key',
        parent: TfArg.literal(leftover),
        shortName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagKeyIamPolicy(
        localName: 'tags_tag_key_iam_policy',
        tagKey: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagKeys(
        localName: 'tags_tag_keys',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagValue(
        localName: 'tags_tag_value',
        parent: RefTo.literal(leftover),
        shortName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagValueIamPolicy(
        localName: 'tags_tag_value_iam_policy',
        tagValue: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagValues(
        localName: 'tags_tag_values',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVertexAiIndex(
        localName: 'vertex_ai_index',
        name: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVertexAiReasoningEngineIamPolicy(
        localName: 'vertex_ai_reasoning_engine_iam_policy',
        reasoningEngine: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVertexAiReasoningEngineQuery(
        localName: 'vertex_ai_reasoning_engine_query',
        reasoningEngineId: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineAnnouncements(
        localName: 'vmwareengine_announcements',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineCluster(
        localName: 'vmwareengine_cluster',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineDatastore(
        localName: 'vmwareengine_datastore',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineExternalAccessRule(
        localName: 'vmwareengine_external_access_rule',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineExternalAddress(
        localName: 'vmwareengine_external_address',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNetwork(
        localName: 'vmwareengine_network',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNetworkPeering(
        localName: 'vmwareengine_network_peering',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNetworkPolicy(
        localName: 'vmwareengine_network_policy',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNsxCredentials(
        localName: 'vmwareengine_nsx_credentials',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareenginePrivateCloud(
        localName: 'vmwareengine_private_cloud',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineSubnet(
        localName: 'vmwareengine_subnet',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineUpgrades(
        localName: 'vmwareengine_upgrades',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineVcenterCredentials(
        localName: 'vmwareengine_vcenter_credentials',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVpcAccessConnector(
        localName: 'vpc_access_connector',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleWorkbenchInstanceIamPolicy(
        localName: 'workbench_instance_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleWorkstationsWorkstationConfigIamPolicy(
        localName: 'workstations_workstation_config_iam_policy',
        workstationClusterId: TfArg.literal(leftover),
        workstationConfigId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleWorkstationsWorkstationIamPolicy(
        localName: 'workstations_workstation_iam_policy',
        workstationClusterId: TfArg.literal(leftover),
        workstationConfigId: TfArg.literal(leftover),
        workstationId: TfArg.literal(leftover),
      ),
    );
  }
}
