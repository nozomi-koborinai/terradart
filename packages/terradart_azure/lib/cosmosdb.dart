// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager cosmosdb resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/cosmosdb/azurerm_cosmosdb_account.dart'
    show
        AzurermCosmosdbAccount,
        CosmosdbAccountAnalyticalStorage,
        CosmosdbAccountBackup,
        CosmosdbAccountCapabilities,
        CosmosdbAccountCapabilitiesName,
        CosmosdbAccountCapacity,
        CosmosdbAccountConsistencyLevel,
        CosmosdbAccountConsistencyPolicy,
        CosmosdbAccountCorsRule,
        CosmosdbAccountCreateMode,
        CosmosdbAccountDatabase,
        CosmosdbAccountGeoLocation,
        CosmosdbAccountGremlinDatabase,
        CosmosdbAccountIdentity,
        CosmosdbAccountKind,
        CosmosdbAccountMongoServerVersion,
        CosmosdbAccountRestore,
        CosmosdbAccountSchemaType,
        CosmosdbAccountStorageRedundancy,
        CosmosdbAccountTier,
        CosmosdbAccountType,
        CosmosdbAccountVirtualNetworkRule;
export 'src/cosmosdb/azurerm_cosmosdb_cassandra_cluster.dart'
    show
        AzurermCosmosdbCassandraCluster,
        CosmosdbCassandraClusterIdentity,
        CosmosdbCassandraClusterVersion;
export 'src/cosmosdb/azurerm_cosmosdb_cassandra_datacenter.dart'
    show AzurermCosmosdbCassandraDatacenter;
export 'src/cosmosdb/azurerm_cosmosdb_cassandra_keyspace.dart'
    show
        AzurermCosmosdbCassandraKeyspace,
        CosmosdbCassandraKeyspaceAutoscaleSettings;
export 'src/cosmosdb/azurerm_cosmosdb_cassandra_table.dart'
    show
        AzurermCosmosdbCassandraTable,
        CosmosdbCassandraTableAutoscaleSettings,
        CosmosdbCassandraTableClusterKey,
        CosmosdbCassandraTableColumn,
        CosmosdbCassandraTableOrderBy,
        CosmosdbCassandraTablePartitionKey,
        CosmosdbCassandraTableSchema;
export 'src/cosmosdb/azurerm_cosmosdb_gremlin_database.dart'
    show
        AzurermCosmosdbGremlinDatabase,
        CosmosdbGremlinDatabaseAutoscaleSettings;
export 'src/cosmosdb/azurerm_cosmosdb_gremlin_graph.dart'
    show
        AzurermCosmosdbGremlinGraph,
        CosmosdbGremlinGraphAutoscaleSettings,
        CosmosdbGremlinGraphCompositeIndex,
        CosmosdbGremlinGraphConflictResolutionPolicy,
        CosmosdbGremlinGraphIndex,
        CosmosdbGremlinGraphIndexPolicy,
        CosmosdbGremlinGraphIndexingMode,
        CosmosdbGremlinGraphMode,
        CosmosdbGremlinGraphOrder,
        CosmosdbGremlinGraphSpatialIndex,
        CosmosdbGremlinGraphUniqueKey;
export 'src/cosmosdb/azurerm_cosmosdb_mongo_collection.dart'
    show
        AzurermCosmosdbMongoCollection,
        CosmosdbMongoCollectionAutoscaleSettings,
        CosmosdbMongoCollectionIndex;
export 'src/cosmosdb/azurerm_cosmosdb_mongo_database.dart'
    show AzurermCosmosdbMongoDatabase, CosmosdbMongoDatabaseAutoscaleSettings;
export 'src/cosmosdb/azurerm_cosmosdb_mongo_role_definition.dart'
    show
        AzurermCosmosdbMongoRoleDefinition,
        CosmosdbMongoRoleDefinitionPrivilege,
        CosmosdbMongoRoleDefinitionResource;
export 'src/cosmosdb/azurerm_cosmosdb_mongo_user_definition.dart'
    show AzurermCosmosdbMongoUserDefinition;
