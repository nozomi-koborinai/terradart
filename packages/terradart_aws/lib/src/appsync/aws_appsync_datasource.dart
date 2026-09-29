// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_appsync_datasource`.
const Set<String> _awsAppsyncDatasourceSensitive = <String>{};

/// Appsync Datasource enum for `type`.
enum AppsyncDatasourceType implements TerraformEnum {
  awsLambda('AWS_LAMBDA'),
  amazonDynamodb('AMAZON_DYNAMODB'),
  amazonElasticsearch('AMAZON_ELASTICSEARCH'),
  none('NONE'),
  http('HTTP'),
  relationalDatabase('RELATIONAL_DATABASE'),
  amazonOpensearchService('AMAZON_OPENSEARCH_SERVICE'),
  amazonEventbridge('AMAZON_EVENTBRIDGE'),
  amazonBedrockRuntime('AMAZON_BEDROCK_RUNTIME');

  const AppsyncDatasourceType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    'region': ?region?.toTfJson(),
    'table_name': tableName.toTfJson(),
    'use_caller_credentials': ?useCallerCredentials?.toTfJson(),
    'versioned': ?versioned?.toTfJson(),
    'delta_sync_config': ?deltaSyncConfig?.encode(),
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
    'base_table_ttl': ?baseTableTtl?.toTfJson(),
    'delta_sync_table_name': deltaSyncTableName.toTfJson(),
    'delta_sync_table_ttl': ?deltaSyncTableTtl?.toTfJson(),
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
    'region': ?region?.toTfJson(),
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
    'authorization_config': ?authorizationConfig?.encode(),
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

  final TfArg<AppsyncDatasourceHttpConfigAuthorizationConfigAuthorizationType>?
  authorizationType;

  final AppsyncDatasourceHttpConfigAuthorizationConfigAwsIamConfig?
  awsIamConfig;

  Map<String, Object?> encode() => {
    'authorization_type': ?authorizationType?.toTfJson(),
    'aws_iam_config': ?awsIamConfig?.encode(),
  };
}

/// `authorization_type` — derived from the provider schema description.
enum AppsyncDatasourceHttpConfigAuthorizationConfigAuthorizationType
    implements TerraformEnum {
  awsIam('AWS_IAM');

  const AppsyncDatasourceHttpConfigAuthorizationConfigAuthorizationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'signing_region': ?signingRegion?.toTfJson(),
    'signing_service_name': ?signingServiceName?.toTfJson(),
  };
}

/// Typed helper for the `lambda_config` block of
/// `aws_appsync_datasource` (derived from provider schema).
@immutable
final class AppsyncDatasourceLambdaConfig {
  const AppsyncDatasourceLambdaConfig({required this.functionArn});

  final RefTo<AwsLambdaFunction> functionArn;

  Map<String, Object?> encode() => {
    'function_arn': functionArn.encodeAs('arn').toTfJson(),
  };
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
    'region': ?region?.toTfJson(),
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

  final TfArg<AppsyncDatasourceRelationalDatabaseConfigSourceType>? sourceType;

  final AppsyncDatasourceRelationalDatabaseConfigHttpEndpointConfig?
  httpEndpointConfig;

  Map<String, Object?> encode() => {
    'source_type': ?sourceType?.toTfJson(),
    'http_endpoint_config': ?httpEndpointConfig?.encode(),
  };
}

/// `source_type` — derived from the provider schema description.
enum AppsyncDatasourceRelationalDatabaseConfigSourceType
    implements TerraformEnum {
  rdsHttpEndpoint('RDS_HTTP_ENDPOINT');

  const AppsyncDatasourceRelationalDatabaseConfigSourceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'database_name': ?databaseName?.toTfJson(),
    'db_cluster_identifier': dbClusterIdentifier.toTfJson(),
    'region': ?region?.toTfJson(),
    'schema': ?schema?.toTfJson(),
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
    RefTo<AwsIamRole>? serviceRoleArn,
    required TfArg<AppsyncDatasourceType> type,
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
           'description': ?description,
           'name': name,
           'region': ?region,
           'service_role_arn': ?serviceRoleArn?.encodeAs('arn'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncDatasource>`.
  RefTo<AwsAppsyncDatasource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
