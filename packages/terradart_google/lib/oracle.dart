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
        OracleDatabaseAutonomousDatabaseDbWorkload,
        OracleDatabaseAutonomousDatabaseDeletionPolicy,
        OracleDatabaseAutonomousDatabaseLicenseType,
        OracleDatabaseAutonomousDatabaseProperties,
        OracleDatabaseAutonomousDatabaseSourceConfig;
export 'src/oracle/google_oracle_database_cloud_exadata_infrastructure.dart'
    show
        GoogleOracleDatabaseCloudExadataInfrastructure,
        OracleDatabaseCloudExadataInfrastructureCustomerContacts,
        OracleDatabaseCloudExadataInfrastructureDeletionPolicy,
        OracleDatabaseCloudExadataInfrastructureMaintenanceWindow,
        OracleDatabaseCloudExadataInfrastructureProperties;
export 'src/oracle/google_oracle_database_cloud_exadata_infrastructure_exascale_config.dart'
    show GoogleOracleDatabaseCloudExadataInfrastructureExascaleConfig;
export 'src/oracle/google_oracle_database_cloud_vm_cluster.dart'
    show
        GoogleOracleDatabaseCloudVmCluster,
        OracleDatabaseCloudVmClusterDeletionPolicy,
        OracleDatabaseCloudVmClusterDiagnosticsDataCollectionOptions,
        OracleDatabaseCloudVmClusterProperties,
        OracleDatabaseCloudVmClusterTimeZone;
export 'src/oracle/google_oracle_database_db_system.dart'
    show
        GoogleOracleDatabaseDbSystem,
        OracleDatabaseDbSystemBackupDestinationDetails,
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
        OracleDatabaseDbSystemTimeZone;
export 'src/oracle/google_oracle_database_exadb_vm_cluster.dart'
    show
        GoogleOracleDatabaseExadbVmCluster,
        OracleDatabaseExadbVmClusterDataCollectionOptions,
        OracleDatabaseExadbVmClusterDeletionPolicy,
        OracleDatabaseExadbVmClusterProperties,
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
        OracleDatabaseGoldengateConnectionAzureDataLakeStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionAzureDataLakeStorageIcebergStorage,
        OracleDatabaseGoldengateConnectionAzureSynapseAnalyticsConnectionProperties,
        OracleDatabaseGoldengateConnectionBootstrapServers,
        OracleDatabaseGoldengateConnectionCatalog,
        OracleDatabaseGoldengateConnectionDatabricksConnectionProperties,
        OracleDatabaseGoldengateConnectionDb2ConnectionProperties,
        OracleDatabaseGoldengateConnectionDeletionPolicy,
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
        OracleDatabaseGoldengateConnectionKafkaConnectionProperties,
        OracleDatabaseGoldengateConnectionKafkaSchemaRegistryConnectionProperties,
        OracleDatabaseGoldengateConnectionMicrosoftFabricConnectionProperties,
        OracleDatabaseGoldengateConnectionMicrosoftSqlserverConnectionProperties,
        OracleDatabaseGoldengateConnectionMongodbConnectionProperties,
        OracleDatabaseGoldengateConnectionMysqlConnectionProperties,
        OracleDatabaseGoldengateConnectionNessieIcebergCatalog,
        OracleDatabaseGoldengateConnectionOciObjectStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionOracleAiDataPlatformConnectionProperties,
        OracleDatabaseGoldengateConnectionOracleConnectionProperties,
        OracleDatabaseGoldengateConnectionOracleNosqlConnectionProperties,
        OracleDatabaseGoldengateConnectionPolarisIcebergCatalog,
        OracleDatabaseGoldengateConnectionPostgresqlConnectionProperties,
        OracleDatabaseGoldengateConnectionProperties,
        OracleDatabaseGoldengateConnectionRedisConnectionProperties,
        OracleDatabaseGoldengateConnectionRestIcebergCatalog,
        OracleDatabaseGoldengateConnectionSnowflakeConnectionProperties,
        OracleDatabaseGoldengateConnectionStorage;
export 'src/oracle/google_oracle_database_goldengate_connection_assignment.dart'
    show
        GoogleOracleDatabaseGoldengateConnectionAssignment,
        OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy,
        OracleDatabaseGoldengateConnectionAssignmentProperties;
export 'src/oracle/google_oracle_database_goldengate_deployment.dart'
    show
        GoogleOracleDatabaseGoldengateDeployment,
        OracleDatabaseGoldengateDeploymentDeletionPolicy,
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
