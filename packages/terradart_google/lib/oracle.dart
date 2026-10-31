// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Oracle Database@Google Cloud — Autonomous Database, Base DB, Exadata
/// (incl. Exascale storage config; BMS capacity is never_apply), ODB, GoldenGate.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/google_oracle_database_autonomous_database.dart'
    show DataGoogleOracleDatabaseAutonomousDatabase;
export 'src/data/google_oracle_database_autonomous_databases.dart'
    show DataGoogleOracleDatabaseAutonomousDatabases;
export 'src/data/google_oracle_database_cloud_exadata_infrastructure.dart'
    show DataGoogleOracleDatabaseCloudExadataInfrastructure;
export 'src/data/google_oracle_database_cloud_exadata_infrastructures.dart'
    show DataGoogleOracleDatabaseCloudExadataInfrastructures;
export 'src/data/google_oracle_database_cloud_vm_cluster.dart'
    show DataGoogleOracleDatabaseCloudVmCluster;
export 'src/data/google_oracle_database_cloud_vm_clusters.dart'
    show DataGoogleOracleDatabaseCloudVmClusters;
export 'src/data/google_oracle_database_db_nodes.dart'
    show DataGoogleOracleDatabaseDbNodes;
export 'src/data/google_oracle_database_db_servers.dart'
    show DataGoogleOracleDatabaseDbServers;
export 'src/data/google_oracle_database_exascale_db_storage_vault.dart'
    show DataGoogleOracleDatabaseExascaleDbStorageVault;
export 'src/data/google_oracle_database_exascale_db_storage_vaults.dart'
    show DataGoogleOracleDatabaseExascaleDbStorageVaults;
export 'src/data/google_oracle_database_goldengate_connection_types.dart'
    show DataGoogleOracleDatabaseGoldengateConnectionTypes;
export 'src/data/google_oracle_database_goldengate_deployment_environments.dart'
    show DataGoogleOracleDatabaseGoldengateDeploymentEnvironments;
export 'src/data/google_oracle_database_goldengate_deployment_types.dart'
    show DataGoogleOracleDatabaseGoldengateDeploymentTypes;
export 'src/data/google_oracle_database_goldengate_deployment_versions.dart'
    show DataGoogleOracleDatabaseGoldengateDeploymentVersions;
export 'src/data/google_oracle_database_odb_network.dart'
    show DataGoogleOracleDatabaseOdbNetwork;
export 'src/data/google_oracle_database_odb_subnet.dart'
    show DataGoogleOracleDatabaseOdbSubnet;
export 'src/oracle/google_oracle_database_autonomous_database.dart'
    show
        GoogleOracleDatabaseAutonomousDatabase,
        OracleDatabaseAutonomousDatabaseCustomerContacts,
        OracleDatabaseAutonomousDatabaseDbEdition,
        OracleDatabaseAutonomousDatabaseDbWorkload,
        OracleDatabaseAutonomousDatabaseDeletionPolicy,
        OracleDatabaseAutonomousDatabaseLicenseType,
        OracleDatabaseAutonomousDatabaseMaintenanceScheduleType,
        OracleDatabaseAutonomousDatabaseOperationsInsightsState,
        OracleDatabaseAutonomousDatabaseProperties,
        OracleDatabaseAutonomousDatabaseSourceConfig;
export 'src/oracle/google_oracle_database_cloud_exadata_infrastructure.dart'
    show
        GoogleOracleDatabaseCloudExadataInfrastructure,
        OracleDatabaseCloudExadataInfrastructureCustomerContacts,
        OracleDatabaseCloudExadataInfrastructureDaysOfWeek,
        OracleDatabaseCloudExadataInfrastructureDeletionPolicy,
        OracleDatabaseCloudExadataInfrastructureMaintenanceWindow,
        OracleDatabaseCloudExadataInfrastructureMonths,
        OracleDatabaseCloudExadataInfrastructurePatchingMode,
        OracleDatabaseCloudExadataInfrastructurePreference,
        OracleDatabaseCloudExadataInfrastructureProperties;
export 'src/oracle/google_oracle_database_cloud_exadata_infrastructure_exascale_config.dart'
    show GoogleOracleDatabaseCloudExadataInfrastructureExascaleConfig;
