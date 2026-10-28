// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Read-only Azure Resource Manager data sources.
///
/// Every data source is also exported from its service barrel.
/// Import this barrel for data sources of several services.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_aadb2c_directory.dart' show DataAzurermAadb2cDirectory;
export 'src/data/azurerm_active_directory_domain_service.dart'
    show DataAzurermActiveDirectoryDomainService;
export 'src/data/azurerm_advisor_recommendations.dart'
    show
        DataAdvisorRecommendationsFilterByCategory,
        DataAzurermAdvisorRecommendations;
export 'src/data/azurerm_api_connection.dart' show DataAzurermApiConnection;
export 'src/data/azurerm_api_management.dart' show DataAzurermApiManagement;
export 'src/data/azurerm_api_management_api.dart'
    show DataAzurermApiManagementApi;
export 'src/data/azurerm_api_management_api_version_set.dart'
    show DataAzurermApiManagementApiVersionSet;
export 'src/data/azurerm_api_management_gateway.dart'
    show DataAzurermApiManagementGateway;
export 'src/data/azurerm_api_management_gateway_host_name_configuration.dart'
    show DataAzurermApiManagementGatewayHostNameConfiguration;
export 'src/data/azurerm_api_management_group.dart'
    show DataAzurermApiManagementGroup;
export 'src/data/azurerm_api_management_product.dart'
    show DataAzurermApiManagementProduct;
export 'src/data/azurerm_api_management_subscription.dart'
    show DataAzurermApiManagementSubscription;
export 'src/data/azurerm_api_management_user.dart'
    show DataAzurermApiManagementUser;
export 'src/data/azurerm_api_management_workspace.dart'
    show DataAzurermApiManagementWorkspace;
export 'src/data/azurerm_app_configuration.dart'
    show DataAzurermAppConfiguration;
export 'src/data/azurerm_app_configuration_key.dart'
    show DataAzurermAppConfigurationKey;
export 'src/data/azurerm_app_configuration_keys.dart'
    show DataAzurermAppConfigurationKeys;
export 'src/data/azurerm_app_service_certificate.dart'
    show DataAzurermAppServiceCertificate;
export 'src/data/azurerm_app_service_certificate_order.dart'
    show DataAzurermAppServiceCertificateOrder;
export 'src/data/azurerm_app_service_environment_v3.dart'
    show DataAzurermAppServiceEnvironmentV3;
export 'src/data/azurerm_application_gateway.dart'
    show DataAzurermApplicationGateway;
export 'src/data/azurerm_application_insights.dart'
    show DataAzurermApplicationInsights;
export 'src/data/azurerm_application_security_group.dart'
    show DataAzurermApplicationSecurityGroup;
export 'src/data/azurerm_arc_machine.dart' show DataAzurermArcMachine;
export 'src/data/azurerm_arc_resource_bridge_appliance.dart'
    show DataAzurermArcResourceBridgeAppliance;
export 'src/data/azurerm_attestation_provider.dart'
    show DataAzurermAttestationProvider;
export 'src/data/azurerm_automation_account.dart'
    show DataAzurermAutomationAccount;
export 'src/data/azurerm_automation_runbook.dart'
    show DataAzurermAutomationRunbook;
export 'src/data/azurerm_automation_variable_bool.dart'
    show DataAzurermAutomationVariableBool;
export 'src/data/azurerm_automation_variable_datetime.dart'
    show DataAzurermAutomationVariableDatetime;
export 'src/data/azurerm_automation_variable_int.dart'
    show DataAzurermAutomationVariableInt;
export 'src/data/azurerm_automation_variable_object.dart'
    show DataAzurermAutomationVariableObject;
export 'src/data/azurerm_automation_variable_string.dart'
    show DataAzurermAutomationVariableString;
export 'src/data/azurerm_automation_variables.dart'
    show DataAzurermAutomationVariables;
export 'src/data/azurerm_availability_set.dart' show DataAzurermAvailabilitySet;
export 'src/data/azurerm_backup_policy_file_share.dart'
    show DataAzurermBackupPolicyFileShare;
export 'src/data/azurerm_backup_policy_vm.dart' show DataAzurermBackupPolicyVm;
export 'src/data/azurerm_bastion_host.dart' show DataAzurermBastionHost;
export 'src/data/azurerm_batch_account.dart' show DataAzurermBatchAccount;
export 'src/data/azurerm_batch_application.dart'
    show DataAzurermBatchApplication;
export 'src/data/azurerm_batch_pool.dart' show DataAzurermBatchPool;
export 'src/data/azurerm_billing_enrollment_account_scope.dart'
    show DataAzurermBillingEnrollmentAccountScope;
export 'src/data/azurerm_billing_mca_account_scope.dart'
    show DataAzurermBillingMcaAccountScope;
export 'src/data/azurerm_billing_mpa_account_scope.dart'
    show DataAzurermBillingMpaAccountScope;
export 'src/data/azurerm_blueprint_definition.dart'
    show DataAzurermBlueprintDefinition;
export 'src/data/azurerm_blueprint_published_version.dart'
    show DataAzurermBlueprintPublishedVersion;
export 'src/data/azurerm_cdn_frontdoor_batch_rule_set.dart'
    show DataAzurermCdnFrontdoorBatchRuleSet;
export 'src/data/azurerm_cdn_frontdoor_custom_domain.dart'
    show DataAzurermCdnFrontdoorCustomDomain;
export 'src/data/azurerm_cdn_frontdoor_endpoint.dart'
    show DataAzurermCdnFrontdoorEndpoint;
export 'src/data/azurerm_cdn_frontdoor_firewall_policy.dart'
    show DataAzurermCdnFrontdoorFirewallPolicy;
export 'src/data/azurerm_cdn_frontdoor_origin_group.dart'
    show DataAzurermCdnFrontdoorOriginGroup;
export 'src/data/azurerm_cdn_frontdoor_profile.dart'
    show DataAzurermCdnFrontdoorProfile;
