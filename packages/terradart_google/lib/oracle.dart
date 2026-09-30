// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Oracle Database@Google Cloud — Autonomous Database, Base DB, Exadata
/// (incl. Exascale storage config; BMS capacity is never_apply), ODB, GoldenGate.
library;

export 'src/oracle/google_oracle_database_autonomous_database.dart'
    show
        GoogleOracleDatabaseAutonomousDatabase,
        OracleDatabaseAutonomousDatabaseDbWorkload,
        OracleDatabaseAutonomousDatabaseDeletionPolicy,
        OracleDatabaseAutonomousDatabaseLicenseType,
        OracleDatabaseAutonomousDatabaseProperties,
        OracleDatabaseAutonomousDatabasePropertiesCustomerContacts,
        OracleDatabaseAutonomousDatabaseSourceConfig;
export 'src/oracle/google_oracle_database_cloud_exadata_infrastructure.dart'
    show
        GoogleOracleDatabaseCloudExadataInfrastructure,
        OracleDatabaseCloudExadataInfrastructureDeletionPolicy,
        OracleDatabaseCloudExadataInfrastructureProperties,
        OracleDatabaseCloudExadataInfrastructurePropertiesCustomerContacts,
        OracleDatabaseCloudExadataInfrastructurePropertiesMaintenanceWindow;
export 'src/oracle/google_oracle_database_cloud_exadata_infrastructure_exascale_config.dart'
    show GoogleOracleDatabaseCloudExadataInfrastructureExascaleConfig;
export 'src/oracle/google_oracle_database_cloud_vm_cluster.dart'
    show
        GoogleOracleDatabaseCloudVmCluster,
        OracleDatabaseCloudVmClusterDeletionPolicy,
        OracleDatabaseCloudVmClusterProperties,
        OracleDatabaseCloudVmClusterPropertiesDiagnosticsDataCollectionOptions,
        OracleDatabaseCloudVmClusterPropertiesTimeZone;
export 'src/oracle/google_oracle_database_db_system.dart'
    show
        GoogleOracleDatabaseDbSystem,
        OracleDatabaseDbSystemDatabaseEdition,
        OracleDatabaseDbSystemDeletionPolicy,
        OracleDatabaseDbSystemLicenseModel,
        OracleDatabaseDbSystemProperties,
        OracleDatabaseDbSystemPropertiesDataCollectionOptions,
        OracleDatabaseDbSystemPropertiesDbHome,
        OracleDatabaseDbSystemPropertiesDbHomeDatabase,
        OracleDatabaseDbSystemPropertiesDbHomeDatabaseProperties,
        OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfig,
        OracleDatabaseDbSystemPropertiesDbHomeDatabasePropertiesDbBackupConfigBackupDestinationDetails,
        OracleDatabaseDbSystemPropertiesDbSystemOptions,
        OracleDatabaseDbSystemPropertiesTimeZone;
export 'src/oracle/google_oracle_database_exadb_vm_cluster.dart'
    show
        GoogleOracleDatabaseExadbVmCluster,
        OracleDatabaseExadbVmClusterDeletionPolicy,
        OracleDatabaseExadbVmClusterProperties,
        OracleDatabaseExadbVmClusterPropertiesDataCollectionOptions,
        OracleDatabaseExadbVmClusterPropertiesTimeZone,
        OracleDatabaseExadbVmClusterPropertiesVmFileSystemStorage;
export 'src/oracle/google_oracle_database_exascale_db_storage_vault.dart'
    show
        GoogleOracleDatabaseExascaleDbStorageVault,
        OracleDatabaseExascaleDbStorageVaultDeletionPolicy,
        OracleDatabaseExascaleDbStorageVaultProperties,
        OracleDatabaseExascaleDbStorageVaultPropertiesExascaleDbStorageDetails,
        OracleDatabaseExascaleDbStorageVaultPropertiesTimeZone;
export 'src/oracle/google_oracle_database_goldengate_connection.dart'
    show
        GoogleOracleDatabaseGoldengateConnection,
        OracleDatabaseGoldengateConnectionDeletionPolicy,
        OracleDatabaseGoldengateConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesAmazonKinesisConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesAmazonRedshiftConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesAmazonS3ConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesDatabricksConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttributes,
        OracleDatabaseGoldengateConnectionPropertiesElasticsearchConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesGenericConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesGoldengateConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesGoogleBigQueryConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesGooglePubsubConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesHdfsConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorage,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage,
        OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage,
        OracleDatabaseGoldengateConnectionPropertiesJavaMessageServiceConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServers,
        OracleDatabaseGoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesMicrosoftFabricConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttributes,
        OracleDatabaseGoldengateConnectionPropertiesMongodbConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributes,
        OracleDatabaseGoldengateConnectionPropertiesOciObjectStorageConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesOracleConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesOracleNosqlConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttributes,
        OracleDatabaseGoldengateConnectionPropertiesRedisConnectionProperties,
        OracleDatabaseGoldengateConnectionPropertiesSnowflakeConnectionProperties;
export 'src/oracle/google_oracle_database_goldengate_connection_assignment.dart'
    show
        GoogleOracleDatabaseGoldengateConnectionAssignment,
        OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy,
        OracleDatabaseGoldengateConnectionAssignmentProperties;
export 'src/oracle/google_oracle_database_goldengate_deployment.dart'
    show
        GoogleOracleDatabaseGoldengateDeployment,
        OracleDatabaseGoldengateDeploymentDeletionPolicy,
        OracleDatabaseGoldengateDeploymentProperties,
        OracleDatabaseGoldengateDeploymentPropertiesMaintenanceConfig,
        OracleDatabaseGoldengateDeploymentPropertiesMaintenanceWindow,
        OracleDatabaseGoldengateDeploymentPropertiesOggData;
export 'src/oracle/google_oracle_database_odb_network.dart'
    show GoogleOracleDatabaseOdbNetwork, OracleDatabaseOdbNetworkDeletionPolicy;
export 'src/oracle/google_oracle_database_odb_subnet.dart'
    show
        GoogleOracleDatabaseOdbSubnet,
        OracleDatabaseOdbSubnetDeletionPolicy,
        OracleDatabaseOdbSubnetPurpose;