export 'src/oracle/google_oracle_database_cloud_vm_cluster.dart'
    show
        GoogleOracleDatabaseCloudVmCluster,
        OracleDatabaseCloudVmClusterDeletionPolicy,
        OracleDatabaseCloudVmClusterDiagnosticsDataCollectionOptions,
        OracleDatabaseCloudVmClusterDiskRedundancy,
        OracleDatabaseCloudVmClusterLicenseType,
        OracleDatabaseCloudVmClusterProperties,
        OracleDatabaseCloudVmClusterTimeZone,
        OracleDatabaseCloudVmClusterVmBackupStorageType,
        OracleDatabaseCloudVmClusterVmFileSystemStorageType;
export 'src/oracle/google_oracle_database_db_system.dart'
    show
        GoogleOracleDatabaseDbSystem,
        OracleDatabaseDbSystemAutoFullBackupDay,
        OracleDatabaseDbSystemAutoFullBackupWindow,
        OracleDatabaseDbSystemAutoIncrementalBackupWindow,
        OracleDatabaseDbSystemBackupDeletionPolicy,
        OracleDatabaseDbSystemBackupDestinationDetails,
        OracleDatabaseDbSystemComputeModel,
        OracleDatabaseDbSystemDataCollectionOptions,
        OracleDatabaseDbSystemDatabase,
        OracleDatabaseDbSystemDatabaseEdition,
        OracleDatabaseDbSystemDatabaseProperties,
        OracleDatabaseDbSystemDbBackupConfig,
        OracleDatabaseDbSystemDbHome,
        OracleDatabaseDbSystemDeletionPolicy,
        OracleDatabaseDbSystemLicenseModel,
        OracleDatabaseDbSystemOptions,
        OracleDatabaseDbSystemProperties,
        OracleDatabaseDbSystemStorageManagement,
        OracleDatabaseDbSystemTimeZone,
        OracleDatabaseDbSystemType;
export 'src/oracle/google_oracle_database_exadb_vm_cluster.dart'
    show
        GoogleOracleDatabaseExadbVmCluster,
        OracleDatabaseExadbVmClusterDataCollectionOptions,
        OracleDatabaseExadbVmClusterDeletionPolicy,
        OracleDatabaseExadbVmClusterLicenseModel,
        OracleDatabaseExadbVmClusterProperties,
        OracleDatabaseExadbVmClusterShapeAttribute,
        OracleDatabaseExadbVmClusterTimeZone,
        OracleDatabaseExadbVmClusterVmFileSystemStorage;
export 'src/oracle/google_oracle_database_exascale_db_storage_vault.dart'
    show
        GoogleOracleDatabaseExascaleDbStorageVault,
        OracleDatabaseExascaleDbStorageVaultDeletionPolicy,
        OracleDatabaseExascaleDbStorageVaultExascaleDbStorageDetails,
        OracleDatabaseExascaleDbStorageVaultProperties,
        OracleDatabaseExascaleDbStorageVaultTimeZone;