export 'src/data/azurerm_cdn_frontdoor_rule_set.dart'
    show DataAzurermCdnFrontdoorRuleSet;
export 'src/data/azurerm_cdn_frontdoor_secret.dart'
    show DataAzurermCdnFrontdoorSecret;
export 'src/data/azurerm_cdn_frontdoor_security_policy.dart'
    show DataAzurermCdnFrontdoorSecurityPolicy;
export 'src/data/azurerm_cdn_profile.dart' show DataAzurermCdnProfile;
export 'src/data/azurerm_client_config.dart' show DataAzurermClientConfig;
export 'src/data/azurerm_cognitive_account.dart'
    show DataAzurermCognitiveAccount;
export 'src/data/azurerm_cognitive_account_project.dart'
    show DataAzurermCognitiveAccountProject;
export 'src/data/azurerm_communication_service.dart'
    show DataAzurermCommunicationService;
export 'src/data/azurerm_confidential_ledger.dart'
    show DataAzurermConfidentialLedger;
export 'src/data/azurerm_consumption_budget_resource_group.dart'
    show DataAzurermConsumptionBudgetResourceGroup;
export 'src/data/azurerm_consumption_budget_subscription.dart'
    show DataAzurermConsumptionBudgetSubscription;
export 'src/data/azurerm_container_app.dart' show DataAzurermContainerApp;
export 'src/data/azurerm_container_app_environment.dart'
    show DataAzurermContainerAppEnvironment;
export 'src/data/azurerm_container_app_environment_certificate.dart'
    show DataAzurermContainerAppEnvironmentCertificate;
export 'src/data/azurerm_container_app_environment_storage.dart'
    show DataAzurermContainerAppEnvironmentStorage;
export 'src/data/azurerm_container_group.dart' show DataAzurermContainerGroup;
export 'src/data/azurerm_container_registry.dart'
    show DataAzurermContainerRegistry;
export 'src/data/azurerm_container_registry_cache_rule.dart'
    show DataAzurermContainerRegistryCacheRule;
export 'src/data/azurerm_container_registry_scope_map.dart'
    show DataAzurermContainerRegistryScopeMap;
export 'src/data/azurerm_container_registry_token.dart'
    show DataAzurermContainerRegistryToken;
export 'src/data/azurerm_cosmosdb_account.dart' show DataAzurermCosmosdbAccount;
export 'src/data/azurerm_cosmosdb_mongo_database.dart'
    show DataAzurermCosmosdbMongoDatabase;
export 'src/data/azurerm_cosmosdb_restorable_database_accounts.dart'
    show DataAzurermCosmosdbRestorableDatabaseAccounts;
export 'src/data/azurerm_cosmosdb_sql_database.dart'
    show DataAzurermCosmosdbSqlDatabase;
export 'src/data/azurerm_cosmosdb_sql_role_definition.dart'
    show DataAzurermCosmosdbSqlRoleDefinition;
export 'src/data/azurerm_dashboard_grafana.dart'
    show DataAzurermDashboardGrafana, DataDashboardGrafanaIdentity;
export 'src/data/azurerm_data_factory.dart' show DataAzurermDataFactory;
export 'src/data/azurerm_data_factory_trigger_schedule.dart'
    show DataAzurermDataFactoryTriggerSchedule;
export 'src/data/azurerm_data_factory_trigger_schedules.dart'
    show DataAzurermDataFactoryTriggerSchedules;
export 'src/data/azurerm_data_protection_backup_vault.dart'
    show DataAzurermDataProtectionBackupVault;
export 'src/data/azurerm_data_share.dart' show DataAzurermDataShare;
export 'src/data/azurerm_data_share_account.dart'
    show DataAzurermDataShareAccount;
export 'src/data/azurerm_data_share_dataset_blob_storage.dart'
    show DataAzurermDataShareDatasetBlobStorage;
export 'src/data/azurerm_data_share_dataset_data_lake_gen2.dart'
    show DataAzurermDataShareDatasetDataLakeGen2;
export 'src/data/azurerm_data_share_dataset_kusto_cluster.dart'
    show DataAzurermDataShareDatasetKustoCluster;
export 'src/data/azurerm_data_share_dataset_kusto_database.dart'
    show DataAzurermDataShareDatasetKustoDatabase;
export 'src/data/azurerm_database_migration_project.dart'
    show DataAzurermDatabaseMigrationProject;
export 'src/data/azurerm_database_migration_service.dart'
    show DataAzurermDatabaseMigrationService;
export 'src/data/azurerm_databox_edge_device.dart'
    show DataAzurermDataboxEdgeDevice;
export 'src/data/azurerm_databricks_access_connector.dart'
    show DataAzurermDatabricksAccessConnector;
export 'src/data/azurerm_databricks_workspace.dart'
    show DataAzurermDatabricksWorkspace;
export 'src/data/azurerm_databricks_workspace_private_endpoint_connection.dart'
    show DataAzurermDatabricksWorkspacePrivateEndpointConnection;
export 'src/data/azurerm_dedicated_host.dart' show DataAzurermDedicatedHost;
export 'src/data/azurerm_dedicated_host_group.dart'
    show DataAzurermDedicatedHostGroup;
export 'src/data/azurerm_dev_center.dart' show DataAzurermDevCenter;
export 'src/data/azurerm_dev_center_attached_network.dart'
    show DataAzurermDevCenterAttachedNetwork;
export 'src/data/azurerm_dev_center_catalog.dart'
    show DataAzurermDevCenterCatalog;
export 'src/data/azurerm_dev_center_dev_box_definition.dart'
    show DataAzurermDevCenterDevBoxDefinition;
export 'src/data/azurerm_dev_center_environment_type.dart'
    show DataAzurermDevCenterEnvironmentType;
export 'src/data/azurerm_dev_center_gallery.dart'
    show DataAzurermDevCenterGallery;
export 'src/data/azurerm_dev_center_network_connection.dart'
    show DataAzurermDevCenterNetworkConnection;
