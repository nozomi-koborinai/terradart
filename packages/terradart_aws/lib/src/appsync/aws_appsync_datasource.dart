// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_datasource`.
const Set<String> _awsAppsyncDatasourceSensitive = <String>{};

/// Typed helper for the `dynamodb_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceDynamodbConfig {
  const AppsyncDatasourceDynamodbConfig({
    this.region,
    required this.tableName,
    this.useCallerCredentials,
    this.versioned,
    this.deltaSyncConfig,
  });

  final TfArg<String>? region;

  final TfArg<String> tableName;

  final TfArg<bool>? useCallerCredentials;

  final TfArg<bool>? versioned;

  final AppsyncDatasourceDynamodbConfigDeltaSyncConfig? deltaSyncConfig;

  Map<String, Object?> encode() => {
    if (region != null) 'region': region!.toTfJson(),
    'table_name': tableName.toTfJson(),
    if (useCallerCredentials != null)
      'use_caller_credentials': useCallerCredentials!.toTfJson(),
    if (versioned != null) 'versioned': versioned!.toTfJson(),
    if (deltaSyncConfig != null) 'delta_sync_config': deltaSyncConfig!.encode(),
  };
}

/// Typed helper for the `dynamodb_config.delta_sync_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceDynamodbConfigDeltaSyncConfig {
  const AppsyncDatasourceDynamodbConfigDeltaSyncConfig({
    this.baseTableTtl,
    required this.deltaSyncTableName,
    this.deltaSyncTableTtl,
  });

  final TfArg<num>? baseTableTtl;

  final TfArg<String> deltaSyncTableName;

  final TfArg<num>? deltaSyncTableTtl;

  Map<String, Object?> encode() => {
    if (baseTableTtl != null) 'base_table_ttl': baseTableTtl!.toTfJson(),
    'delta_sync_table_name': deltaSyncTableName.toTfJson(),
    if (deltaSyncTableTtl != null)
      'delta_sync_table_ttl': deltaSyncTableTtl!.toTfJson(),
  };
}

/// Typed helper for the `elasticsearch_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceElasticsearchConfig {
  const AppsyncDatasourceElasticsearchConfig({
    required this.endpoint,
    this.region,
  });

  final TfArg<String> endpoint;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

/// Typed helper for the `event_bridge_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceEventBridgeConfig {
  const AppsyncDatasourceEventBridgeConfig({required this.eventBusArn});

  final TfArg<String> eventBusArn;

  Map<String, Object?> encode() => {'event_bus_arn': eventBusArn.toTfJson()};
}

/// Typed helper for the `http_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceHttpConfig {
  const AppsyncDatasourceHttpConfig({
    required this.endpoint,
    this.authorizationConfig,
  });

  final TfArg<String> endpoint;

  final AppsyncDatasourceHttpConfigAuthorizationConfig? authorizationConfig;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    if (authorizationConfig != null)
      'authorization_config': authorizationConfig!.encode(),
  };
}

/// Typed helper for the `http_config.authorization_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceHttpConfigAuthorizationConfig {
  const AppsyncDatasourceHttpConfigAuthorizationConfig({
    this.authorizationType,
    this.awsIamConfig,
  });

  final TfArg<String>? authorizationType;

  final AppsyncDatasourceHttpConfigAuthorizationConfigAwsIamConfig?
  awsIamConfig;

  Map<String, Object?> encode() => {
    if (authorizationType != null)
      'authorization_type': authorizationType!.toTfJson(),
    if (awsIamConfig != null) 'aws_iam_config': awsIamConfig!.encode(),
  };
}

/// Typed helper for the `http_config.authorization_config.aws_iam_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceHttpConfigAuthorizationConfigAwsIamConfig {
  const AppsyncDatasourceHttpConfigAuthorizationConfigAwsIamConfig({
    this.signingRegion,
    this.signingServiceName,
  });

  final TfArg<String>? signingRegion;

  final TfArg<String>? signingServiceName;

  Map<String, Object?> encode() => {
    if (signingRegion != null) 'signing_region': signingRegion!.toTfJson(),
    if (signingServiceName != null)
      'signing_service_name': signingServiceName!.toTfJson(),
  };
}

