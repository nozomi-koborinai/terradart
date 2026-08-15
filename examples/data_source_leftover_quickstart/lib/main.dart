/// Data-source leftover quickstart — remaining GA data sources.
///
/// Skip-listed; synth + `terraform validate` only. Do not apply.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/provider.dart';

final class DataSourceLeftoverStack extends Stack {
  DataSourceLeftoverStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // Dummy ids only — this stack is never applied.
    const leftover = 'terradart-leftover';
    final saEmail = 'terradart@$projectId.iam.gserviceaccount.com';
    final saId = 'projects/$projectId/serviceAccounts/$saEmail';
    final kmsVersion =
        'projects/$projectId/locations/us-central1/keyRings/terradart/'
        'cryptoKeys/terradart/cryptoKeyVersions/1';

    addData(
      DataGoogleAccessApprovalFolderServiceAccount(
        localName: 'access_approval_folder_service_account',
        folderId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAccessApprovalOrganizationServiceAccount(
        localName: 'access_approval_organization_service_account',
        organizationId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAccessApprovalProjectServiceAccount(
        localName: 'access_approval_project_service_account',
        projectId: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleAccessContextManagerAccessPolicy(
        localName: 'access_context_manager_access_policy',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAccessContextManagerAccessPolicyIamPolicy(
        localName: 'access_context_manager_access_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAccessContextManagerSupportedService(
        localName: 'access_context_manager_supported_service',
        serviceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAccessContextManagerSupportedServices(
        localName: 'access_context_manager_supported_services',
      ),
    );

    addData(
      DataGoogleActiveFolder(
        localName: 'active_folder',
        displayName: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAgentRegistryAgent(
        localName: 'agent_registry_agent',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAgentRegistryEndpoint(
        localName: 'agent_registry_endpoint',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAgentRegistryMcpServer(
        localName: 'agent_registry_mcp_server',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAlloydbCluster(
        localName: 'alloydb_cluster',
        clusterId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAlloydbInstance(
        localName: 'alloydb_instance',
        clusterId: TfArg.literal(leftover),
        instanceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAlloydbLocations(
        localName: 'alloydb_locations',
      ),
    );

    addData(
      DataGoogleAlloydbSupportedDatabaseFlags(
        localName: 'alloydb_supported_database_flags',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleApigeeEnvironmentIamPolicy(
        localName: 'apigee_environment_iam_policy',
        envId: TfArg.literal(leftover),
        orgId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleApigeeInstance(
        localName: 'apigee_instance',
        name: TfArg.literal(leftover),
        orgId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleAppEngineDefaultServiceAccount(
        localName: 'app_engine_default_service_account',
      ),
    );

    addData(
      DataGoogleApphubApplication(
        localName: 'apphub_application',
        applicationId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleApphubDiscoveredService(
        localName: 'apphub_discovered_service',
        location: TfArg.literal(leftover),
        serviceUri: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleApphubDiscoveredWorkload(
        localName: 'apphub_discovered_workload',
        location: TfArg.literal(leftover),
        workloadUri: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryDockerImage(
        localName: 'artifact_registry_docker_image',
        imageName: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryDockerImages(
        localName: 'artifact_registry_docker_images',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryFile(
        localName: 'artifact_registry_file',
        fileId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        outputPath: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryLocations(
        localName: 'artifact_registry_locations',
      ),
    );

    addData(
      DataGoogleArtifactRegistryMavenArtifact(
        localName: 'artifact_registry_maven_artifact',
        artifactId: TfArg.literal(leftover),
        groupId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryMavenArtifacts(
        localName: 'artifact_registry_maven_artifacts',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryNpmPackage(
        localName: 'artifact_registry_npm_package',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryNpmPackages(
        localName: 'artifact_registry_npm_packages',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryPackage(
        localName: 'artifact_registry_package',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryPackages(
        localName: 'artifact_registry_packages',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryPythonPackage(
        localName: 'artifact_registry_python_package',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryPythonPackages(
        localName: 'artifact_registry_python_packages',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryRepositories(
        localName: 'artifact_registry_repositories',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryRepository(
        localName: 'artifact_registry_repository',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryRepositoryIamPolicy(
        localName: 'artifact_registry_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryTag(
        localName: 'artifact_registry_tag',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
        tagName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryTags(
        localName: 'artifact_registry_tags',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryVersion(
        localName: 'artifact_registry_version',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
        versionName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleArtifactRegistryVersions(
        localName: 'artifact_registry_versions',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrBackup(
        localName: 'backup_dr_backup',
        backupVaultId: TfArg.literal(leftover),
        dataSourceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleBackupDrBackupPlan(
        localName: 'backup_dr_backup_plan',
        backupPlanId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrBackupPlanAssociation(
        localName: 'backup_dr_backup_plan_association',
        backupPlanAssociationId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrBackupPlanAssociations(
        localName: 'backup_dr_backup_plan_associations',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrBackupVault(
        localName: 'backup_dr_backup_vault',
        backupVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrDataSource(
        localName: 'backup_dr_data_source',
        backupVaultId: TfArg.literal(leftover),
        dataSourceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrDataSourceReference(
        localName: 'backup_dr_data_source_reference',
        dataSourceReferenceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrDataSourceReferences(
        localName: 'backup_dr_data_source_references',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrDataSources(
        localName: 'backup_dr_data_sources',
        backupVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBackupDrManagementServer(
        localName: 'backup_dr_management_server',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBeyondcorpAppConnection(
        localName: 'beyondcorp_app_connection',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBeyondcorpAppConnector(
        localName: 'beyondcorp_app_connector',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBeyondcorpAppGateway(
        localName: 'beyondcorp_app_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBeyondcorpSecurityGateway(
        localName: 'beyondcorp_security_gateway',
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBeyondcorpSecurityGatewayApplicationIamPolicy(
        localName: 'beyondcorp_security_gateway_application_iam_poli',
        applicationId: TfArg.literal(leftover),
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBeyondcorpSecurityGatewayIamPolicy(
        localName: 'beyondcorp_security_gateway_iam_policy',
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBiglakeIcebergCatalogIamPolicy(
        localName: 'biglake_iceberg_catalog_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBiglakeIcebergNamespaceIamPolicy(
        localName: 'biglake_iceberg_namespace_iam_policy',
        catalog: TfArg.literal(leftover),
        namespaceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBiglakeIcebergTableIamPolicy(
        localName: 'biglake_iceberg_table_iam_policy',
        catalog: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        namespace: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryAnalyticsHubDataExchangeIamPolicy(
        localName: 'bigquery_analytics_hub_data_exchange_iam_policy',
        dataExchangeId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryAnalyticsHubListingIamPolicy(
        localName: 'bigquery_analytics_hub_listing_iam_policy',
        dataExchangeId: TfArg.literal(leftover),
        listingId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryConnectionIamPolicy(
        localName: 'bigquery_connection_iam_policy',
        connectionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryDatapolicyDataPolicyIamPolicy(
        localName: 'bigquery_datapolicy_data_policy_iam_policy',
        dataPolicyId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryDatapolicyv2DataPolicyIamPolicy(
        localName: 'bigquery_datapolicyv2_data_policy_iam_policy',
        dataPolicyId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryDataset(
        localName: 'bigquery_dataset',
        datasetId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryDatasetIamPolicy(
        localName: 'bigquery_dataset_iam_policy',
        datasetId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryDatasets(
        localName: 'bigquery_datasets',
      ),
    );

    addData(
      DataGoogleBigqueryDefaultServiceAccount(
        localName: 'bigquery_default_service_account',
      ),
    );

    addData(
      DataGoogleBigqueryRoutineIamPolicy(
        localName: 'bigquery_routine_iam_policy',
        datasetId: TfArg.literal(leftover),
        routineId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryTable(
        localName: 'bigquery_table',
        datasetId: TfArg.literal(leftover),
        tableId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryTableIamPolicy(
        localName: 'bigquery_table_iam_policy',
        datasetId: TfArg.literal(leftover),
        tableId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigqueryTables(
        localName: 'bigquery_tables',
        datasetId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigtableInstanceIamPolicy(
        localName: 'bigtable_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBigtableTableIamPolicy(
        localName: 'bigtable_table_iam_policy',
        instanceName: TfArg.literal(leftover),
        table: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBillingAccount(
        localName: 'billing_account',
      ),
    );

    addData(
      DataGoogleBillingAccountIamPolicy(
        localName: 'billing_account_iam_policy',
        billingAccountId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleBinaryAuthorizationAttestorIamPolicy(
        localName: 'binary_authorization_attestor_iam_policy',
        attestor: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCertificateManagerCertificateMap(
        localName: 'certificate_manager_certificate_map',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCertificateManagerCertificates(
        localName: 'certificate_manager_certificates',
      ),
    );

    addData(
      DataGoogleCertificateManagerDnsAuthorization(
        localName: 'certificate_manager_dns_authorization',
        domain: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleClientConfig(
        localName: 'client_config',
      ),
    );

    addData(
      DataGoogleClientOpenidUserinfo(
        localName: 'client_openid_userinfo',
      ),
    );

    addData(
      DataGoogleCloudAssetSearchAllResources(
        localName: 'cloud_asset_search_all_resources',
        scope: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudIdentityGroupLookup(
        localName: 'cloud_identity_group_lookup',
        groupKey: TfArg.literal(<String, dynamic>{'id': leftover}),
      ),
    );

    addData(
      DataGoogleCloudIdentityGroupMemberships(
        localName: 'cloud_identity_group_memberships',
        group: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudIdentityGroupTransitiveMemberships(
        localName: 'cloud_identity_group_transitive_memberships',
        group: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudIdentityGroups(
        localName: 'cloud_identity_groups',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudIdentityPolicies(
        localName: 'cloud_identity_policies',
      ),
    );

    addData(
      DataGoogleCloudIdentityPolicy(
        localName: 'cloud_identity_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudQuotasQuotaInfo(
        localName: 'cloud_quotas_quota_info',
        parent: TfArg.literal(leftover),
        quotaId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudQuotasQuotaInfos(
        localName: 'cloud_quotas_quota_infos',
        parent: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunLocations(
        localName: 'cloud_run_locations',
      ),
    );

    addData(
      DataGoogleCloudRunService(
        localName: 'cloud_run_service',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunServiceIamPolicy(
        localName: 'cloud_run_service_iam_policy',
        service: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunV2Job(
        localName: 'cloud_run_v2_job',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunV2JobIamPolicy(
        localName: 'cloud_run_v2_job_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunV2Service(
        localName: 'cloud_run_v2_service',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunV2ServiceIamPolicy(
        localName: 'cloud_run_v2_service_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunV2WorkerPool(
        localName: 'cloud_run_v2_worker_pool',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudRunV2WorkerPoolIamPolicy(
        localName: 'cloud_run_v2_worker_pool_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudTasksQueueIamPolicy(
        localName: 'cloud_tasks_queue_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudbuildTrigger(
        localName: 'cloudbuild_trigger',
        location: TfArg.literal(leftover),
        triggerId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudbuildv2ConnectionIamPolicy(
        localName: 'cloudbuildv2_connection_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleClouddeployCustomTargetTypeIamPolicy(
        localName: 'clouddeploy_custom_target_type_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleClouddeployDeliveryPipelineIamPolicy(
        localName: 'clouddeploy_delivery_pipeline_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleClouddeployTargetIamPolicy(
        localName: 'clouddeploy_target_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudfunctions2Function(
        localName: 'cloudfunctions2_function',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudfunctions2FunctionIamPolicy(
        localName: 'cloudfunctions2_function_iam_policy',
        cloudFunction: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudfunctionsFunction(
        localName: 'cloudfunctions_function',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleCloudfunctionsFunctionIamPolicy(
        localName: 'cloudfunctions_function_iam_policy',
        cloudFunction: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleColabRuntimeTemplateIamPolicy(
        localName: 'colab_runtime_template_iam_policy',
        runtimeTemplate: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComposerEnvironment(
        localName: 'composer_environment',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComposerImageVersions(
        localName: 'composer_image_versions',
      ),
    );

    addData(
      DataGoogleComposerUserWorkloadsConfigMap(
        localName: 'composer_user_workloads_config_map',
        environment: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComposerUserWorkloadsSecret(
        localName: 'composer_user_workloads_secret',
        environment: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeAddress(
        localName: 'compute_address',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeAddresses(
        localName: 'compute_addresses',
      ),
    );

    addData(
      DataGoogleComputeBackendBucket(
        localName: 'compute_backend_bucket',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeBackendService(
        localName: 'compute_backend_service',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeDefaultServiceAccount(
        localName: 'compute_default_service_account',
      ),
    );

    addData(
      DataGoogleComputeDisk(
        localName: 'compute_disk',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeDiskIamPolicy(
        localName: 'compute_disk_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeFirewallPolicyIamPolicy(
        localName: 'compute_firewall_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeForwardingRule(
        localName: 'compute_forwarding_rule',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeForwardingRules(
        localName: 'compute_forwarding_rules',
      ),
    );

    addData(
      DataGoogleComputeGlobalAddress(
        localName: 'compute_global_address',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeGlobalForwardingRule(
        localName: 'compute_global_forwarding_rule',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeHaVpnGateway(
        localName: 'compute_ha_vpn_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeHealthCheck(
        localName: 'compute_health_check',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeImage(
        localName: 'compute_image',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeImageIamPolicy(
        localName: 'compute_image_iam_policy',
        image: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeImages(
        localName: 'compute_images',
      ),
    );

    addData(
      DataGoogleComputeInstance(
        localName: 'compute_instance',
      ),
    );

    addData(
      DataGoogleComputeInstanceGroup(
        localName: 'compute_instance_group',
      ),
    );

    addData(
      DataGoogleComputeInstanceGroupManager(
        localName: 'compute_instance_group_manager',
      ),
    );

    addData(
      DataGoogleComputeInstanceGroups(
        localName: 'compute_instance_groups',
      ),
    );

    addData(
      DataGoogleComputeInstanceGuestAttributes(
        localName: 'compute_instance_guest_attributes',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeInstanceIamPolicy(
        localName: 'compute_instance_iam_policy',
        instanceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeInstanceSerialPort(
        localName: 'compute_instance_serial_port',
        instance: TfArg.literal(leftover),
        port: TfArg.literal(1),
      ),
    );

    addData(
      DataGoogleComputeInstanceTemplate(
        localName: 'compute_instance_template',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeInstanceTemplateIamPolicy(
        localName: 'compute_instance_template_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeInstantSnapshotIamPolicy(
        localName: 'compute_instant_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeInterconnectLocation(
        localName: 'compute_interconnect_location',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeInterconnectLocations(
        localName: 'compute_interconnect_locations',
      ),
    );

    addData(
      DataGoogleComputeLbIpRanges(
        localName: 'compute_lb_ip_ranges',
      ),
    );

    addData(
      DataGoogleComputeMachineTypes(
        localName: 'compute_machine_types',
      ),
    );

    addData(
      DataGoogleComputeNetwork(
        localName: 'compute_network',
      ),
    );

    addData(
      DataGoogleComputeNetworkAttachment(
        localName: 'compute_network_attachment',
        name: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeNetworkEndpointGroup(
        localName: 'compute_network_endpoint_group',
      ),
    );

    addData(
      DataGoogleComputeNetworkEndpointGroups(
        localName: 'compute_network_endpoint_groups',
      ),
    );

    addData(
      DataGoogleComputeNetworkFirewallPolicyIamPolicy(
        localName: 'compute_network_firewall_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeNetworkPeering(
        localName: 'compute_network_peering',
        name: TfArg.literal(leftover),
        network: TfArg.literal('projects/$projectId/global/networks/terradart'),
      ),
    );

    addData(
      DataGoogleComputeNetworks(
        localName: 'compute_networks',
      ),
    );

    addData(
      DataGoogleComputeNodeTypes(
        localName: 'compute_node_types',
      ),
    );

    addData(
      DataGoogleComputeRegionBackendService(
        localName: 'compute_region_backend_service',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionDisk(
        localName: 'compute_region_disk',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionDiskIamPolicy(
        localName: 'compute_region_disk_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionInstanceGroup(
        localName: 'compute_region_instance_group',
      ),
    );

    addData(
      DataGoogleComputeRegionInstanceGroupManager(
        localName: 'compute_region_instance_group_manager',
      ),
    );

    addData(
      DataGoogleComputeRegionInstanceTemplate(
        localName: 'compute_region_instance_template',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionInstantSnapshotIamPolicy(
        localName: 'compute_region_instant_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionNetworkEndpointGroup(
        localName: 'compute_region_network_endpoint_group',
      ),
    );

    addData(
      DataGoogleComputeRegionNetworkFirewallPolicyIamPolicy(
        localName: 'compute_region_network_firewall_policy_iam_polic',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionSecurityPolicy(
        localName: 'compute_region_security_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionSslCertificate(
        localName: 'compute_region_ssl_certificate',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionSslPolicy(
        localName: 'compute_region_ssl_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionTargetHttpProxy(
        localName: 'compute_region_target_http_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegionTargetHttpsProxy(
        localName: 'compute_region_target_https_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRegions(
        localName: 'compute_regions',
      ),
    );

    addData(
      DataGoogleComputeReservation(
        localName: 'compute_reservation',
        name: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeReservationBlock(
        localName: 'compute_reservation_block',
        name: TfArg.literal(leftover),
        reservation: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeReservationSubBlock(
        localName: 'compute_reservation_sub_block',
        name: TfArg.literal(leftover),
        reservation: TfArg.literal(leftover),
        reservationBlock: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeResourcePolicy(
        localName: 'compute_resource_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRouter(
        localName: 'compute_router',
        name: TfArg.literal(leftover),
        network: TfArg.literal('projects/$projectId/global/networks/terradart'),
      ),
    );

    addData(
      DataGoogleComputeRouterNat(
        localName: 'compute_router_nat',
        name: TfArg.literal(leftover),
        router: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRouterStatus(
        localName: 'compute_router_status',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeRouters(
        localName: 'compute_routers',
      ),
    );

    addData(
      DataGoogleComputeSecurityPolicy(
        localName: 'compute_security_policy',
      ),
    );

    addData(
      DataGoogleComputeServiceAttachment(
        localName: 'compute_service_attachment',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeSnapshot(
        localName: 'compute_snapshot',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeSnapshotIamPolicy(
        localName: 'compute_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeSslCertificate(
        localName: 'compute_ssl_certificate',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeSslPolicy(
        localName: 'compute_ssl_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeStoragePool(
        localName: 'compute_storage_pool',
        name: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeStoragePoolIamPolicy(
        localName: 'compute_storage_pool_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeStoragePoolTypes(
        localName: 'compute_storage_pool_types',
        storagePoolType: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeSubnetwork(
        localName: 'compute_subnetwork',
      ),
    );

    addData(
      DataGoogleComputeSubnetworkIamPolicy(
        localName: 'compute_subnetwork_iam_policy',
        subnetwork: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeSubnetworks(
        localName: 'compute_subnetworks',
      ),
    );

    addData(
      DataGoogleComputeTargetHttpProxy(
        localName: 'compute_target_http_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeTargetHttpsProxy(
        localName: 'compute_target_https_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeVpnGateway(
        localName: 'compute_vpn_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleComputeZones(
        localName: 'compute_zones',
      ),
    );

    addData(
      DataGoogleContainerAnalysisNoteIamPolicy(
        localName: 'container_analysis_note_iam_policy',
        note: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleContainerAttachedInstallManifest(
        localName: 'container_attached_install_manifest',
        clusterId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        platformVersion: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleContainerAttachedVersions(
        localName: 'container_attached_versions',
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleContainerAwsVersions(
        localName: 'container_aws_versions',
      ),
    );

    addData(
      DataGoogleContainerAzureVersions(
        localName: 'container_azure_versions',
      ),
    );

    addData(
      DataGoogleContainerCluster(
        localName: 'container_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleContainerEngineVersions(
        localName: 'container_engine_versions',
      ),
    );

    addData(
      DataGoogleContainerRegistryImage(
        localName: 'container_registry_image',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleContainerRegistryRepository(
        localName: 'container_registry_repository',
      ),
    );

    addData(
      DataGoogleDataCatalogEntryGroupIamPolicy(
        localName: 'data_catalog_entry_group_iam_policy',
        entryGroup: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataCatalogPolicyTagIamPolicy(
        localName: 'data_catalog_policy_tag_iam_policy',
        policyTag: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataCatalogTagTemplateIamPolicy(
        localName: 'data_catalog_tag_template_iam_policy',
        tagTemplate: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataCatalogTaxonomy(
        localName: 'data_catalog_taxonomy',
        displayName: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataCatalogTaxonomyIamPolicy(
        localName: 'data_catalog_taxonomy_iam_policy',
        taxonomy: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataFusionInstanceIamPolicy(
        localName: 'data_fusion_instance_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataLineageConfig(
        localName: 'data_lineage_config',
        location: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexAspectTypeIamPolicy(
        localName: 'dataplex_aspect_type_iam_policy',
        aspectTypeId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexAssetIamPolicy(
        localName: 'dataplex_asset_iam_policy',
        asset: TfArg.literal(leftover),
        dataplexZone: TfArg.literal(leftover),
        lake: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexDataProductIamPolicy(
        localName: 'dataplex_data_product_iam_policy',
        dataProductId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexDataQualityRules(
        localName: 'dataplex_data_quality_rules',
        dataScanId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexDatascanIamPolicy(
        localName: 'dataplex_datascan_iam_policy',
        dataScanId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexEntryGroupIamPolicy(
        localName: 'dataplex_entry_group_iam_policy',
        entryGroupId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexEntryTypeIamPolicy(
        localName: 'dataplex_entry_type_iam_policy',
        entryTypeId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexGlossaryIamPolicy(
        localName: 'dataplex_glossary_iam_policy',
        glossaryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexLakeIamPolicy(
        localName: 'dataplex_lake_iam_policy',
        lake: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexTaskIamPolicy(
        localName: 'dataplex_task_iam_policy',
        lake: TfArg.literal(leftover),
        taskId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataplexZoneIamPolicy(
        localName: 'dataplex_zone_iam_policy',
        dataplexZone: TfArg.literal(leftover),
        lake: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocAutoscalingPolicyIamPolicy(
        localName: 'dataproc_autoscaling_policy_iam_policy',
        policyId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocClusterIamPolicy(
        localName: 'dataproc_cluster_iam_policy',
        cluster: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocJobIamPolicy(
        localName: 'dataproc_job_iam_policy',
        jobId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocMetastoreDatabaseIamPolicy(
        localName: 'dataproc_metastore_database_iam_policy',
        database: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocMetastoreFederationIamPolicy(
        localName: 'dataproc_metastore_federation_iam_policy',
        federationId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocMetastoreService(
        localName: 'dataproc_metastore_service',
        location: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocMetastoreServiceIamPolicy(
        localName: 'dataproc_metastore_service_iam_policy',
        serviceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDataprocMetastoreTableIamPolicy(
        localName: 'dataproc_metastore_table_iam_policy',
        databaseId: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
        table: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDatastreamStaticIps(
        localName: 'datastream_static_ips',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDiscoveryEngineDataStore(
        localName: 'discovery_engine_data_store',
        dataStoreId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDiscoveryEngineDataStores(
        localName: 'discovery_engine_data_stores',
      ),
    );

    addData(
      DataGoogleDiscoveryEngineSearchEngineIamPolicy(
        localName: 'discovery_engine_search_engine_iam_policy',
        collectionId: TfArg.literal(leftover),
        engineId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDnsKeys(
        localName: 'dns_keys',
        managedZone: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDnsManagedZone(
        localName: 'dns_managed_zone',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDnsManagedZoneIamPolicy(
        localName: 'dns_managed_zone_iam_policy',
        managedZone: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDnsManagedZones(
        localName: 'dns_managed_zones',
      ),
    );

    addData(
      DataGoogleDnsRecordSet(
        localName: 'dns_record_set',
        managedZone: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleDnsRecordSets(
        localName: 'dns_record_sets',
        managedZone: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleEndpointsServiceConsumersIamPolicy(
        localName: 'endpoints_service_consumers_iam_policy',
        consumerProject: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleEndpointsServiceIamPolicy(
        localName: 'endpoints_service_iam_policy',
        serviceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleFilestoreInstance(
        localName: 'filestore_instance',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleFirestoreDocument(
        localName: 'firestore_document',
        collection: TfArg.literal(leftover),
        database: TfArg.literal(leftover),
        documentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleFolder(
        localName: 'folder',
        folder: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleFolderIamPolicy(
        localName: 'folder_iam_policy',
        folder: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleFolderOrganizationPolicy(
        localName: 'folder_organization_policy',
        constraint: TfArg.literal(leftover),
        folder: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleFolders(
        localName: 'folders',
        parentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGeminiRepositoryGroupIamPolicy(
        localName: 'gemini_repository_group_iam_policy',
        codeRepositoryIndex: TfArg.literal(leftover),
        repositoryGroupId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeBackupBackupPlanIamPolicy(
        localName: 'gke_backup_backup_plan_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeBackupRestorePlanIamPolicy(
        localName: 'gke_backup_restore_plan_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeHubFeature(
        localName: 'gke_hub_feature',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeHubFeatureIamPolicy(
        localName: 'gke_hub_feature_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeHubMembership(
        localName: 'gke_hub_membership',
        location: TfArg.literal(leftover),
        membershipId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeHubMembershipBinding(
        localName: 'gke_hub_membership_binding',
        location: TfArg.literal(leftover),
        membershipBindingId: TfArg.literal(leftover),
        membershipId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeHubMembershipIamPolicy(
        localName: 'gke_hub_membership_iam_policy',
        membershipId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleGkeHubScopeIamPolicy(
        localName: 'gke_hub_scope_iam_policy',
        scopeId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleHealthcareConsentStoreIamPolicy(
        localName: 'healthcare_consent_store_iam_policy',
        consentStoreId: TfArg.literal(leftover),
        dataset: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleHealthcareDatasetIamPolicy(
        localName: 'healthcare_dataset_iam_policy',
        datasetId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleHealthcareDicomStoreIamPolicy(
        localName: 'healthcare_dicom_store_iam_policy',
        dicomStoreId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleHealthcareFhirStoreIamPolicy(
        localName: 'healthcare_fhir_store_iam_policy',
        fhirStoreId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleHealthcareHl7V2StoreIamPolicy(
        localName: 'healthcare_hl7_v2_store_iam_policy',
        hl7V2StoreId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIamPolicy(
        localName: 'iam_policy',
      ),
    );

    addData(
      DataGoogleIamRole(
        localName: 'iam_role',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIamTestablePermissions(
        localName: 'iam_testable_permissions',
        fullResourceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIamWorkforcePoolIamPolicy(
        localName: 'iam_workforce_pool_iam_policy',
        workforcePoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIamWorkloadIdentityPool(
        localName: 'iam_workload_identity_pool',
        workloadIdentityPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIamWorkloadIdentityPoolIamPolicy(
        localName: 'iam_workload_identity_pool_iam_policy',
        workloadIdentityPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIamWorkloadIdentityPoolProvider(
        localName: 'iam_workload_identity_pool_provider',
        workloadIdentityPoolId: TfArg.literal(leftover),
        workloadIdentityPoolProviderId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapAgentRegistryAgentIamPolicy(
        localName: 'iap_agent_registry_agent_iam_policy',
        agentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapAgentRegistryEndpointIamPolicy(
        localName: 'iap_agent_registry_endpoint_iam_policy',
        endpointId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapAgentRegistryIamPolicy(
        localName: 'iap_agent_registry_iam_policy',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapAgentRegistryMcpServerIamPolicy(
        localName: 'iap_agent_registry_mcp_server_iam_policy',
        mcpServerId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapAppEngineServiceIamPolicy(
        localName: 'iap_app_engine_service_iam_policy',
        appId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapAppEngineVersionIamPolicy(
        localName: 'iap_app_engine_version_iam_policy',
        appId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
        versionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapClient(
        localName: 'iap_client',
        brand: TfArg.literal(leftover),
        clientId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapLocationWebIamPolicy(
        localName: 'iap_location_web_iam_policy',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapTunnelDestGroupIamPolicy(
        localName: 'iap_tunnel_dest_group_iam_policy',
        destGroup: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapTunnelIamPolicy(
        localName: 'iap_tunnel_iam_policy',
      ),
    );

    addData(
      DataGoogleIapTunnelInstanceIamPolicy(
        localName: 'iap_tunnel_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapWebBackendServiceIamPolicy(
        localName: 'iap_web_backend_service_iam_policy',
        webBackendService: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapWebCloudRunServiceIamPolicy(
        localName: 'iap_web_cloud_run_service_iam_policy',
        cloudRunServiceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapWebForwardingRuleServiceIamPolicy(
        localName: 'iap_web_forwarding_rule_service_iam_policy',
        forwardingRuleServiceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapWebIamPolicy(
        localName: 'iap_web_iam_policy',
      ),
    );

    addData(
      DataGoogleIapWebRegionBackendServiceIamPolicy(
        localName: 'iap_web_region_backend_service_iam_policy',
        webRegionBackendService: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapWebRegionForwardingRuleServiceIamPolicy(
        localName: 'iap_web_region_forwarding_rule_service_iam_polic',
        forwardingRuleRegionServiceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapWebTypeAppEngineIamPolicy(
        localName: 'iap_web_type_app_engine_iam_policy',
        appId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleIapWebTypeComputeIamPolicy(
        localName: 'iap_web_type_compute_iam_policy',
      ),
    );

    addData(
      DataGoogleKmsAutokeyConfig(
        localName: 'kms_autokey_config',
        folder: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsCryptoKey(
        localName: 'kms_crypto_key',
        keyRing: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsCryptoKeyIamPolicy(
        localName: 'kms_crypto_key_iam_policy',
        cryptoKeyId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsCryptoKeyLatestVersion(
        localName: 'kms_crypto_key_latest_version',
        cryptoKey: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsCryptoKeyVersion(
        localName: 'kms_crypto_key_version',
        cryptoKey: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsCryptoKeyVersions(
        localName: 'kms_crypto_key_versions',
        cryptoKey: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsCryptoKeys(
        localName: 'kms_crypto_keys',
        keyRing: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsEkmConnectionIamPolicy(
        localName: 'kms_ekm_connection_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsKeyHandle(
        localName: 'kms_key_handle',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsKeyHandles(
        localName: 'kms_key_handles',
        location: TfArg.literal(leftover),
        resourceTypeSelector: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsKeyRing(
        localName: 'kms_key_ring',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsKeyRingIamPolicy(
        localName: 'kms_key_ring_iam_policy',
        keyRingId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsKeyRings(
        localName: 'kms_key_rings',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsSecret(
        localName: 'kms_secret',
        ciphertext: TfArg.literal('dGVycmFkYXJ0'),
        cryptoKey: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleKmsSecretAsymmetric(
        localName: 'kms_secret_asymmetric',
        ciphertext: TfArg.literal('dGVycmFkYXJ0'),
        cryptoKeyVersion: TfArg.literal(kmsVersion),
      ),
    );

    addData(
      DataGoogleKmsSecretCiphertext(
        localName: 'kms_secret_ciphertext',
        cryptoKey: TfArg.literal(leftover),
        plaintext: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleLoggingFolderSettings(
        localName: 'logging_folder_settings',
        folder: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleLoggingLogView(
        localName: 'logging_log_view',
        bucket: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleLoggingLogViewIamPolicy(
        localName: 'logging_log_view_iam_policy',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleLoggingOrganizationSettings(
        localName: 'logging_organization_settings',
        organization: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleLoggingProjectCmekSettings(
        localName: 'logging_project_cmek_settings',
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleLoggingProjectSettings(
        localName: 'logging_project_settings',
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleLoggingSink(
        localName: 'logging_sink',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleLustreInstance(
        localName: 'lustre_instance',
        instanceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleMemcacheInstance(
        localName: 'memcache_instance',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleMemorystoreInstance(
        localName: 'memorystore_instance',
        instanceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleMonitoringAppEngineService(
        localName: 'monitoring_app_engine_service',
        moduleId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleMonitoringClusterIstioService(
        localName: 'monitoring_cluster_istio_service',
        clusterName: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleMonitoringIstioCanonicalService(
        localName: 'monitoring_istio_canonical_service',
        canonicalService: TfArg.literal(leftover),
        canonicalServiceNamespace: TfArg.literal(leftover),
        meshUid: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleMonitoringMeshIstioService(
        localName: 'monitoring_mesh_istio_service',
        meshUid: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleMonitoringNotificationChannel(
        localName: 'monitoring_notification_channel',
      ),
    );

    addData(
      DataGoogleMonitoringUptimeCheckIps(
        localName: 'monitoring_uptime_check_ips',
      ),
    );

    addData(
      DataGoogleNetblockIpRanges(
        localName: 'netblock_ip_ranges',
      ),
    );

    addData(
      DataGoogleNetworkConnectivityHubIamPolicy(
        localName: 'network_connectivity_hub_iam_policy',
        hub: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleNetworkManagementConnectivityTestRun(
        localName: 'network_management_connectivity_test_run',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleNetworkManagementConnectivityTests(
        localName: 'network_management_connectivity_tests',
      ),
    );

    addData(
      DataGoogleNetworkSecurityAddressGroupIamPolicy(
        localName: 'network_security_address_group_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleNetworkSecurityAddressGroups(
        localName: 'network_security_address_groups',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleNotebooksInstanceIamPolicy(
        localName: 'notebooks_instance_iam_policy',
        instanceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleNotebooksRuntimeIamPolicy(
        localName: 'notebooks_runtime_iam_policy',
        runtimeName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseAutonomousDatabase(
        localName: 'oracle_database_autonomous_database',
        autonomousDatabaseId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseAutonomousDatabases(
        localName: 'oracle_database_autonomous_databases',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseCloudExadataInfrastructure(
        localName: 'oracle_database_cloud_exadata_infrastructure',
        cloudExadataInfrastructureId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseCloudExadataInfrastructures(
        localName: 'oracle_database_cloud_exadata_infrastructures',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseCloudVmCluster(
        localName: 'oracle_database_cloud_vm_cluster',
        cloudVmClusterId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseCloudVmClusters(
        localName: 'oracle_database_cloud_vm_clusters',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseDbNodes(
        localName: 'oracle_database_db_nodes',
        cloudVmCluster: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseDbServers(
        localName: 'oracle_database_db_servers',
        cloudExadataInfrastructure: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseExascaleDbStorageVault(
        localName: 'oracle_database_exascale_db_storage_vault',
        exascaleDbStorageVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseExascaleDbStorageVaults(
        localName: 'oracle_database_exascale_db_storage_vaults',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseGoldengateConnectionTypes(
        localName: 'oracle_database_goldengate_connection_types',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseGoldengateDeploymentEnvironments(
        localName: 'oracle_database_goldengate_deployment_environmen',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseGoldengateDeploymentTypes(
        localName: 'oracle_database_goldengate_deployment_types',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseGoldengateDeploymentVersions(
        localName: 'oracle_database_goldengate_deployment_versions',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseOdbNetwork(
        localName: 'oracle_database_odb_network',
        location: TfArg.literal(leftover),
        odbNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOracleDatabaseOdbSubnet(
        localName: 'oracle_database_odb_subnet',
        location: TfArg.literal(leftover),
        odbSubnetId: TfArg.literal(leftover),
        odbnetwork: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOrganization(
        localName: 'organization',
      ),
    );

    addData(
      DataGoogleOrganizationIamCustomRole(
        localName: 'organization_iam_custom_role',
        orgId: TfArg.literal(leftover),
        roleId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOrganizationIamCustomRoles(
        localName: 'organization_iam_custom_roles',
      ),
    );

    addData(
      DataGoogleOrganizationIamPolicy(
        localName: 'organization_iam_policy',
        orgId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleOrganizations(
        localName: 'organizations',
      ),
    );

    addData(
      DataGoogleParameterManagerParameter(
        localName: 'parameter_manager_parameter',
        parameterId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleParameterManagerParameterVersion(
        localName: 'parameter_manager_parameter_version',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleParameterManagerParameterVersionRender(
        localName: 'parameter_manager_parameter_version_render',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleParameterManagerParameters(
        localName: 'parameter_manager_parameters',
      ),
    );

    addData(
      DataGoogleParameterManagerRegionalParameter(
        localName: 'parameter_manager_regional_parameter',
        location: TfArg.literal(leftover),
        parameterId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleParameterManagerRegionalParameterVersion(
        localName: 'parameter_manager_regional_parameter_version',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleParameterManagerRegionalParameterVersionRender(
        localName: 'parameter_manager_regional_parameter_version_ren',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleParameterManagerRegionalParameters(
        localName: 'parameter_manager_regional_parameters',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePrivatecaCaPoolIamPolicy(
        localName: 'privateca_ca_pool_iam_policy',
        caPool: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePrivatecaCertificateAuthority(
        localName: 'privateca_certificate_authority',
      ),
    );

    addData(
      DataGooglePrivatecaCertificateTemplateIamPolicy(
        localName: 'privateca_certificate_template_iam_policy',
        certificateTemplate: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePrivilegedAccessManagerEntitlement(
        localName: 'privileged_access_manager_entitlement',
      ),
    );

    addData(
      GoogleProject(
        localName: 'project',
      ),
    );

    addData(
      DataGoogleProjectAncestry(
        localName: 'project_ancestry',
      ),
    );

    addData(
      DataGoogleProjectIamCustomRole(
        localName: 'project_iam_custom_role',
        roleId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleProjectIamCustomRoles(
        localName: 'project_iam_custom_roles',
      ),
    );

    addData(
      DataGoogleProjectIamPolicy(
        localName: 'project_iam_policy',
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleProjectOrganizationPolicy(
        localName: 'project_organization_policy',
        constraint: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    addData(
      DataGoogleProjectService(
        localName: 'project_service',
        service: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleProjects(
        localName: 'projects',
        filter: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePubsubSchemaIamPolicy(
        localName: 'pubsub_schema_iam_policy',
        schema: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePubsubSubscription(
        localName: 'pubsub_subscription',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePubsubSubscriptionIamPolicy(
        localName: 'pubsub_subscription_iam_policy',
        subscription: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePubsubTopic(
        localName: 'pubsub_topic',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGooglePubsubTopicIamPolicy(
        localName: 'pubsub_topic_iam_policy',
        topic: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleRedisCluster(
        localName: 'redis_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleRedisInstance(
        localName: 'redis_instance',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSccSourceIamPolicy(
        localName: 'scc_source_iam_policy',
        organization: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSccV2OrganizationSourceIamPolicy(
        localName: 'scc_v2_organization_source_iam_policy',
        organization: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerRegionalSecret(
        localName: 'secret_manager_regional_secret',
        location: TfArg.literal(leftover),
        secretId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerRegionalSecretIamPolicy(
        localName: 'secret_manager_regional_secret_iam_policy',
        secretId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerRegionalSecretVersion(
        localName: 'secret_manager_regional_secret_version',
        secret: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerRegionalSecretVersionAccess(
        localName: 'secret_manager_regional_secret_version_access',
        secret: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerRegionalSecrets(
        localName: 'secret_manager_regional_secrets',
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerSecret(
        localName: 'secret_manager_secret',
        secretId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerSecretIamPolicy(
        localName: 'secret_manager_secret_iam_policy',
        secretId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerSecretVersion(
        localName: 'secret_manager_secret_version',
        secret: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerSecretVersionAccess(
        localName: 'secret_manager_secret_version_access',
        secret: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecretManagerSecrets(
        localName: 'secret_manager_secrets',
      ),
    );

    addData(
      DataGoogleSecureSourceManagerInstanceIamPolicy(
        localName: 'secure_source_manager_instance_iam_policy',
        instanceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSecureSourceManagerRepositoryIamPolicy(
        localName: 'secure_source_manager_repository_iam_policy',
        repositoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleServiceAccount(
        localName: 'service_account',
        accountId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleServiceAccountAccessToken(
        localName: 'service_account_access_token',
        scopes: TfArg.literal([leftover]),
        targetServiceAccount: TfArg.literal(saEmail),
      ),
    );

    addData(
      DataGoogleServiceAccountIamPolicy(
        localName: 'service_account_iam_policy',
        serviceAccountId: TfArg.literal(saId),
      ),
    );

    addData(
      DataGoogleServiceAccountIdToken(
        localName: 'service_account_id_token',
        targetAudience: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleServiceAccountJwt(
        localName: 'service_account_jwt',
        payload: TfArg.literal(leftover),
        targetServiceAccount: TfArg.literal(saEmail),
      ),
    );

    addData(
      DataGoogleServiceAccountKey(
        localName: 'service_account_key',
        name: TfArg.literal('$saId/keys/1'),
      ),
    );

    addData(
      DataGoogleServiceAccounts(
        localName: 'service_accounts',
      ),
    );

    addData(
      DataGoogleServiceDirectoryNamespaceIamPolicy(
        localName: 'service_directory_namespace_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleServiceDirectoryServiceIamPolicy(
        localName: 'service_directory_service_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleServiceNetworkingPeeredDnsDomain(
        localName: 'service_networking_peered_dns_domain',
        name: TfArg.literal(leftover),
        network: TfArg.literal('projects/$projectId/global/networks/terradart'),
        project: TfArg.literal(projectId),
        service: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSiteVerificationToken(
        localName: 'site_verification_token',
        identifier: TfArg.literal(leftover),
        type: TfArg.literal('INET_DOMAIN'),
        verificationMethod: TfArg.literal('DNS_TXT'),
      ),
    );

    addData(
      DataGoogleSourcerepoRepository(
        localName: 'sourcerepo_repository',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSourcerepoRepositoryIamPolicy(
        localName: 'sourcerepo_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSpannerDatabase(
        localName: 'spanner_database',
        instance: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSpannerDatabaseIamPolicy(
        localName: 'spanner_database_iam_policy',
        database: TfArg.literal(leftover),
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSpannerInstance(
        localName: 'spanner_instance',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSpannerInstanceIamPolicy(
        localName: 'spanner_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSqlBackupRun(
        localName: 'sql_backup_run',
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSqlCaCerts(
        localName: 'sql_ca_certs',
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSqlDatabase(
        localName: 'sql_database',
        instance: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSqlDatabaseInstance(
        localName: 'sql_database_instance',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSqlDatabaseInstanceLatestRecoveryTime(
        localName: 'sql_database_instance_latest_recovery_time',
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSqlDatabaseInstances(
        localName: 'sql_database_instances',
      ),
    );

    addData(
      DataGoogleSqlDatabases(
        localName: 'sql_databases',
        instance: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleSqlTiers(
        localName: 'sql_tiers',
      ),
    );

    addData(
      DataGoogleStorageBucket(
        localName: 'storage_bucket',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageBucketIamPolicy(
        localName: 'storage_bucket_iam_policy',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageBucketObject(
        localName: 'storage_bucket_object',
      ),
    );

    addData(
      DataGoogleStorageBucketObjectContent(
        localName: 'storage_bucket_object_content',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageBucketObjectContents(
        localName: 'storage_bucket_object_contents',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageBucketObjects(
        localName: 'storage_bucket_objects',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageBuckets(
        localName: 'storage_buckets',
      ),
    );

    addData(
      DataGoogleStorageControlFolderIntelligenceConfig(
        localName: 'storage_control_folder_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlFolderIntelligenceFindingsSummary(
        localName: 'storage_control_folder_intelligence_findings_sum',
        folder: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlOrganizationIntelligenceConfig(
        localName: 'storage_control_organization_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlOrganizationIntelligenceFindingsSummary(
        localName: 'storage_control_organization_intelligence_findin',
        organization: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlProjectIntelligenceConfig(
        localName: 'storage_control_project_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlProjectIntelligenceFinding(
        localName: 'storage_control_project_intelligence_finding',
        findingId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlProjectIntelligenceFindingRevision(
        localName: 'storage_control_project_intelligence_finding_rev',
        findingId: TfArg.literal(leftover),
        revisionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlProjectIntelligenceFindingRevisions(
        localName: 'storage_control_project_intelligence_finding_rev_2',
        findingId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageControlProjectIntelligenceFindings(
        localName: 'storage_control_project_intelligence_findings',
      ),
    );

    addData(
      DataGoogleStorageControlProjectIntelligenceFindingsSummary(
        localName: 'storage_control_project_intelligence_findings_su',
      ),
    );

    addData(
      DataGoogleStorageInsightsDatasetConfig(
        localName: 'storage_insights_dataset_config',
        datasetConfigId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageManagedFolderIamPolicy(
        localName: 'storage_managed_folder_iam_policy',
        bucket: TfArg.literal(leftover),
        managedFolder: TfArg.literal('terradart-leftover/'),
      ),
    );

    addData(
      DataGoogleStorageObjectSignedUrl(
        localName: 'storage_object_signed_url',
        bucket: TfArg.literal(leftover),
        path: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleStorageProjectServiceAccount(
        localName: 'storage_project_service_account',
      ),
    );

    addData(
      DataGoogleStorageTransferProjectServiceAccount(
        localName: 'storage_transfer_project_service_account',
      ),
    );

    addData(
      DataGoogleTagsTagKey(
        localName: 'tags_tag_key',
        parent: TfArg.literal(leftover),
        shortName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleTagsTagKeyIamPolicy(
        localName: 'tags_tag_key_iam_policy',
        tagKey: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleTagsTagKeys(
        localName: 'tags_tag_keys',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleTagsTagValue(
        localName: 'tags_tag_value',
        parent: TfArg.literal(leftover),
        shortName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleTagsTagValueIamPolicy(
        localName: 'tags_tag_value_iam_policy',
        tagValue: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleTagsTagValues(
        localName: 'tags_tag_values',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVertexAiIndex(
        localName: 'vertex_ai_index',
        name: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVertexAiReasoningEngineIamPolicy(
        localName: 'vertex_ai_reasoning_engine_iam_policy',
        reasoningEngine: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVertexAiReasoningEngineQuery(
        localName: 'vertex_ai_reasoning_engine_query',
        reasoningEngineId: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineAnnouncements(
        localName: 'vmwareengine_announcements',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineCluster(
        localName: 'vmwareengine_cluster',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineDatastore(
        localName: 'vmwareengine_datastore',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineExternalAccessRule(
        localName: 'vmwareengine_external_access_rule',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineExternalAddress(
        localName: 'vmwareengine_external_address',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineNetwork(
        localName: 'vmwareengine_network',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineNetworkPeering(
        localName: 'vmwareengine_network_peering',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineNetworkPolicy(
        localName: 'vmwareengine_network_policy',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineNsxCredentials(
        localName: 'vmwareengine_nsx_credentials',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareenginePrivateCloud(
        localName: 'vmwareengine_private_cloud',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineSubnet(
        localName: 'vmwareengine_subnet',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineUpgrades(
        localName: 'vmwareengine_upgrades',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVmwareengineVcenterCredentials(
        localName: 'vmwareengine_vcenter_credentials',
        parent: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleVpcAccessConnector(
        localName: 'vpc_access_connector',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleWorkbenchInstanceIamPolicy(
        localName: 'workbench_instance_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleWorkstationsWorkstationConfigIamPolicy(
        localName: 'workstations_workstation_config_iam_policy',
        workstationClusterId: TfArg.literal(leftover),
        workstationConfigId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataGoogleWorkstationsWorkstationIamPolicy(
        localName: 'workstations_workstation_iam_policy',
        workstationClusterId: TfArg.literal(leftover),
        workstationConfigId: TfArg.literal(leftover),
        workstationId: TfArg.literal(leftover),
      ),
    );
  }
}