export 'src/data/azurerm_dev_center_project.dart'
    show DataAzurermDevCenterProject;
export 'src/data/azurerm_dev_center_project_environment_type.dart'
    show DataAzurermDevCenterProjectEnvironmentType;
export 'src/data/azurerm_dev_center_project_pool.dart'
    show DataAzurermDevCenterProjectPool;
export 'src/data/azurerm_dev_test_lab.dart' show DataAzurermDevTestLab;
export 'src/data/azurerm_dev_test_virtual_network.dart'
    show DataAzurermDevTestVirtualNetwork;
export 'src/data/azurerm_digital_twins_instance.dart'
    show DataAzurermDigitalTwinsInstance;
export 'src/data/azurerm_disk_access.dart' show DataAzurermDiskAccess;
export 'src/data/azurerm_disk_encryption_set.dart'
    show DataAzurermDiskEncryptionSet;
export 'src/data/azurerm_dns_a_record.dart' show DataAzurermDnsARecord;
export 'src/data/azurerm_dns_aaaa_record.dart' show DataAzurermDnsAaaaRecord;
export 'src/data/azurerm_dns_caa_record.dart' show DataAzurermDnsCaaRecord;
export 'src/data/azurerm_dns_cname_record.dart' show DataAzurermDnsCnameRecord;
export 'src/data/azurerm_dns_mx_record.dart' show DataAzurermDnsMxRecord;
export 'src/data/azurerm_dns_ns_record.dart' show DataAzurermDnsNsRecord;
export 'src/data/azurerm_dns_ptr_record.dart' show DataAzurermDnsPtrRecord;
export 'src/data/azurerm_dns_soa_record.dart' show DataAzurermDnsSoaRecord;
export 'src/data/azurerm_dns_srv_record.dart' show DataAzurermDnsSrvRecord;
export 'src/data/azurerm_dns_txt_record.dart' show DataAzurermDnsTxtRecord;
export 'src/data/azurerm_dns_zone.dart' show DataAzurermDnsZone;
export 'src/data/azurerm_dynatrace_monitor.dart'
    show DataAzurermDynatraceMonitor;
export 'src/data/azurerm_elastic_cloud_elasticsearch.dart'
    show
        DataAzurermElasticCloudElasticsearch,
        DataElasticCloudElasticsearchLogs;
export 'src/data/azurerm_elastic_san.dart' show DataAzurermElasticSan;
export 'src/data/azurerm_elastic_san_volume_group.dart'
    show DataAzurermElasticSanVolumeGroup;
export 'src/data/azurerm_elastic_san_volume_snapshot.dart'
    show DataAzurermElasticSanVolumeSnapshot;
export 'src/data/azurerm_eventgrid_domain.dart' show DataAzurermEventgridDomain;
export 'src/data/azurerm_eventgrid_domain_topic.dart'
    show DataAzurermEventgridDomainTopic;
export 'src/data/azurerm_eventgrid_partner_namespace.dart'
    show DataAzurermEventgridPartnerNamespace;
export 'src/data/azurerm_eventgrid_partner_registration.dart'
    show DataAzurermEventgridPartnerRegistration;
export 'src/data/azurerm_eventgrid_system_topic.dart'
    show DataAzurermEventgridSystemTopic;
export 'src/data/azurerm_eventgrid_topic.dart' show DataAzurermEventgridTopic;
export 'src/data/azurerm_eventhub.dart' show DataAzurermEventhub;
export 'src/data/azurerm_eventhub_authorization_rule.dart'
    show DataAzurermEventhubAuthorizationRule;
export 'src/data/azurerm_eventhub_cluster.dart' show DataAzurermEventhubCluster;
export 'src/data/azurerm_eventhub_consumer_group.dart'
    show DataAzurermEventhubConsumerGroup;
export 'src/data/azurerm_eventhub_namespace.dart'
    show DataAzurermEventhubNamespace;
export 'src/data/azurerm_eventhub_namespace_authorization_rule.dart'
    show DataAzurermEventhubNamespaceAuthorizationRule;
export 'src/data/azurerm_eventhub_sas.dart' show DataAzurermEventhubSas;
export 'src/data/azurerm_express_route_circuit.dart'
    show DataAzurermExpressRouteCircuit;
export 'src/data/azurerm_express_route_circuit_peering.dart'
    show
        DataAzurermExpressRouteCircuitPeering,
        DataExpressRouteCircuitPeeringType;
export 'src/data/azurerm_extended_location_custom_location.dart'
    show DataAzurermExtendedLocationCustomLocation;
export 'src/data/azurerm_extended_locations.dart'
    show DataAzurermExtendedLocations;
export 'src/data/azurerm_firewall.dart' show DataAzurermFirewall;
export 'src/data/azurerm_firewall_policy.dart' show DataAzurermFirewallPolicy;
export 'src/data/azurerm_function_app_host_keys.dart'
    show DataAzurermFunctionAppHostKeys;
export 'src/data/azurerm_graph_services_account.dart'
    show DataAzurermGraphServicesAccount;
export 'src/data/azurerm_hdinsight_cluster.dart'
    show DataAzurermHdinsightCluster;
export 'src/data/azurerm_healthcare_dicom_service.dart'
    show DataAzurermHealthcareDicomService;
export 'src/data/azurerm_healthcare_fhir_service.dart'
    show DataAzurermHealthcareFhirService;
export 'src/data/azurerm_healthcare_medtech_service.dart'
    show DataAzurermHealthcareMedtechService;
export 'src/data/azurerm_healthcare_service.dart'
    show DataAzurermHealthcareService;
export 'src/data/azurerm_healthcare_workspace.dart'
    show DataAzurermHealthcareWorkspace;
export 'src/data/azurerm_image.dart'
    show
        DataAzurermImage,
        DataImageName,
        DataImageNameChoice,
        DataImageNameRegex;