export 'src/oracle/google_oracle_database_goldengate_connection.dart'
    show
        GoogleOracleDatabaseGoldengateConnection,
        OracleDatabaseGoldengateConnectionAdditionalAttributes,
        OracleDatabaseGoldengateConnectionAmazonKinesisConnectionProperties,
        OracleDatabaseGoldengateConnectionAmazonRedshiftConnectionProperties,
        OracleDatabaseGoldengateConnectionAmazonS3ConnectionProperties,
        OracleDatabaseGoldengateConnectionAmazonS3IcebergStorage,
        OracleDatabaseGoldengateConnectionAuthenticationMode,
        OracleDatabaseGoldengateConnectionAzureDataLakeStorageAuthenticationType,
        OracleDatabaseGoldengateConnectionAzureDataLakeStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionAzureDataLakeStorageIcebergStorage,
        OracleDatabaseGoldengateConnectionAzureSynapseAnalyticsConnectionProperties,
        OracleDatabaseGoldengateConnectionBootstrapServers,
        OracleDatabaseGoldengateConnectionCatalog,
        OracleDatabaseGoldengateConnectionCatalogType,
        OracleDatabaseGoldengateConnectionDatabricksAuthenticationType,
        OracleDatabaseGoldengateConnectionDatabricksConnectionProperties,
        OracleDatabaseGoldengateConnectionDb2ConnectionProperties,
        OracleDatabaseGoldengateConnectionDb2SecurityProtocol,
        OracleDatabaseGoldengateConnectionDeletionPolicy,
        OracleDatabaseGoldengateConnectionElasticsearchAuthenticationType,
        OracleDatabaseGoldengateConnectionElasticsearchConnectionProperties,
        OracleDatabaseGoldengateConnectionGenericConnectionProperties,
        OracleDatabaseGoldengateConnectionGlueIcebergCatalog,
        OracleDatabaseGoldengateConnectionGoldengateConnectionProperties,
        OracleDatabaseGoldengateConnectionGoogleBigQueryConnectionProperties,
        OracleDatabaseGoldengateConnectionGoogleCloudStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionGoogleCloudStorageIcebergStorage,
        OracleDatabaseGoldengateConnectionGooglePubsubConnectionProperties,
        OracleDatabaseGoldengateConnectionHdfsConnectionProperties,
        OracleDatabaseGoldengateConnectionIcebergConnectionProperties,
        OracleDatabaseGoldengateConnectionJavaMessageServiceConnectionProperties,
        OracleDatabaseGoldengateConnectionJavaMessageServiceSecurityProtocol,
        OracleDatabaseGoldengateConnectionKafkaConnectionProperties,
        OracleDatabaseGoldengateConnectionKafkaSchemaRegistryAuthenticationType,
        OracleDatabaseGoldengateConnectionKafkaSchemaRegistryConnectionProperties,
        OracleDatabaseGoldengateConnectionKafkaSecurityProtocol,
        OracleDatabaseGoldengateConnectionMicrosoftFabricConnectionProperties,
        OracleDatabaseGoldengateConnectionMicrosoftSqlserverConnectionProperties,
        OracleDatabaseGoldengateConnectionMongodbConnectionProperties,
        OracleDatabaseGoldengateConnectionMysqlConnectionProperties,
        OracleDatabaseGoldengateConnectionMysqlConnectionPropertiesSslMode,
        OracleDatabaseGoldengateConnectionNessieIcebergCatalog,
        OracleDatabaseGoldengateConnectionOciObjectStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionOracleAiDataPlatformConnectionProperties,
        OracleDatabaseGoldengateConnectionOracleConnectionProperties,
        OracleDatabaseGoldengateConnectionOracleNosqlConnectionProperties,
        OracleDatabaseGoldengateConnectionPolarisIcebergCatalog,
        OracleDatabaseGoldengateConnectionPostgresqlConnectionProperties,
        OracleDatabaseGoldengateConnectionPostgresqlConnectionPropertiesSslMode,
        OracleDatabaseGoldengateConnectionProperties,
        OracleDatabaseGoldengateConnectionRedisConnectionProperties,
        OracleDatabaseGoldengateConnectionRestIcebergCatalog,
        OracleDatabaseGoldengateConnectionRoutingMethod,
        OracleDatabaseGoldengateConnectionSchemeType,
        OracleDatabaseGoldengateConnectionSessionMode,
        OracleDatabaseGoldengateConnectionSnowflakeAuthenticationType,
        OracleDatabaseGoldengateConnectionSnowflakeConnectionProperties,
        OracleDatabaseGoldengateConnectionStorage,
        OracleDatabaseGoldengateConnectionStorageType,
        OracleDatabaseGoldengateConnectionType;
export 'src/oracle/google_oracle_database_goldengate_connection_assignment.dart'
    show
        GoogleOracleDatabaseGoldengateConnectionAssignment,
        OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy,
        OracleDatabaseGoldengateConnectionAssignmentProperties;
export 'src/oracle/google_oracle_database_goldengate_deployment.dart'
    show
        GoogleOracleDatabaseGoldengateDeployment,
        OracleDatabaseGoldengateDeploymentDay,
        OracleDatabaseGoldengateDeploymentDeletionPolicy,
        OracleDatabaseGoldengateDeploymentLicenseModel,
        OracleDatabaseGoldengateDeploymentMaintenanceConfig,
        OracleDatabaseGoldengateDeploymentMaintenanceWindow,
        OracleDatabaseGoldengateDeploymentOggData,
        OracleDatabaseGoldengateDeploymentProperties;
export 'src/oracle/google_oracle_database_odb_network.dart'
    show GoogleOracleDatabaseOdbNetwork, OracleDatabaseOdbNetworkDeletionPolicy;
export 'src/oracle/google_oracle_database_odb_subnet.dart'
    show
        GoogleOracleDatabaseOdbSubnet,
        OracleDatabaseOdbSubnetDeletionPolicy,
        OracleDatabaseOdbSubnetPurpose;
