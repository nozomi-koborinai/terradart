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
        'access_approval_folder_service_account',
        folderId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessApprovalOrganizationServiceAccount(
        'access_approval_organization_service_account',
        organizationId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessApprovalProjectServiceAccount(
        'access_approval_project_service_account',
        projectId: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleAccessContextManagerAccessPolicy(
        'access_context_manager_access_policy',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessContextManagerAccessPolicyIamPolicy(
        'access_context_manager_access_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessContextManagerSupportedService(
        'access_context_manager_supported_service',
        serviceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAccessContextManagerSupportedServices(
        'access_context_manager_supported_services',
      ),
    );

    add(
      DataGoogleActiveFolder(
        'active_folder',
        displayName: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAgentRegistryAgent(
        'agent_registry_agent',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAgentRegistryEndpoint(
        'agent_registry_endpoint',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAgentRegistryMcpServer(
        'agent_registry_mcp_server',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAlloydbCluster(
        'alloydb_cluster',
        clusterId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAlloydbInstance(
        'alloydb_instance',
        clusterId: TfArg.literal(leftover),
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleAlloydbLocations('alloydb_locations'));

    add(
      DataGoogleAlloydbSupportedDatabaseFlags(
        'alloydb_supported_database_flags',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleApigeeEnvironmentIamPolicy(
        'apigee_environment_iam_policy',
        envId: TfArg.literal(leftover),
        orgId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleApigeeInstance(
        'apigee_instance',
        name: TfArg.literal(leftover),
        orgId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleAppEngineDefaultServiceAccount(
        'app_engine_default_service_account',
      ),
    );

    add(
      DataGoogleApphubApplication(
        'apphub_application',
        applicationId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleApphubDiscoveredService(
        'apphub_discovered_service',
        location: TfArg.literal(leftover),
        serviceUri: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleApphubDiscoveredWorkload(
        'apphub_discovered_workload',
        location: TfArg.literal(leftover),
        workloadUri: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryDockerImage(
        'artifact_registry_docker_image',
        imageName: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryDockerImages(
        'artifact_registry_docker_images',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryFile(
        'artifact_registry_file',
        fileId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        outputPath: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleArtifactRegistryLocations('artifact_registry_locations'));

    add(
      DataGoogleArtifactRegistryMavenArtifact(
        'artifact_registry_maven_artifact',
        artifactId: TfArg.literal(leftover),
        groupId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryMavenArtifacts(
        'artifact_registry_maven_artifacts',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryNpmPackage(
        'artifact_registry_npm_package',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryNpmPackages(
        'artifact_registry_npm_packages',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPackage(
        'artifact_registry_package',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPackages(
        'artifact_registry_packages',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPythonPackage(
        'artifact_registry_python_package',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryPythonPackages(
        'artifact_registry_python_packages',
        location: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryRepositories(
        'artifact_registry_repositories',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryRepository(
        'artifact_registry_repository',
        location: TfArg.literal(leftover),
        repositoryId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryRepositoryIamPolicy(
        'artifact_registry_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryTag(
        'artifact_registry_tag',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
        tagName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryTags(
        'artifact_registry_tags',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryVersion(
        'artifact_registry_version',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
        versionName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleArtifactRegistryVersions(
        'artifact_registry_versions',
        location: TfArg.literal(leftover),
        packageName: TfArg.literal(leftover),
        repositoryId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackup(
        'backup_dr_backup',
        backupVaultId: TfArg.literal(leftover),
        dataSourceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleBackupDrBackupPlan(
        'backup_dr_backup_plan',
        backupPlanId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackupPlanAssociation(
        'backup_dr_backup_plan_association',
        backupPlanAssociationId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackupPlanAssociations(
        'backup_dr_backup_plan_associations',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrBackupVault(
        'backup_dr_backup_vault',
        backupVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSource(
        'backup_dr_data_source',
        backupVaultId: TfArg.literal(leftover),
        dataSourceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSourceReference(
        'backup_dr_data_source_reference',
        dataSourceReferenceId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSourceReferences(
        'backup_dr_data_source_references',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrDataSources(
        'backup_dr_data_sources',
        backupVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBackupDrManagementServer(
        'backup_dr_management_server',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBeyondcorpSecurityGateway(
        'beyondcorp_security_gateway',
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBeyondcorpSecurityGatewayApplicationIamPolicy(
        'beyondcorp_security_gateway_application_iam_poli',
        applicationId: TfArg.literal(leftover),
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBeyondcorpSecurityGatewayIamPolicy(
        'beyondcorp_security_gateway_iam_policy',
        securityGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeHiveCatalogIamPolicy(
        'biglake_hive_catalog_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeHiveDatabaseIamPolicy(
        'biglake_hive_database_iam_policy',
        catalog: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeHiveTableIamPolicy(
        'biglake_hive_table_iam_policy',
        catalog: TfArg.literal(leftover),
        database: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeIcebergCatalogIamPolicy(
        'biglake_iceberg_catalog_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeIcebergNamespaceIamPolicy(
        'biglake_iceberg_namespace_iam_policy',
        catalog: TfArg.literal(leftover),
        namespaceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBiglakeIcebergTableIamPolicy(
        'biglake_iceberg_table_iam_policy',
        catalog: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        namespace: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryAnalyticsHubDataExchangeIamPolicy(
        'bigquery_analytics_hub_data_exchange_iam_policy',
        dataExchangeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryAnalyticsHubListingIamPolicy(
        'bigquery_analytics_hub_listing_iam_policy',
        dataExchangeId: TfArg.literal(leftover),
        listingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryConnectionIamPolicy(
        'bigquery_connection_iam_policy',
        connectionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDatapolicyDataPolicyIamPolicy(
        'bigquery_datapolicy_data_policy_iam_policy',
        dataPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDatapolicyv2DataPolicyIamPolicy(
        'bigquery_datapolicyv2_data_policy_iam_policy',
        dataPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDataset(
        'bigquery_dataset',
        datasetId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryDatasetIamPolicy(
        'bigquery_dataset_iam_policy',
        datasetId: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleBigqueryDatasets('bigquery_datasets'));

    add(
      DataGoogleBigqueryDefaultServiceAccount(
        'bigquery_default_service_account',
      ),
    );

    add(
      DataGoogleBigqueryRoutineIamPolicy(
        'bigquery_routine_iam_policy',
        datasetId: RefTo.literal(leftover),
        routineId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryTable(
        'bigquery_table',
        datasetId: RefTo.literal(leftover),
        tableId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryTableIamPolicy(
        'bigquery_table_iam_policy',
        datasetId: RefTo.literal(leftover),
        tableId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigqueryTables(
        'bigquery_tables',
        datasetId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleBigtableInstanceIamPolicy(
        'bigtable_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBigtableTableIamPolicy(
        'bigtable_table_iam_policy',
        instanceName: TfArg.literal(leftover),
        table: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleBillingAccount('billing_account'));

    add(
      DataGoogleBillingAccountIamPolicy(
        'billing_account_iam_policy',
        billingAccountId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleBinaryAuthorizationAttestorIamPolicy(
        'binary_authorization_attestor_iam_policy',
        attestor: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCertificateManagerCertificateMap(
        'certificate_manager_certificate_map',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCertificateManagerCertificates(
        'certificate_manager_certificates',
      ),
    );

    add(
      DataGoogleCertificateManagerDnsAuthorization(
        'certificate_manager_dns_authorization',
        domain: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleClientConfig('client_config'));

    add(DataGoogleClientOpenidUserinfo('client_openid_userinfo'));

    add(
      DataGoogleCloudAssetSearchAllResources(
        'cloud_asset_search_all_resources',
        scope: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudIdentityGroupLookup(
        'cloud_identity_group_lookup',
        groupKey: DataCloudIdentityGroupLookupGroupKey(id: .literal(leftover)),
      ),
    );

    add(
      DataGoogleCloudIdentityGroupMemberships(
        'cloud_identity_group_memberships',
        group: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudIdentityGroupTransitiveMemberships(
        'cloud_identity_group_transitive_memberships',
        group: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudIdentityGroups(
        'cloud_identity_groups',
        parent: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleCloudIdentityPolicies('cloud_identity_policies'));

    add(
      DataGoogleCloudIdentityPolicy(
        'cloud_identity_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudQuotasQuotaInfo(
        'cloud_quotas_quota_info',
        parent: TfArg.literal(leftover),
        quotaId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudQuotasQuotaInfos(
        'cloud_quotas_quota_infos',
        parent: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleCloudRunLocations('cloud_run_locations'));

    add(
      DataGoogleCloudRunService(
        'cloud_run_service',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunServiceIamPolicy(
        'cloud_run_service_iam_policy',
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2Job(
        'cloud_run_v2_job',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2JobIamPolicy(
        'cloud_run_v2_job_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2Service(
        'cloud_run_v2_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2ServiceIamPolicy(
        'cloud_run_v2_service_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2WorkerPool(
        'cloud_run_v2_worker_pool',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudRunV2WorkerPoolIamPolicy(
        'cloud_run_v2_worker_pool_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudTasksQueueIamPolicy(
        'cloud_tasks_queue_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudbuildTrigger(
        'cloudbuild_trigger',
        location: TfArg.literal(leftover),
        triggerId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudbuildWorkerPool(
        'cloudbuild_worker_pool',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudbuildv2ConnectionIamPolicy(
        'cloudbuildv2_connection_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleClouddeployCustomTargetTypeIamPolicy(
        'clouddeploy_custom_target_type_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleClouddeployDeliveryPipelineIamPolicy(
        'clouddeploy_delivery_pipeline_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleClouddeployTargetIamPolicy(
        'clouddeploy_target_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctions2Function(
        'cloudfunctions2_function',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctions2FunctionIamPolicy(
        'cloudfunctions2_function_iam_policy',
        cloudFunction: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctionsFunction(
        'cloudfunctions_function',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleCloudfunctionsFunctionIamPolicy(
        'cloudfunctions_function_iam_policy',
        cloudFunction: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleColabRuntimeTemplateIamPolicy(
        'colab_runtime_template_iam_policy',
        runtimeTemplate: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComposerEnvironment(
        'composer_environment',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComposerImageVersions('composer_image_versions'));

    add(
      DataGoogleComposerUserWorkloadsConfigMap(
        'composer_user_workloads_config_map',
        environment: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComposerUserWorkloadsSecret(
        'composer_user_workloads_secret',
        environment: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeAddress(
        'compute_address',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeAddresses('compute_addresses'));

    add(
      DataGoogleComputeBackendBucket(
        'compute_backend_bucket',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeBackendService(
        'compute_backend_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeDefaultServiceAccount('compute_default_service_account'),
    );

    add(DataGoogleComputeDisk('compute_disk', name: TfArg.literal(leftover)));

    add(
      DataGoogleComputeDiskIamPolicy(
        'compute_disk_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeFirewallPolicyIamPolicy(
        'compute_firewall_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeForwardingRule(
        'compute_forwarding_rule',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeForwardingRules('compute_forwarding_rules'));

    add(
      DataGoogleComputeGlobalAddress(
        'compute_global_address',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeGlobalForwardingRule(
        'compute_global_forwarding_rule',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeHaVpnGateway(
        'compute_ha_vpn_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeHealthCheck(
        'compute_health_check',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeImage('compute_image', name: TfArg.literal(leftover)));

    add(
      DataGoogleComputeImageIamPolicy(
        'compute_image_iam_policy',
        image: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeImages('compute_images'));

    add(DataGoogleComputeInstance('compute_instance'));

    add(DataGoogleComputeInstanceGroup('compute_instance_group'));

    add(
      DataGoogleComputeInstanceGroupManager('compute_instance_group_manager'),
    );

    add(DataGoogleComputeInstanceGroups('compute_instance_groups'));

    add(
      DataGoogleComputeInstanceGuestAttributes(
        'compute_instance_guest_attributes',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstanceIamPolicy(
        'compute_instance_iam_policy',
        instanceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstanceSerialPort(
        'compute_instance_serial_port',
        instance: TfArg.literal(leftover),
        port: TfArg.literal(1),
      ),
    );

    add(
      DataGoogleComputeInstanceTemplate(
        'compute_instance_template',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstanceTemplateIamPolicy(
        'compute_instance_template_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInstantSnapshotIamPolicy(
        'compute_instant_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInterconnectLocation(
        'compute_interconnect_location',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeInterconnectLocations('compute_interconnect_locations'),
    );

    add(DataGoogleComputeLbIpRanges('compute_lb_ip_ranges'));

    add(DataGoogleComputeMachineTypes('compute_machine_types'));

    add(DataGoogleComputeNetwork('compute_network'));

    add(
      DataGoogleComputeNetworkAttachment(
        'compute_network_attachment',
        name: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeNetworkEndpointGroup('compute_network_endpoint_group'),
    );

    add(
      DataGoogleComputeNetworkEndpointGroups('compute_network_endpoint_groups'),
    );

    add(
      DataGoogleComputeNetworkFirewallPolicyIamPolicy(
        'compute_network_firewall_policy_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeNetworkPeering(
        'compute_network_peering',
        name: TfArg.literal(leftover),
        network: RefTo.literal('projects/$projectId/global/networks/terradart'),
      ),
    );

    add(DataGoogleComputeNetworks('compute_networks'));

    add(DataGoogleComputeNodeTypes('compute_node_types'));

    add(
      DataGoogleComputeRegionBackendService(
        'compute_region_backend_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionDisk(
        'compute_region_disk',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionDiskIamPolicy(
        'compute_region_disk_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeRegionInstanceGroup('compute_region_instance_group'));

    add(
      DataGoogleComputeRegionInstanceGroupManager(
        'compute_region_instance_group_manager',
      ),
    );

    add(
      DataGoogleComputeRegionInstanceTemplate(
        'compute_region_instance_template',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionInstantSnapshotIamPolicy(
        'compute_region_instant_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionNetworkEndpointGroup(
        'compute_region_network_endpoint_group',
      ),
    );

    add(
      DataGoogleComputeRegionNetworkFirewallPolicyIamPolicy(
        'compute_region_network_firewall_policy_iam_polic',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionSecurityPolicy(
        'compute_region_security_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionSslCertificate(
        'compute_region_ssl_certificate',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionSslPolicy(
        'compute_region_ssl_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionTargetHttpProxy(
        'compute_region_target_http_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRegionTargetHttpsProxy(
        'compute_region_target_https_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeRegions('compute_regions'));

    add(
      DataGoogleComputeReservation(
        'compute_reservation',
        name: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeReservationBlock(
        'compute_reservation_block',
        name: TfArg.literal(leftover),
        reservation: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeReservationSubBlock(
        'compute_reservation_sub_block',
        name: TfArg.literal(leftover),
        reservation: TfArg.literal(leftover),
        reservationBlock: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeResourcePolicy(
        'compute_resource_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRouter(
        'compute_router',
        name: TfArg.literal(leftover),
        network: RefTo.literal('projects/$projectId/global/networks/terradart'),
      ),
    );

    add(
      DataGoogleComputeRouterNat(
        'compute_router_nat',
        name: TfArg.literal(leftover),
        router: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeRouterStatus(
        'compute_router_status',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeRouters('compute_routers'));

    add(DataGoogleComputeSecurityPolicy('compute_security_policy'));

    add(
      DataGoogleComputeServiceAttachment(
        'compute_service_attachment',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeServiceAttachments('compute_service_attachments'));

    add(
      DataGoogleComputeSnapshot(
        'compute_snapshot',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeSnapshotIamPolicy(
        'compute_snapshot_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeSslCertificate(
        'compute_ssl_certificate',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeSslPolicy(
        'compute_ssl_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeStoragePool(
        'compute_storage_pool',
        name: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeStoragePoolIamPolicy(
        'compute_storage_pool_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeStoragePoolTypes(
        'compute_storage_pool_types',
        storagePoolType: TfArg.literal(leftover),
        zone: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeSubnetwork('compute_subnetwork'));

    add(
      DataGoogleComputeSubnetworkIamPolicy(
        'compute_subnetwork_iam_policy',
        subnetwork: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleComputeSubnetworks('compute_subnetworks'));

    add(
      DataGoogleComputeTargetHttpProxy(
        'compute_target_http_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeTargetHttpsProxy(
        'compute_target_https_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleComputeVpnGateway(
        'compute_vpn_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleComputeZones('compute_zones'));

    add(
      DataGoogleContainerAnalysisNoteIamPolicy(
        'container_analysis_note_iam_policy',
        note: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleContainerAttachedInstallManifest(
        'container_attached_install_manifest',
        clusterId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        platformVersion: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleContainerAttachedVersions(
        'container_attached_versions',
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(DataGoogleContainerAwsVersions('container_aws_versions'));

    add(DataGoogleContainerAzureVersions('container_azure_versions'));

    add(
      DataGoogleContainerCluster(
        'container_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleContainerEngineVersions('container_engine_versions'));

    add(
      DataGoogleContainerRegistryImage(
        'container_registry_image',
        name: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleContainerRegistryRepository('container_registry_repository'));

    add(
      DataGoogleDataCatalogEntryGroupIamPolicy(
        'data_catalog_entry_group_iam_policy',
        entryGroup: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogPolicyTagIamPolicy(
        'data_catalog_policy_tag_iam_policy',
        policyTag: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogTagTemplateIamPolicy(
        'data_catalog_tag_template_iam_policy',
        tagTemplate: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogTaxonomy(
        'data_catalog_taxonomy',
        displayName: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataCatalogTaxonomyIamPolicy(
        'data_catalog_taxonomy_iam_policy',
        taxonomy: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataFusionInstanceIamPolicy(
        'data_fusion_instance_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataLineageConfig(
        'data_lineage_config',
        location: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataformRepositoryIamPolicy(
        'dataform_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexAspectTypeIamPolicy(
        'dataplex_aspect_type_iam_policy',
        aspectTypeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexAssetIamPolicy(
        'dataplex_asset_iam_policy',
        asset: TfArg.literal(leftover),
        dataplexZone: TfArg.literal(leftover),
        lake: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexDataProductIamPolicy(
        'dataplex_data_product_iam_policy',
        dataProductId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexDataQualityRules(
        'dataplex_data_quality_rules',
        dataScanId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexDatascanIamPolicy(
        'dataplex_datascan_iam_policy',
        dataScanId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexEntryGroupIamPolicy(
        'dataplex_entry_group_iam_policy',
        entryGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexEntryTypeIamPolicy(
        'dataplex_entry_type_iam_policy',
        entryTypeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexGlossaryIamPolicy(
        'dataplex_glossary_iam_policy',
        glossaryId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexLakeIamPolicy(
        'dataplex_lake_iam_policy',
        lake: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexTaskIamPolicy(
        'dataplex_task_iam_policy',
        lake: TfArg.literal(leftover),
        taskId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataplexZoneIamPolicy(
        'dataplex_zone_iam_policy',
        dataplexZone: TfArg.literal(leftover),
        lake: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocAutoscalingPolicyIamPolicy(
        'dataproc_autoscaling_policy_iam_policy',
        policyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocClusterIamPolicy(
        'dataproc_cluster_iam_policy',
        cluster: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocJobIamPolicy(
        'dataproc_job_iam_policy',
        jobId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreDatabaseIamPolicy(
        'dataproc_metastore_database_iam_policy',
        database: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreFederationIamPolicy(
        'dataproc_metastore_federation_iam_policy',
        federationId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreService(
        'dataproc_metastore_service',
        location: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreServiceIamPolicy(
        'dataproc_metastore_service_iam_policy',
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDataprocMetastoreTableIamPolicy(
        'dataproc_metastore_table_iam_policy',
        databaseId: TfArg.literal(leftover),
        serviceId: TfArg.literal(leftover),
        table: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDatastreamStaticIps(
        'datastream_static_ips',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDiscoveryEngineDataStore(
        'discovery_engine_data_store',
        dataStoreId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleDiscoveryEngineDataStores('discovery_engine_data_stores'));

    add(
      DataGoogleDiscoveryEngineSearchEngineIamPolicy(
        'discovery_engine_search_engine_iam_policy',
        collectionId: TfArg.literal(leftover),
        engineId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleDnsKeys('dns_keys', managedZone: RefTo.literal(leftover)));

    add(
      DataGoogleDnsManagedZone(
        'dns_managed_zone',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDnsManagedZoneIamPolicy(
        'dns_managed_zone_iam_policy',
        managedZone: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleDnsManagedZones('dns_managed_zones'));

    add(
      DataGoogleDnsRecordSet(
        'dns_record_set',
        managedZone: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleDnsRecordSets(
        'dns_record_sets',
        managedZone: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleEndpointsServiceConsumersIamPolicy(
        'endpoints_service_consumers_iam_policy',
        consumerProject: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleEndpointsServiceIamPolicy(
        'endpoints_service_iam_policy',
        serviceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleEventarcPipelineIamPolicy(
        'eventarc_pipeline_iam_policy',
        pipelineId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleFilestoreInstance(
        'filestore_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleFirestoreDocument(
        'firestore_document',
        collection: TfArg.literal(leftover),
        database: RefTo.literal(leftover),
        documentId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleFolder('folder', folder: TfArg.literal(leftover)));

    add(
      DataGoogleFolderIamPolicy(
        'folder_iam_policy',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleFolderOrganizationPolicy(
        'folder_organization_policy',
        constraint: TfArg.literal(leftover),
        folder: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleFolders('folders', parentId: TfArg.literal(leftover)));

    add(
      DataGoogleGeminiRepositoryGroupIamPolicy(
        'gemini_repository_group_iam_policy',
        codeRepositoryIndex: RefTo.literal(leftover),
        repositoryGroupId: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeBackupBackupPlanIamPolicy(
        'gke_backup_backup_plan_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeBackupRestorePlanIamPolicy(
        'gke_backup_restore_plan_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubFeature(
        'gke_hub_feature',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubFeatureIamPolicy(
        'gke_hub_feature_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubMembership(
        'gke_hub_membership',
        location: TfArg.literal(leftover),
        membershipId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubMembershipBinding(
        'gke_hub_membership_binding',
        location: TfArg.literal(leftover),
        membershipBindingId: TfArg.literal(leftover),
        membershipId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubMembershipIamPolicy(
        'gke_hub_membership_iam_policy',
        membershipId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleGkeHubScopeIamPolicy(
        'gke_hub_scope_iam_policy',
        scopeId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareConsentStoreIamPolicy(
        'healthcare_consent_store_iam_policy',
        consentStoreId: TfArg.literal(leftover),
        dataset: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareDatasetIamPolicy(
        'healthcare_dataset_iam_policy',
        datasetId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareDicomStoreIamPolicy(
        'healthcare_dicom_store_iam_policy',
        dicomStoreId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareFhirStoreIamPolicy(
        'healthcare_fhir_store_iam_policy',
        fhirStoreId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleHealthcareHl7V2StoreIamPolicy(
        'healthcare_hl7_v2_store_iam_policy',
        hl7V2StoreId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleIamPolicy('iam_policy'));

    add(DataGoogleIamRole('iam_role', name: TfArg.literal(leftover)));

    add(
      DataGoogleIamTestablePermissions(
        'iam_testable_permissions',
        fullResourceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkforcePoolIamPolicy(
        'iam_workforce_pool_iam_policy',
        workforcePoolId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPool(
        'iam_workload_identity_pool',
        workloadIdentityPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPoolIamPolicy(
        'iam_workload_identity_pool_iam_policy',
        workloadIdentityPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPoolOpenidConfig(
        'iam_workload_identity_pool_openid_config',
        resourceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIamWorkloadIdentityPoolProvider(
        'iam_workload_identity_pool_provider',
        workloadIdentityPoolId: RefTo.literal(leftover),
        workloadIdentityPoolProviderId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryAgentIamPolicy(
        'iap_agent_registry_agent_iam_policy',
        agentId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryEndpointIamPolicy(
        'iap_agent_registry_endpoint_iam_policy',
        endpointId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryIamPolicy(
        'iap_agent_registry_iam_policy',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAgentRegistryMcpServerIamPolicy(
        'iap_agent_registry_mcp_server_iam_policy',
        mcpServerId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAppEngineServiceIamPolicy(
        'iap_app_engine_service_iam_policy',
        appId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapAppEngineVersionIamPolicy(
        'iap_app_engine_version_iam_policy',
        appId: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
        versionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapLocationWebIamPolicy(
        'iap_location_web_iam_policy',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapTunnelDestGroupIamPolicy(
        'iap_tunnel_dest_group_iam_policy',
        destGroup: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleIapTunnelIamPolicy('iap_tunnel_iam_policy'));

    add(
      DataGoogleIapTunnelInstanceIamPolicy(
        'iap_tunnel_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebBackendServiceIamPolicy(
        'iap_web_backend_service_iam_policy',
        webBackendService: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebCloudRunServiceIamPolicy(
        'iap_web_cloud_run_service_iam_policy',
        cloudRunServiceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebForwardingRuleServiceIamPolicy(
        'iap_web_forwarding_rule_service_iam_policy',
        forwardingRuleServiceName: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleIapWebIamPolicy('iap_web_iam_policy'));

    add(
      DataGoogleIapWebRegionBackendServiceIamPolicy(
        'iap_web_region_backend_service_iam_policy',
        webRegionBackendService: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebRegionForwardingRuleServiceIamPolicy(
        'iap_web_region_forwarding_rule_service_iam_polic',
        forwardingRuleRegionServiceName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebTypeAppEngineIamPolicy(
        'iap_web_type_app_engine_iam_policy',
        appId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleIapWebTypeComputeIamPolicy('iap_web_type_compute_iam_policy'),
    );

    add(
      DataGoogleKmsAutokeyConfig(
        'kms_autokey_config',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKey(
        'kms_crypto_key',
        keyRing: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyIamPolicy(
        'kms_crypto_key_iam_policy',
        cryptoKeyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyLatestVersion(
        'kms_crypto_key_latest_version',
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyVersion(
        'kms_crypto_key_version',
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeyVersions(
        'kms_crypto_key_versions',
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsCryptoKeys(
        'kms_crypto_keys',
        keyRing: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsEkmConnectionIamPolicy(
        'kms_ekm_connection_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyHandle(
        'kms_key_handle',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyHandles(
        'kms_key_handles',
        location: TfArg.literal(leftover),
        resourceTypeSelector: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyRing(
        'kms_key_ring',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyRingIamPolicy(
        'kms_key_ring_iam_policy',
        keyRingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsKeyRings('kms_key_rings', location: TfArg.literal(leftover)),
    );

    add(
      DataGoogleKmsSecret(
        'kms_secret',
        ciphertext: TfArg.literal('dGVycmFkYXJ0'),
        cryptoKey: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleKmsSecretAsymmetric(
        'kms_secret_asymmetric',
        ciphertext: TfArg.literal('dGVycmFkYXJ0'),
        cryptoKeyVersion: TfArg.literal(kmsVersion),
      ),
    );

    add(
      DataGoogleKmsSecretCiphertext(
        'kms_secret_ciphertext',
        cryptoKey: RefTo.literal(leftover),
        plaintext: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingFolderSettings(
        'logging_folder_settings',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingLogView(
        'logging_log_view',
        bucket: RefTo.literal(leftover),
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingLogViewIamPolicy(
        'logging_log_view_iam_policy',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingOrganizationSettings(
        'logging_organization_settings',
        organization: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleLoggingProjectCmekSettings(
        'logging_project_cmek_settings',
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleLoggingProjectSettings(
        'logging_project_settings',
        project: TfArg.literal(projectId),
      ),
    );

    add(DataGoogleLoggingSink('logging_sink', id: TfArg.literal(leftover)));

    add(
      DataGoogleLustreInstance(
        'lustre_instance',
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMemcacheInstance(
        'memcache_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMemorystoreAclPolicy(
        'memorystore_acl_policy',
        aclPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMemorystoreInstance(
        'memorystore_instance',
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringAppEngineService(
        'monitoring_app_engine_service',
        moduleId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringClusterIstioService(
        'monitoring_cluster_istio_service',
        clusterName: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringIstioCanonicalService(
        'monitoring_istio_canonical_service',
        canonicalService: TfArg.literal(leftover),
        canonicalServiceNamespace: TfArg.literal(leftover),
        meshUid: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringMeshIstioService(
        'monitoring_mesh_istio_service',
        meshUid: TfArg.literal(leftover),
        serviceName: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleMonitoringNotificationChannel(
        'monitoring_notification_channel',
      ),
    );

    add(DataGoogleMonitoringUptimeCheckIps('monitoring_uptime_check_ips'));

    add(DataGoogleNetblockIpRanges('netblock_ip_ranges'));

    add(
      DataGoogleNetworkConnectivityHubIamPolicy(
        'network_connectivity_hub_iam_policy',
        hub: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleNetworkManagementConnectivityTestRun(
        'network_management_connectivity_test_run',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleNetworkManagementConnectivityTests(
        'network_management_connectivity_tests',
      ),
    );

    add(
      DataGoogleNetworkSecurityAddressGroupIamPolicy(
        'network_security_address_group_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleNetworkSecurityAddressGroups(
        'network_security_address_groups',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleObservabilityFolderSettings(
        'observability_folder_settings',
        folder: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleObservabilityOrganizationSettings(
        'observability_organization_settings',
        location: TfArg.literal(leftover),
        organization: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleObservabilityProjectSettings(
        'observability_project_settings',
        location: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleOracleDatabaseAutonomousDatabase(
        'oracle_database_autonomous_database',
        autonomousDatabaseId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseAutonomousDatabases(
        'oracle_database_autonomous_databases',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudExadataInfrastructure(
        'oracle_database_cloud_exadata_infrastructure',
        cloudExadataInfrastructureId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudExadataInfrastructures(
        'oracle_database_cloud_exadata_infrastructures',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudVmCluster(
        'oracle_database_cloud_vm_cluster',
        cloudVmClusterId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseCloudVmClusters(
        'oracle_database_cloud_vm_clusters',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseDbNodes(
        'oracle_database_db_nodes',
        cloudVmCluster: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseDbServers(
        'oracle_database_db_servers',
        cloudExadataInfrastructure: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseExascaleDbStorageVault(
        'oracle_database_exascale_db_storage_vault',
        exascaleDbStorageVaultId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseExascaleDbStorageVaults(
        'oracle_database_exascale_db_storage_vaults',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateConnectionTypes(
        'oracle_database_goldengate_connection_types',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateDeploymentEnvironments(
        'oracle_database_goldengate_deployment_environmen',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateDeploymentTypes(
        'oracle_database_goldengate_deployment_types',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseGoldengateDeploymentVersions(
        'oracle_database_goldengate_deployment_versions',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseOdbNetwork(
        'oracle_database_odb_network',
        location: TfArg.literal(leftover),
        odbNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleOracleDatabaseOdbSubnet(
        'oracle_database_odb_subnet',
        location: TfArg.literal(leftover),
        odbSubnetId: TfArg.literal(leftover),
        odbnetwork: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleOrganization('organization'));

    add(
      DataGoogleOrganizationIamCustomRole(
        'organization_iam_custom_role',
        orgId: TfArg.literal(leftover),
        roleId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleOrganizationIamCustomRoles('organization_iam_custom_roles'));

    add(
      DataGoogleOrganizationIamPolicy(
        'organization_iam_policy',
        orgId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleOrganizations('organizations'));

    add(
      DataGoogleParameterManagerParameter(
        'parameter_manager_parameter',
        parameterId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerParameterVersion(
        'parameter_manager_parameter_version',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerParameterVersionRender(
        'parameter_manager_parameter_version_render',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleParameterManagerParameters('parameter_manager_parameters'));

    add(
      DataGoogleParameterManagerRegionalParameter(
        'parameter_manager_regional_parameter',
        location: TfArg.literal(leftover),
        parameterId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerRegionalParameterVersion(
        'parameter_manager_regional_parameter_version',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerRegionalParameterVersionRender(
        'parameter_manager_regional_parameter_version_ren',
        parameter: TfArg.literal(leftover),
        parameterVersionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleParameterManagerRegionalParameters(
        'parameter_manager_regional_parameters',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePrivatecaCaPoolIamPolicy(
        'privateca_ca_pool_iam_policy',
        caPool: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePrivatecaCertificateAuthority(
        'privateca_certificate_authority',
      ),
    );

    add(
      DataGooglePrivatecaCertificateTemplateIamPolicy(
        'privateca_certificate_template_iam_policy',
        certificateTemplate: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePrivilegedAccessManagerEntitlement(
        'privileged_access_manager_entitlement',
      ),
    );

    add(GoogleProject('project'));

    add(DataGoogleProjectAncestry('project_ancestry'));

    add(
      DataGoogleProjectIamCustomRole(
        'project_iam_custom_role',
        roleId: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleProjectIamCustomRoles('project_iam_custom_roles'));

    add(
      DataGoogleProjectIamPolicy(
        'project_iam_policy',
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleProjectOrganizationPolicy(
        'project_organization_policy',
        constraint: TfArg.literal(leftover),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      DataGoogleProjectService(
        'project_service',
        service: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleProjects('projects', filter: TfArg.literal(leftover)));

    add(
      DataGooglePubsubSchemaIamPolicy(
        'pubsub_schema_iam_policy',
        schema: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePubsubSubscription(
        'pubsub_subscription',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGooglePubsubSubscriptionIamPolicy(
        'pubsub_subscription_iam_policy',
        subscription: TfArg.literal(leftover),
      ),
    );

    add(DataGooglePubsubTopic('pubsub_topic', name: TfArg.literal(leftover)));

    add(
      DataGooglePubsubTopicIamPolicy(
        'pubsub_topic_iam_policy',
        topic: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleRedisCluster('redis_cluster', name: TfArg.literal(leftover)));

    add(
      DataGoogleRedisClusterAclPolicy(
        'redis_cluster_acl_policy',
        aclPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleRedisInstance('redis_instance', name: TfArg.literal(leftover)),
    );

    add(
      DataGoogleSccSourceIamPolicy(
        'scc_source_iam_policy',
        organization: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSccV2OrganizationSourceIamPolicy(
        'scc_v2_organization_source_iam_policy',
        organization: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecret(
        'secret_manager_regional_secret',
        location: TfArg.literal(leftover),
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecretIamPolicy(
        'secret_manager_regional_secret_iam_policy',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecretVersion(
        'secret_manager_regional_secret_version',
        secret: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecretVersionAccess(
        'secret_manager_regional_secret_version_access',
        secret: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerRegionalSecrets(
        'secret_manager_regional_secrets',
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecret(
        'secret_manager_secret',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecretIamPolicy(
        'secret_manager_secret_iam_policy',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecretVersion(
        'secret_manager_secret_version',
        secret: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecretManagerSecretVersionAccess(
        'secret_manager_secret_version_access',
        secret: TfArg.literal(leftover),
      ),
    );

    add(DataGoogleSecretManagerSecrets('secret_manager_secrets'));

    add(
      DataGoogleSecureSourceManagerInstanceIamPolicy(
        'secure_source_manager_instance_iam_policy',
        instanceId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSecureSourceManagerRepositoryIamPolicy(
        'secure_source_manager_repository_iam_policy',
        repositoryId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceAccount(
        'service_account',
        accountId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceAccountAccessToken(
        'service_account_access_token',
        scopes: TfArg.literal([leftover]),
        targetServiceAccount: TfArg.literal(saEmail),
      ),
    );

    add(
      DataGoogleServiceAccountIamPolicy(
        'service_account_iam_policy',
        serviceAccountId: RefTo.literal(saId),
      ),
    );

    add(
      DataGoogleServiceAccountIdToken(
        'service_account_id_token',
        targetAudience: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceAccountJwt(
        'service_account_jwt',
        payload: TfArg.literal(leftover),
        targetServiceAccount: TfArg.literal(saEmail),
      ),
    );

    add(
      DataGoogleServiceAccountKey(
        'service_account_key',
        name: TfArg.literal('$saId/keys/1'),
      ),
    );

    add(DataGoogleServiceAccounts('service_accounts'));

    add(
      DataGoogleServiceDirectoryNamespaceIamPolicy(
        'service_directory_namespace_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceDirectoryServiceIamPolicy(
        'service_directory_service_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleServiceNetworkingPeeredDnsDomain(
        'service_networking_peered_dns_domain',
        name: TfArg.literal(leftover),
        network: RefTo.literal('projects/$projectId/global/networks/terradart'),
        project: TfArg.literal(projectId),
        service: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSiteVerificationToken(
        'site_verification_token',
        identifier: TfArg.literal(leftover),
        type: TfArg.literal('INET_DOMAIN'),
        verificationMethod: TfArg.literal('DNS_TXT'),
      ),
    );

    add(
      DataGoogleSourcerepoRepository(
        'sourcerepo_repository',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSourcerepoRepositoryIamPolicy(
        'sourcerepo_repository_iam_policy',
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerDatabase(
        'spanner_database',
        instance: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerDatabaseIamPolicy(
        'spanner_database_iam_policy',
        database: TfArg.literal(leftover),
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerInstance(
        'spanner_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSpannerInstanceIamPolicy(
        'spanner_instance_iam_policy',
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlBackupRun(
        'sql_backup_run',
        instance: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlCaCerts('sql_ca_certs', instance: RefTo.literal(leftover)),
    );

    add(
      DataGoogleSqlDatabase(
        'sql_database',
        instance: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlDatabaseInstance(
        'sql_database_instance',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleSqlDatabaseInstanceLatestRecoveryTime(
        'sql_database_instance_latest_recovery_time',
        instance: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleSqlDatabaseInstances('sql_database_instances'));

    add(
      DataGoogleSqlDatabases(
        'sql_databases',
        instance: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleSqlTiers('sql_tiers'));

    add(
      DataGoogleStorageBucket('storage_bucket', name: TfArg.literal(leftover)),
    );

    add(
      DataGoogleStorageBucketIamPolicy(
        'storage_bucket_iam_policy',
        bucket: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleStorageBucketObject('storage_bucket_object'));

    add(
      DataGoogleStorageBucketObjectContent(
        'storage_bucket_object_content',
        bucket: RefTo.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageBucketObjectContents(
        'storage_bucket_object_contents',
        bucket: RefTo.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageBucketObjects(
        'storage_bucket_objects',
        bucket: RefTo.literal(leftover),
      ),
    );

    add(DataGoogleStorageBuckets('storage_buckets'));

    add(
      DataGoogleStorageControlFolderIntelligenceConfig(
        'storage_control_folder_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlFolderIntelligenceFindingsSummary(
        'storage_control_folder_intelligence_findings_sum',
        folder: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlOrganizationIntelligenceConfig(
        'storage_control_organization_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlOrganizationIntelligenceFindingsSummary(
        'storage_control_organization_intelligence_findin',
        organization: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceConfig(
        'storage_control_project_intelligence_config',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFinding(
        'storage_control_project_intelligence_finding',
        findingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindingRevision(
        'storage_control_project_intelligence_finding_rev',
        findingId: TfArg.literal(leftover),
        revisionId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindingRevisions(
        'storage_control_project_intelligence_finding_rev_2',
        findingId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindings(
        'storage_control_project_intelligence_findings',
      ),
    );

    add(
      DataGoogleStorageControlProjectIntelligenceFindingsSummary(
        'storage_control_project_intelligence_findings_su',
      ),
    );

    add(
      DataGoogleStorageInsightsDatasetConfig(
        'storage_insights_dataset_config',
        datasetConfigId: TfArg.literal(leftover),
        location: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageManagedFolderIamPolicy(
        'storage_managed_folder_iam_policy',
        bucket: RefTo.literal(leftover),
        managedFolder: TfArg.literal('terradart-leftover/'),
      ),
    );

    add(
      DataGoogleStorageObjectSignedUrl(
        'storage_object_signed_url',
        bucket: RefTo.literal(leftover),
        path: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleStorageProjectServiceAccount('storage_project_service_account'),
    );

    add(
      DataGoogleStorageTransferProjectServiceAccount(
        'storage_transfer_project_service_account',
      ),
    );

    add(
      DataGoogleTagsTagKey(
        'tags_tag_key',
        parent: TfArg.literal(leftover),
        shortName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagKeyIamPolicy(
        'tags_tag_key_iam_policy',
        tagKey: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagKeys('tags_tag_keys', parent: TfArg.literal(leftover)),
    );

    add(
      DataGoogleTagsTagValue(
        'tags_tag_value',
        parent: RefTo.literal(leftover),
        shortName: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagValueIamPolicy(
        'tags_tag_value_iam_policy',
        tagValue: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleTagsTagValues(
        'tags_tag_values',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVertexAiIndex(
        'vertex_ai_index',
        name: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVertexAiReasoningEngineIamPolicy(
        'vertex_ai_reasoning_engine_iam_policy',
        reasoningEngine: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVertexAiReasoningEngineQuery(
        'vertex_ai_reasoning_engine_query',
        reasoningEngineId: TfArg.literal(leftover),
        region: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineAnnouncements(
        'vmwareengine_announcements',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineCluster(
        'vmwareengine_cluster',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineDatastore(
        'vmwareengine_datastore',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineExternalAccessRule(
        'vmwareengine_external_access_rule',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineExternalAddress(
        'vmwareengine_external_address',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNetwork(
        'vmwareengine_network',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNetworkPeering(
        'vmwareengine_network_peering',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNetworkPolicy(
        'vmwareengine_network_policy',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineNsxCredentials(
        'vmwareengine_nsx_credentials',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareenginePrivateCloud(
        'vmwareengine_private_cloud',
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineSubnet(
        'vmwareengine_subnet',
        name: TfArg.literal(leftover),
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineUpgrades(
        'vmwareengine_upgrades',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVmwareengineVcenterCredentials(
        'vmwareengine_vcenter_credentials',
        parent: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleVpcAccessConnector(
        'vpc_access_connector',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleWorkbenchInstanceIamPolicy(
        'workbench_instance_iam_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleWorkstationsWorkstationConfigIamPolicy(
        'workstations_workstation_config_iam_policy',
        workstationClusterId: TfArg.literal(leftover),
        workstationConfigId: TfArg.literal(leftover),
      ),
    );

    add(
      DataGoogleWorkstationsWorkstationIamPolicy(
        'workstations_workstation_iam_policy',
        workstationClusterId: TfArg.literal(leftover),
        workstationConfigId: TfArg.literal(leftover),
        workstationId: TfArg.literal(leftover),
      ),
    );
  }
}