export 'src/data/azurerm_images.dart' show DataAzurermImages;
export 'src/data/azurerm_iothub.dart' show DataAzurermIothub;
export 'src/data/azurerm_iothub_dps.dart' show DataAzurermIothubDps;
export 'src/data/azurerm_iothub_dps_shared_access_policy.dart'
    show DataAzurermIothubDpsSharedAccessPolicy;
export 'src/data/azurerm_iothub_shared_access_policy.dart'
    show DataAzurermIothubSharedAccessPolicy;
export 'src/data/azurerm_ip_group.dart' show DataAzurermIpGroup;
export 'src/data/azurerm_ip_groups.dart' show DataAzurermIpGroups;
export 'src/data/azurerm_key_vault.dart' show DataAzurermKeyVault;
export 'src/data/azurerm_key_vault_access_policy.dart'
    show DataAzurermKeyVaultAccessPolicy, DataKeyVaultAccessPolicyName;
export 'src/data/azurerm_key_vault_certificate.dart'
    show DataAzurermKeyVaultCertificate;
export 'src/data/azurerm_key_vault_certificate_data.dart'
    show DataAzurermKeyVaultCertificateData;
export 'src/data/azurerm_key_vault_certificate_issuer.dart'
    show DataAzurermKeyVaultCertificateIssuer;
export 'src/data/azurerm_key_vault_certificates.dart'
    show DataAzurermKeyVaultCertificates;
export 'src/data/azurerm_key_vault_encrypted_value.dart'
    show DataAzurermKeyVaultEncryptedValue;
export 'src/data/azurerm_key_vault_key.dart' show DataAzurermKeyVaultKey;
export 'src/data/azurerm_key_vault_managed_hardware_security_module.dart'
    show DataAzurermKeyVaultManagedHardwareSecurityModule;
export 'src/data/azurerm_key_vault_managed_hardware_security_module_key.dart'
    show DataAzurermKeyVaultManagedHardwareSecurityModuleKey;
export 'src/data/azurerm_key_vault_managed_hardware_security_module_role_definition.dart'
    show DataAzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition;
export 'src/data/azurerm_key_vault_secret.dart' show DataAzurermKeyVaultSecret;
export 'src/data/azurerm_key_vault_secrets.dart'
    show DataAzurermKeyVaultSecrets;
export 'src/data/azurerm_kubernetes_automatic_cluster.dart'
    show DataAzurermKubernetesAutomaticCluster;
export 'src/data/azurerm_kubernetes_cluster.dart'
    show DataAzurermKubernetesCluster;
export 'src/data/azurerm_kubernetes_cluster_node_pool.dart'
    show DataAzurermKubernetesClusterNodePool;
export 'src/data/azurerm_kubernetes_fleet_manager.dart'
    show DataAzurermKubernetesFleetManager;
export 'src/data/azurerm_kubernetes_node_pool_snapshot.dart'
    show DataAzurermKubernetesNodePoolSnapshot;
export 'src/data/azurerm_kubernetes_service_versions.dart'
    show DataAzurermKubernetesServiceVersions;
export 'src/data/azurerm_kusto_cluster.dart' show DataAzurermKustoCluster;
export 'src/data/azurerm_kusto_database.dart' show DataAzurermKustoDatabase;
export 'src/data/azurerm_lb.dart' show DataAzurermLb;
export 'src/data/azurerm_lb_backend_address_pool.dart'
    show DataAzurermLbBackendAddressPool;
export 'src/data/azurerm_lb_outbound_rule.dart' show DataAzurermLbOutboundRule;
export 'src/data/azurerm_lb_rule.dart' show DataAzurermLbRule;
export 'src/data/azurerm_linux_function_app.dart'
    show DataAzurermLinuxFunctionApp;
export 'src/data/azurerm_linux_web_app.dart' show DataAzurermLinuxWebApp;
export 'src/data/azurerm_load_test.dart' show DataAzurermLoadTest;
export 'src/data/azurerm_local_network_gateway.dart'
    show DataAzurermLocalNetworkGateway;
export 'src/data/azurerm_location.dart' show DataAzurermLocation;
export 'src/data/azurerm_log_analytics_workspace.dart'
    show DataAzurermLogAnalyticsWorkspace;
export 'src/data/azurerm_log_analytics_workspace_table.dart'
    show DataAzurermLogAnalyticsWorkspaceTable;
export 'src/data/azurerm_logic_app_integration_account.dart'
    show DataAzurermLogicAppIntegrationAccount;
export 'src/data/azurerm_logic_app_standard.dart'
    show DataAzurermLogicAppStandard;
export 'src/data/azurerm_logic_app_workflow.dart'
    show DataAzurermLogicAppWorkflow;
export 'src/data/azurerm_machine_learning_workspace.dart'
    show DataAzurermMachineLearningWorkspace;
export 'src/data/azurerm_maintenance_configuration.dart'
    show DataAzurermMaintenanceConfiguration;
export 'src/data/azurerm_managed_api.dart' show DataAzurermManagedApi;
export 'src/data/azurerm_managed_application_definition.dart'
    show DataAzurermManagedApplicationDefinition;
export 'src/data/azurerm_managed_devops_pool.dart'
    show DataAzurermManagedDevopsPool;
export 'src/data/azurerm_managed_disk.dart' show DataAzurermManagedDisk;
export 'src/data/azurerm_managed_disks.dart' show DataAzurermManagedDisks;
export 'src/data/azurerm_managed_redis.dart' show DataAzurermManagedRedis;
export 'src/data/azurerm_managed_redis_access_policy_assignment.dart'
    show DataAzurermManagedRedisAccessPolicyAssignment;
export 'src/data/azurerm_management_group.dart'
    show
        DataAzurermManagementGroup,
        DataManagementGroupIdentifier,
        DataManagementGroupIdentifierDisplayName,
        DataManagementGroupIdentifierName;
export 'src/data/azurerm_management_group_template_deployment.dart'
    show DataAzurermManagementGroupTemplateDeployment;