export 'src/cosmosdb/azurerm_cosmosdb_postgresql_cluster.dart'
    show
        AzurermCosmosdbPostgresqlCluster,
        CosmosdbPostgresqlClusterCitusVersion,
        CosmosdbPostgresqlClusterCoordinatorServerEdition,
        CosmosdbPostgresqlClusterMaintenanceWindow,
        CosmosdbPostgresqlClusterNodeServerEdition,
        CosmosdbPostgresqlClusterSqlVersion;
export 'src/cosmosdb/azurerm_cosmosdb_postgresql_coordinator_configuration.dart'
    show AzurermCosmosdbPostgresqlCoordinatorConfiguration;
export 'src/cosmosdb/azurerm_cosmosdb_postgresql_firewall_rule.dart'
    show AzurermCosmosdbPostgresqlFirewallRule;
export 'src/cosmosdb/azurerm_cosmosdb_postgresql_node_configuration.dart'
    show AzurermCosmosdbPostgresqlNodeConfiguration;
export 'src/cosmosdb/azurerm_cosmosdb_postgresql_role.dart'
    show AzurermCosmosdbPostgresqlRole;
export 'src/cosmosdb/azurerm_cosmosdb_sql_container.dart'
    show
        AzurermCosmosdbSqlContainer,
        CosmosdbSqlContainerAutoscaleSettings,
        CosmosdbSqlContainerCompositeIndex,
        CosmosdbSqlContainerConflictResolutionPolicy,
        CosmosdbSqlContainerExcludedPath,
        CosmosdbSqlContainerIncludedPath,
        CosmosdbSqlContainerIndex,
        CosmosdbSqlContainerIndexingPolicy,
        CosmosdbSqlContainerMode,
        CosmosdbSqlContainerOrder,
        CosmosdbSqlContainerSpatialIndex,
        CosmosdbSqlContainerUniqueKey;
export 'src/cosmosdb/azurerm_cosmosdb_sql_database.dart'
    show AzurermCosmosdbSqlDatabase, CosmosdbSqlDatabaseAutoscaleSettings;
export 'src/cosmosdb/azurerm_cosmosdb_sql_dedicated_gateway.dart'
    show
        AzurermCosmosdbSqlDedicatedGateway,
        CosmosdbSqlDedicatedGatewayInstanceSize;
export 'src/cosmosdb/azurerm_cosmosdb_sql_function.dart'
    show AzurermCosmosdbSqlFunction;
export 'src/cosmosdb/azurerm_cosmosdb_sql_role_assignment.dart'
    show AzurermCosmosdbSqlRoleAssignment;
export 'src/cosmosdb/azurerm_cosmosdb_sql_role_definition.dart'
    show
        AzurermCosmosdbSqlRoleDefinition,
        CosmosdbSqlRoleDefinitionPermissions,
        CosmosdbSqlRoleDefinitionType;
export 'src/cosmosdb/azurerm_cosmosdb_sql_stored_procedure.dart'
    show AzurermCosmosdbSqlStoredProcedure;
export 'src/cosmosdb/azurerm_cosmosdb_sql_trigger.dart'
    show
        AzurermCosmosdbSqlTrigger,
        CosmosdbSqlTriggerOperation,
        CosmosdbSqlTriggerType;
export 'src/cosmosdb/azurerm_cosmosdb_table.dart'
    show AzurermCosmosdbTable, CosmosdbTableAutoscaleSettings;
export 'src/data/azurerm_cosmosdb_account.dart' show DataAzurermCosmosdbAccount;
export 'src/data/azurerm_cosmosdb_mongo_database.dart'
    show DataAzurermCosmosdbMongoDatabase;
export 'src/data/azurerm_cosmosdb_restorable_database_accounts.dart'
    show DataAzurermCosmosdbRestorableDatabaseAccounts;
export 'src/data/azurerm_cosmosdb_sql_database.dart'
    show DataAzurermCosmosdbSqlDatabase;
export 'src/data/azurerm_cosmosdb_sql_role_definition.dart'
    show DataAzurermCosmosdbSqlRoleDefinition;