/// Typed helper for the `lambda_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceLambdaConfig {
  const AppsyncDatasourceLambdaConfig({required this.functionArn});

  final TfArg<String> functionArn;

  Map<String, Object?> encode() => {'function_arn': functionArn.toTfJson()};
}

/// Typed helper for the `opensearchservice_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceOpensearchserviceConfig {
  const AppsyncDatasourceOpensearchserviceConfig({
    required this.endpoint,
    this.region,
  });

  final TfArg<String> endpoint;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

/// Typed helper for the `relational_database_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceRelationalDatabaseConfig {
  const AppsyncDatasourceRelationalDatabaseConfig({
    this.sourceType,
    this.httpEndpointConfig,
  });

  final TfArg<String>? sourceType;

  final AppsyncDatasourceRelationalDatabaseConfigHttpEndpointConfig?
  httpEndpointConfig;

  Map<String, Object?> encode() => {
    if (sourceType != null) 'source_type': sourceType!.toTfJson(),
    if (httpEndpointConfig != null)
      'http_endpoint_config': httpEndpointConfig!.encode(),
  };
}

/// Typed helper for the `relational_database_config.http_endpoint_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceRelationalDatabaseConfigHttpEndpointConfig {
  const AppsyncDatasourceRelationalDatabaseConfigHttpEndpointConfig({
    required this.awsSecretStoreArn,
    this.databaseName,
    required this.dbClusterIdentifier,
    this.region,
    this.schema,
  });

  final TfArg<String> awsSecretStoreArn;

  final TfArg<String>? databaseName;

  final TfArg<String> dbClusterIdentifier;

  final TfArg<String>? region;

  final TfArg<String>? schema;

  Map<String, Object?> encode() => {
    'aws_secret_store_arn': awsSecretStoreArn.toTfJson(),
    if (databaseName != null) 'database_name': databaseName!.toTfJson(),
    'db_cluster_identifier': dbClusterIdentifier.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (schema != null) 'schema': schema!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appsync_datasource`.
final class AwsAppsyncDatasource extends Resource {
  static const String tfType = 'aws_appsync_datasource';

  AwsAppsyncDatasource({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? serviceRoleArn,
    required TfArg<String> type,
    AppsyncDatasourceDynamodbConfig? dynamodbConfig,
    AppsyncDatasourceElasticsearchConfig? elasticsearchConfig,
    AppsyncDatasourceEventBridgeConfig? eventBridgeConfig,
    AppsyncDatasourceHttpConfig? httpConfig,
    AppsyncDatasourceLambdaConfig? lambdaConfig,
    AppsyncDatasourceOpensearchserviceConfig? opensearchserviceConfig,
    AppsyncDatasourceRelationalDatabaseConfig? relationalDatabaseConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (serviceRoleArn != null) 'service_role_arn': serviceRoleArn,
           'type': type,
           if (dynamodbConfig != null)
             'dynamodb_config': TfArg.literal(dynamodbConfig.encode()),
           if (elasticsearchConfig != null)
             'elasticsearch_config': TfArg.literal(
               elasticsearchConfig.encode(),
             ),
           if (eventBridgeConfig != null)
             'event_bridge_config': TfArg.literal(eventBridgeConfig.encode()),
           if (httpConfig != null)
             'http_config': TfArg.literal(httpConfig.encode()),
           if (lambdaConfig != null)
             'lambda_config': TfArg.literal(lambdaConfig.encode()),
           if (opensearchserviceConfig != null)
             'opensearchservice_config': TfArg.literal(
               opensearchserviceConfig.encode(),
             ),
           if (relationalDatabaseConfig != null)
             'relational_database_config': TfArg.literal(
               relationalDatabaseConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncDatasourceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