export 'src/data/azurerm_maps_account.dart' show DataAzurermMapsAccount;
export 'src/data/azurerm_marketplace_agreement.dart'
    show DataAzurermMarketplaceAgreement;
export 'src/data/azurerm_monitor_action_group.dart'
    show DataAzurermMonitorActionGroup;
export 'src/data/azurerm_monitor_data_collection_endpoint.dart'
    show DataAzurermMonitorDataCollectionEndpoint;
export 'src/data/azurerm_monitor_data_collection_rule.dart'
    show DataAzurermMonitorDataCollectionRule;
export 'src/data/azurerm_monitor_diagnostic_categories.dart'
    show DataAzurermMonitorDiagnosticCategories;
export 'src/data/azurerm_monitor_scheduled_query_rules_alert.dart'
    show DataAzurermMonitorScheduledQueryRulesAlert;
export 'src/data/azurerm_monitor_scheduled_query_rules_log.dart'
    show DataAzurermMonitorScheduledQueryRulesLog;
export 'src/data/azurerm_monitor_workspace.dart'
    show DataAzurermMonitorWorkspace;
export 'src/data/azurerm_mssql_database.dart' show DataAzurermMssqlDatabase;
export 'src/data/azurerm_mssql_elasticpool.dart'
    show DataAzurermMssqlElasticpool;
export 'src/data/azurerm_mssql_failover_group.dart'
    show DataAzurermMssqlFailoverGroup;
export 'src/data/azurerm_mssql_managed_database.dart'
    show DataAzurermMssqlManagedDatabase;
export 'src/data/azurerm_mssql_managed_instance.dart'
    show DataAzurermMssqlManagedInstance;
export 'src/data/azurerm_mssql_server.dart' show DataAzurermMssqlServer;
export 'src/data/azurerm_mysql_flexible_server.dart'
    show DataAzurermMysqlFlexibleServer;
export 'src/data/azurerm_nat_gateway.dart' show DataAzurermNatGateway;
export 'src/data/azurerm_netapp_account.dart'
    show DataAzurermNetappAccount, DataNetappAccountIdentity;
export 'src/data/azurerm_netapp_account_encryption.dart'
    show DataAzurermNetappAccountEncryption;
export 'src/data/azurerm_netapp_backup_policy.dart'
    show DataAzurermNetappBackupPolicy;
export 'src/data/azurerm_netapp_backup_vault.dart'
    show DataAzurermNetappBackupVault;
export 'src/data/azurerm_netapp_pool.dart' show DataAzurermNetappPool;
export 'src/data/azurerm_netapp_snapshot.dart' show DataAzurermNetappSnapshot;
export 'src/data/azurerm_netapp_snapshot_policy.dart'
    show DataAzurermNetappSnapshotPolicy;
export 'src/data/azurerm_netapp_volume.dart' show DataAzurermNetappVolume;
export 'src/data/azurerm_netapp_volume_bucket.dart'
    show DataAzurermNetappVolumeBucket;
export 'src/data/azurerm_netapp_volume_bucket_with_server.dart'
    show DataAzurermNetappVolumeBucketWithServer;
export 'src/data/azurerm_netapp_volume_group_oracle.dart'
    show DataAzurermNetappVolumeGroupOracle;
export 'src/data/azurerm_netapp_volume_group_sap_hana.dart'
    show DataAzurermNetappVolumeGroupSapHana;
export 'src/data/azurerm_netapp_volume_quota_rule.dart'
    show DataAzurermNetappVolumeQuotaRule;
export 'src/data/azurerm_network_ddos_protection_plan.dart'
    show DataAzurermNetworkDdosProtectionPlan;
export 'src/data/azurerm_network_interface.dart'
    show DataAzurermNetworkInterface;
export 'src/data/azurerm_network_manager.dart' show DataAzurermNetworkManager;
export 'src/data/azurerm_network_manager_connectivity_configuration.dart'
    show DataAzurermNetworkManagerConnectivityConfiguration;
export 'src/data/azurerm_network_manager_ipam_pool.dart'
    show DataAzurermNetworkManagerIpamPool;
export 'src/data/azurerm_network_manager_network_group.dart'
    show DataAzurermNetworkManagerNetworkGroup;
export 'src/data/azurerm_network_security_group.dart'
    show DataAzurermNetworkSecurityGroup;
export 'src/data/azurerm_network_security_perimeter.dart'
    show DataAzurermNetworkSecurityPerimeter;
export 'src/data/azurerm_network_security_perimeter_profile.dart'
    show DataAzurermNetworkSecurityPerimeterProfile;
export 'src/data/azurerm_network_service_tags.dart'
    show DataAzurermNetworkServiceTags;
export 'src/data/azurerm_network_watcher.dart' show DataAzurermNetworkWatcher;
export 'src/data/azurerm_nginx_api_key.dart' show DataAzurermNginxApiKey;
export 'src/data/azurerm_nginx_certificate.dart'
    show DataAzurermNginxCertificate;
export 'src/data/azurerm_nginx_configuration.dart'
    show DataAzurermNginxConfiguration;
export 'src/data/azurerm_nginx_deployment.dart' show DataAzurermNginxDeployment;
export 'src/data/azurerm_notification_hub.dart' show DataAzurermNotificationHub;
export 'src/data/azurerm_notification_hub_namespace.dart'
    show DataAzurermNotificationHubNamespace;
export 'src/data/azurerm_oracle_adbs_character_sets.dart'
    show DataAzurermOracleAdbsCharacterSets;
export 'src/data/azurerm_oracle_adbs_national_character_sets.dart'
    show DataAzurermOracleAdbsNationalCharacterSets;
export 'src/data/azurerm_oracle_autonomous_database.dart'
    show DataAzurermOracleAutonomousDatabase;
export 'src/data/azurerm_oracle_autonomous_database_backup.dart'
    show DataAzurermOracleAutonomousDatabaseBackup;
