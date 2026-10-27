// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_app_cosmosdb_association`.
const Set<String> _azurermSpringCloudAppCosmosdbAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_spring_cloud_app_cosmosdb_association`.
final class AzurermSpringCloudAppCosmosdbAssociation extends Resource {
  static const String tfType = 'azurerm_spring_cloud_app_cosmosdb_association';

  AzurermSpringCloudAppCosmosdbAssociation(
    super.localName, {
    required TfArg<String> apiType,
    required TfArg<String> cosmosdbAccessKey,
    required TfArg<String> cosmosdbAccountId,
    TfArg<String>? cosmosdbCassandraKeyspaceName,
    TfArg<String>? cosmosdbGremlinDatabaseName,
    TfArg<String>? cosmosdbGremlinGraphName,
    TfArg<String>? cosmosdbMongoDatabaseName,
    TfArg<String>? cosmosdbSqlDatabaseName,
    required TfArg<String> name,
    required TfArg<String> springCloudAppId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_type': apiType,
           'cosmosdb_access_key': cosmosdbAccessKey,
           'cosmosdb_account_id': cosmosdbAccountId,
           'cosmosdb_cassandra_keyspace_name': ?cosmosdbCassandraKeyspaceName,
           'cosmosdb_gremlin_database_name': ?cosmosdbGremlinDatabaseName,
           'cosmosdb_gremlin_graph_name': ?cosmosdbGremlinGraphName,
           'cosmosdb_mongo_database_name': ?cosmosdbMongoDatabaseName,
           'cosmosdb_sql_database_name': ?cosmosdbSqlDatabaseName,
           'name': name,
           'spring_cloud_app_id': springCloudAppId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudAppCosmosdbAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudAppCosmosdbAssociation>`.
  RefTo<AzurermSpringCloudAppCosmosdbAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_type` attribute.
  TfRef<String> get apiType => TfRef.attribute<String>(this, 'api_type');

  /// Reference to `cosmosdb_access_key` attribute.
  TfRef<String> get cosmosdbAccessKey =>
      TfRef.attribute<String>(this, 'cosmosdb_access_key');

  /// Reference to `cosmosdb_account_id` attribute.
  TfRef<String> get cosmosdbAccountId =>
      TfRef.attribute<String>(this, 'cosmosdb_account_id');

  /// Reference to `cosmosdb_cassandra_keyspace_name` attribute.
  TfRef<String> get cosmosdbCassandraKeyspaceName =>
      TfRef.attribute<String>(this, 'cosmosdb_cassandra_keyspace_name');

  /// Reference to `cosmosdb_gremlin_database_name` attribute.
  TfRef<String> get cosmosdbGremlinDatabaseName =>
      TfRef.attribute<String>(this, 'cosmosdb_gremlin_database_name');

  /// Reference to `cosmosdb_gremlin_graph_name` attribute.
  TfRef<String> get cosmosdbGremlinGraphName =>
      TfRef.attribute<String>(this, 'cosmosdb_gremlin_graph_name');

  /// Reference to `cosmosdb_mongo_database_name` attribute.
  TfRef<String> get cosmosdbMongoDatabaseName =>
      TfRef.attribute<String>(this, 'cosmosdb_mongo_database_name');

  /// Reference to `cosmosdb_sql_database_name` attribute.
  TfRef<String> get cosmosdbSqlDatabaseName =>
      TfRef.attribute<String>(this, 'cosmosdb_sql_database_name');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');
}