export 'src/data/azurerm_oracle_autonomous_database_backups.dart'
    show DataAzurermOracleAutonomousDatabaseBackups;
export 'src/data/azurerm_oracle_autonomous_database_clone_from_backup.dart'
    show DataAzurermOracleAutonomousDatabaseCloneFromBackup;
export 'src/data/azurerm_oracle_autonomous_database_clone_from_database.dart'
    show DataAzurermOracleAutonomousDatabaseCloneFromDatabase;
export 'src/data/azurerm_oracle_autonomous_database_cross_region_disaster_recovery.dart'
    show DataAzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery;
export 'src/data/azurerm_oracle_cloud_vm_cluster.dart'
    show DataAzurermOracleCloudVmCluster;
export 'src/data/azurerm_oracle_database_system_versions.dart'
    show
        DataAzurermOracleDatabaseSystemVersions,
        DataOracleDatabaseSystemVersionsDatabaseSystemShape,
        DataOracleDatabaseSystemVersionsShape,
        DataOracleDatabaseSystemVersionsShapeFamily,
        DataOracleDatabaseSystemVersionsShapeFamilyChoice;
export 'src/data/azurerm_oracle_db_nodes.dart' show DataAzurermOracleDbNodes;
export 'src/data/azurerm_oracle_db_servers.dart'
    show DataAzurermOracleDbServers;
export 'src/data/azurerm_oracle_db_system_shapes.dart'
    show DataAzurermOracleDbSystemShapes;
export 'src/data/azurerm_oracle_exadata_infrastructure.dart'
    show DataAzurermOracleExadataInfrastructure;
export 'src/data/azurerm_oracle_exascale_database_storage_vault.dart'
    show DataAzurermOracleExascaleDatabaseStorageVault;
export 'src/data/azurerm_oracle_gi_versions.dart'
    show DataAzurermOracleGiVersions, DataOracleGiVersionsShape;
export 'src/data/azurerm_oracle_resource_anchor.dart'
    show DataAzurermOracleResourceAnchor;
export 'src/data/azurerm_orchestrated_virtual_machine_scale_set.dart'
    show DataAzurermOrchestratedVirtualMachineScaleSet;
export 'src/data/azurerm_palo_alto_local_rulestack.dart'
    show DataAzurermPaloAltoLocalRulestack;
export 'src/data/azurerm_platform_image.dart' show DataAzurermPlatformImage;
export 'src/data/azurerm_playwright_workspace.dart'
    show DataAzurermPlaywrightWorkspace;
export 'src/data/azurerm_policy_assignment.dart'
    show DataAzurermPolicyAssignment;
export 'src/data/azurerm_policy_definition.dart'
    show
        DataAzurermPolicyDefinition,
        DataPolicyDefinitionIdentifier,
        DataPolicyDefinitionIdentifierDisplayName,
        DataPolicyDefinitionIdentifierName;
export 'src/data/azurerm_policy_definition_built_in.dart'
    show
        DataAzurermPolicyDefinitionBuiltIn,
        DataPolicyDefinitionBuiltInIdentifier,
        DataPolicyDefinitionBuiltInIdentifierDisplayName,
        DataPolicyDefinitionBuiltInIdentifierName;
export 'src/data/azurerm_policy_set_definition.dart'
    show
        DataAzurermPolicySetDefinition,
        DataPolicySetDefinitionIdentifier,
        DataPolicySetDefinitionIdentifierDisplayName,
        DataPolicySetDefinitionIdentifierName;
export 'src/data/azurerm_policy_virtual_machine_configuration_assignment.dart'
    show DataAzurermPolicyVirtualMachineConfigurationAssignment;
export 'src/data/azurerm_portal_dashboard.dart'
    show
        DataAzurermPortalDashboard,
        DataPortalDashboardIdentifier,
        DataPortalDashboardIdentifierDisplayName,
        DataPortalDashboardIdentifierName;
export 'src/data/azurerm_postgresql_flexible_server.dart'
    show DataAzurermPostgresqlFlexibleServer;
export 'src/data/azurerm_private_dns_a_record.dart'
    show DataAzurermPrivateDnsARecord;
export 'src/data/azurerm_private_dns_aaaa_record.dart'
    show DataAzurermPrivateDnsAaaaRecord;
export 'src/data/azurerm_private_dns_cname_record.dart'
    show DataAzurermPrivateDnsCnameRecord;
export 'src/data/azurerm_private_dns_mx_record.dart'
    show DataAzurermPrivateDnsMxRecord;
export 'src/data/azurerm_private_dns_ptr_record.dart'
    show DataAzurermPrivateDnsPtrRecord;
export 'src/data/azurerm_private_dns_resolver.dart'
    show DataAzurermPrivateDnsResolver;
export 'src/data/azurerm_private_dns_resolver_dns_forwarding_ruleset.dart'
    show DataAzurermPrivateDnsResolverDnsForwardingRuleset;
export 'src/data/azurerm_private_dns_resolver_forwarding_rule.dart'
    show DataAzurermPrivateDnsResolverForwardingRule;
export 'src/data/azurerm_private_dns_resolver_inbound_endpoint.dart'
    show DataAzurermPrivateDnsResolverInboundEndpoint;
export 'src/data/azurerm_private_dns_resolver_outbound_endpoint.dart'
    show DataAzurermPrivateDnsResolverOutboundEndpoint;
export 'src/data/azurerm_private_dns_resolver_virtual_network_link.dart'
    show DataAzurermPrivateDnsResolverVirtualNetworkLink;
export 'src/data/azurerm_private_dns_soa_record.dart'
    show DataAzurermPrivateDnsSoaRecord;
export 'src/data/azurerm_private_dns_srv_record.dart'
    show DataAzurermPrivateDnsSrvRecord;
export 'src/data/azurerm_private_dns_txt_record.dart'
    show DataAzurermPrivateDnsTxtRecord;
export 'src/data/azurerm_private_dns_zone.dart' show DataAzurermPrivateDnsZone;
export 'src/data/azurerm_private_dns_zone_virtual_network_link.dart'
    show DataAzurermPrivateDnsZoneVirtualNetworkLink;
export 'src/data/azurerm_private_endpoint_connection.dart'
    show DataAzurermPrivateEndpointConnection;
export 'src/data/azurerm_private_link_service.dart'
    show DataAzurermPrivateLinkService;
export 'src/data/azurerm_private_link_service_endpoint_connections.dart'
    show DataAzurermPrivateLinkServiceEndpointConnections;
export 'src/data/azurerm_proximity_placement_group.dart'
    show DataAzurermProximityPlacementGroup;
export 'src/data/azurerm_public_ip.dart' show DataAzurermPublicIp;
export 'src/data/azurerm_public_ip_prefix.dart' show DataAzurermPublicIpPrefix;
export 'src/data/azurerm_public_ips.dart'
    show
        DataAzurermPublicIps,
        DataPublicIpsAllocationType,
        DataPublicIpsAttachmentStatus;
export 'src/data/azurerm_public_maintenance_configurations.dart'
    show DataAzurermPublicMaintenanceConfigurations;
export 'src/data/azurerm_recovery_services_vault.dart'
    show DataAzurermRecoveryServicesVault;
export 'src/data/azurerm_redis_cache.dart' show DataAzurermRedisCache;
export 'src/data/azurerm_resource_group.dart' show DataAzurermResourceGroup;
export 'src/data/azurerm_resource_group_template_deployment.dart'
    show DataAzurermResourceGroupTemplateDeployment;
export 'src/data/azurerm_resources.dart' show DataAzurermResources;
export 'src/data/azurerm_role_assignments.dart' show DataAzurermRoleAssignments;
export 'src/data/azurerm_role_definition.dart'
    show
        DataAzurermRoleDefinition,
        DataRoleDefinitionLookup,
        DataRoleDefinitionLookupName,
        DataRoleDefinitionLookupRoleDefinitionId;
export 'src/data/azurerm_role_management_policy.dart'
    show DataAzurermRoleManagementPolicy;
export 'src/data/azurerm_route_filter.dart' show DataAzurermRouteFilter;
export 'src/data/azurerm_route_table.dart' show DataAzurermRouteTable;
export 'src/data/azurerm_search_service.dart' show DataAzurermSearchService;
export 'src/data/azurerm_sentinel_alert_rule.dart'
    show DataAzurermSentinelAlertRule;
export 'src/data/azurerm_sentinel_alert_rule_anomaly.dart'
    show
        DataAzurermSentinelAlertRuleAnomaly,
        DataSentinelAlertRuleAnomalyIdentifier,
        DataSentinelAlertRuleAnomalyIdentifierDisplayName,
        DataSentinelAlertRuleAnomalyIdentifierName;
export 'src/data/azurerm_sentinel_alert_rule_template.dart'
    show
        DataAzurermSentinelAlertRuleTemplate,
        DataSentinelAlertRuleTemplateIdentifier,
        DataSentinelAlertRuleTemplateIdentifierDisplayName,
        DataSentinelAlertRuleTemplateIdentifierName;
export 'src/data/azurerm_service_plan.dart' show DataAzurermServicePlan;
export 'src/data/azurerm_servicebus_namespace.dart'
    show DataAzurermServicebusNamespace;
export 'src/data/azurerm_servicebus_namespace_authorization_rule.dart'
    show DataAzurermServicebusNamespaceAuthorizationRule;
export 'src/data/azurerm_servicebus_namespace_disaster_recovery_config.dart'
    show DataAzurermServicebusNamespaceDisasterRecoveryConfig;
export 'src/data/azurerm_servicebus_queue.dart' show DataAzurermServicebusQueue;
export 'src/data/azurerm_servicebus_queue_authorization_rule.dart'
    show DataAzurermServicebusQueueAuthorizationRule;
export 'src/data/azurerm_servicebus_subscription.dart'
    show DataAzurermServicebusSubscription;
export 'src/data/azurerm_servicebus_topic.dart' show DataAzurermServicebusTopic;
export 'src/data/azurerm_servicebus_topic_authorization_rule.dart'
    show DataAzurermServicebusTopicAuthorizationRule;
export 'src/data/azurerm_shared_image.dart' show DataAzurermSharedImage;
export 'src/data/azurerm_shared_image_gallery.dart'
    show DataAzurermSharedImageGallery;
export 'src/data/azurerm_shared_image_version.dart'
    show DataAzurermSharedImageVersion;
export 'src/data/azurerm_shared_image_versions.dart'
    show DataAzurermSharedImageVersions;
export 'src/data/azurerm_signalr_service.dart' show DataAzurermSignalrService;
export 'src/data/azurerm_site_recovery_fabric.dart'
    show DataAzurermSiteRecoveryFabric;
export 'src/data/azurerm_site_recovery_protection_container.dart'
    show DataAzurermSiteRecoveryProtectionContainer;
export 'src/data/azurerm_site_recovery_replication_policy.dart'
    show DataAzurermSiteRecoveryReplicationPolicy;
export 'src/data/azurerm_site_recovery_replication_recovery_plan.dart'
    show DataAzurermSiteRecoveryReplicationRecoveryPlan;
export 'src/data/azurerm_snapshot.dart' show DataAzurermSnapshot;
export 'src/data/azurerm_source_control_token.dart'
    show DataAzurermSourceControlToken, DataSourceControlTokenType;
export 'src/data/azurerm_spring_cloud_app.dart' show DataAzurermSpringCloudApp;
export 'src/data/azurerm_spring_cloud_service.dart'
    show DataAzurermSpringCloudService;
export 'src/data/azurerm_ssh_public_key.dart' show DataAzurermSshPublicKey;
export 'src/data/azurerm_stack_hci_cluster.dart'
    show DataAzurermStackHciCluster;
export 'src/data/azurerm_stack_hci_storage_path.dart'
    show DataAzurermStackHciStoragePath;
export 'src/data/azurerm_static_web_app.dart' show DataAzurermStaticWebApp;
export 'src/data/azurerm_storage_account.dart' show DataAzurermStorageAccount;
export 'src/data/azurerm_storage_account_blob_container_sas.dart'
    show
        DataAzurermStorageAccountBlobContainerSas,
        DataStorageAccountBlobContainerSasPermissions;
export 'src/data/azurerm_storage_account_sas.dart'
    show
        DataAzurermStorageAccountSas,
        DataStorageAccountSasPermissions,
        DataStorageAccountSasResourceTypes,
        DataStorageAccountSasServices;
export 'src/data/azurerm_storage_account_static_website.dart'
    show DataAzurermStorageAccountStaticWebsite;
export 'src/data/azurerm_storage_blob.dart' show DataAzurermStorageBlob;
export 'src/data/azurerm_storage_container.dart'
    show DataAzurermStorageContainer;
export 'src/data/azurerm_storage_containers.dart'
    show DataAzurermStorageContainers;
export 'src/data/azurerm_storage_encryption_scope.dart'
    show DataAzurermStorageEncryptionScope;
export 'src/data/azurerm_storage_management_policy.dart'
    show DataAzurermStorageManagementPolicy;
export 'src/data/azurerm_storage_queue.dart' show DataAzurermStorageQueue;
export 'src/data/azurerm_storage_share.dart'
    show DataAzurermStorageShare, DataStorageShareAcl;
export 'src/data/azurerm_storage_sync.dart' show DataAzurermStorageSync;
export 'src/data/azurerm_storage_sync_group.dart'
    show DataAzurermStorageSyncGroup;
export 'src/data/azurerm_storage_table.dart' show DataAzurermStorageTable;
export 'src/data/azurerm_storage_table_entities.dart'
    show DataAzurermStorageTableEntities;
export 'src/data/azurerm_storage_table_entity.dart'
    show DataAzurermStorageTableEntity;
export 'src/data/azurerm_stream_analytics_job.dart'
    show DataAzurermStreamAnalyticsJob;
export 'src/data/azurerm_subnet.dart' show DataAzurermSubnet;
export 'src/data/azurerm_subscription.dart' show DataAzurermSubscription;
export 'src/data/azurerm_subscription_template_deployment.dart'
    show DataAzurermSubscriptionTemplateDeployment;
export 'src/data/azurerm_subscriptions.dart' show DataAzurermSubscriptions;
export 'src/data/azurerm_synapse_workspace.dart'
    show DataAzurermSynapseWorkspace;
export 'src/data/azurerm_system_center_virtual_machine_manager_inventory_items.dart'
    show
        DataAzurermSystemCenterVirtualMachineManagerInventoryItems,
        DataSystemCenterVirtualMachineManagerInventoryItemsInventoryType;
export 'src/data/azurerm_template_spec_version.dart'
    show DataAzurermTemplateSpecVersion;
export 'src/data/azurerm_tenant_template_deployment.dart'
    show DataAzurermTenantTemplateDeployment;
export 'src/data/azurerm_traffic_manager_geographical_location.dart'
    show DataAzurermTrafficManagerGeographicalLocation;
export 'src/data/azurerm_traffic_manager_profile.dart'
    show DataAzurermTrafficManagerProfile;
export 'src/data/azurerm_trusted_signing_account.dart'
    show DataAzurermTrustedSigningAccount;
export 'src/data/azurerm_user_assigned_identity.dart'
    show DataAzurermUserAssignedIdentity;
export 'src/data/azurerm_virtual_desktop_application_group.dart'
    show DataAzurermVirtualDesktopApplicationGroup;
export 'src/data/azurerm_virtual_desktop_host_pool.dart'
    show DataAzurermVirtualDesktopHostPool;
export 'src/data/azurerm_virtual_desktop_workspace.dart'
    show DataAzurermVirtualDesktopWorkspace;
export 'src/data/azurerm_virtual_hub.dart' show DataAzurermVirtualHub;
export 'src/data/azurerm_virtual_hub_connection.dart'
    show DataAzurermVirtualHubConnection;
export 'src/data/azurerm_virtual_hub_route_table.dart'
    show DataAzurermVirtualHubRouteTable;
export 'src/data/azurerm_virtual_machine.dart' show DataAzurermVirtualMachine;
export 'src/data/azurerm_virtual_machine_scale_set.dart'
    show DataAzurermVirtualMachineScaleSet;
export 'src/data/azurerm_virtual_network.dart' show DataAzurermVirtualNetwork;
export 'src/data/azurerm_virtual_network_gateway.dart'
    show DataAzurermVirtualNetworkGateway;
export 'src/data/azurerm_virtual_network_gateway_connection.dart'
    show DataAzurermVirtualNetworkGatewayConnection;
export 'src/data/azurerm_virtual_network_peering.dart'
    show DataAzurermVirtualNetworkPeering;
export 'src/data/azurerm_virtual_wan.dart' show DataAzurermVirtualWan;
export 'src/data/azurerm_vmware_private_cloud.dart'
    show DataAzurermVmwarePrivateCloud;
export 'src/data/azurerm_vpn_gateway.dart' show DataAzurermVpnGateway;
export 'src/data/azurerm_vpn_server_configuration.dart'
    show DataAzurermVpnServerConfiguration;
export 'src/data/azurerm_web_application_firewall_policy.dart'
    show DataAzurermWebApplicationFirewallPolicy;
export 'src/data/azurerm_web_pubsub.dart' show DataAzurermWebPubsub;
export 'src/data/azurerm_web_pubsub_private_link_resource.dart'
    show DataAzurermWebPubsubPrivateLinkResource;
export 'src/data/azurerm_windows_function_app.dart'
    show DataAzurermWindowsFunctionApp;
export 'src/data/azurerm_windows_web_app.dart' show DataAzurermWindowsWebApp;
