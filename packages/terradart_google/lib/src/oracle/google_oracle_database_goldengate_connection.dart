// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../oracle/google_oracle_database_odb_network.dart'
    show GoogleOracleDatabaseOdbNetwork;
import '../oracle/google_oracle_database_odb_subnet.dart'
    show GoogleOracleDatabaseOdbSubnet;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_oracle_database_goldengate_connection`.
const Set<String> _googleOracleDatabaseGoldengateConnectionSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate connections.
extension type const OracleDatabaseGoldengateConnectionDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseGoldengateConnectionDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseGoldengateConnectionDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseGoldengateConnectionDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = OracleDatabaseGoldengateConnectionDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = OracleDatabaseGoldengateConnectionDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = OracleDatabaseGoldengateConnectionDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<OracleDatabaseGoldengateConnectionDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionProperties {
  const OracleDatabaseGoldengateConnectionProperties({
    required this.connectionType,
    this.description,
    required this.displayName,
    this.routingMethod,
    this.amazonKinesisConnectionProperties,
    this.amazonRedshiftConnectionProperties,
    this.amazonS3ConnectionProperties,
    this.azureDataLakeStorageConnectionProperties,
    this.azureSynapseAnalyticsConnectionProperties,
    this.databricksConnectionProperties,
    this.db2ConnectionProperties,
    this.elasticsearchConnectionProperties,
    this.genericConnectionProperties,
    this.goldengateConnectionProperties,
    this.googleBigQueryConnectionProperties,
    this.googleCloudStorageConnectionProperties,
    this.googlePubsubConnectionProperties,
    this.hdfsConnectionProperties,
    this.icebergConnectionProperties,
    this.javaMessageServiceConnectionProperties,
    this.kafkaConnectionProperties,
    this.kafkaSchemaRegistryConnectionProperties,
    this.microsoftFabricConnectionProperties,
    this.microsoftSqlserverConnectionProperties,
    this.mongodbConnectionProperties,
    this.mysqlConnectionProperties,
    this.ociObjectStorageConnectionProperties,
    this.oracleAiDataPlatformConnectionProperties,
    this.oracleConnectionProperties,
    this.oracleNosqlConnectionProperties,
    this.postgresqlConnectionProperties,
    this.redisConnectionProperties,
    this.snowflakeConnectionProperties,
  });

  final TfArg<String> connectionType;

  final TfArg<String>? description;

  final TfArg<String> displayName;

  final TfArg<String>? routingMethod;

  final OracleDatabaseGoldengateConnectionAmazonKinesisConnectionProperties?
  amazonKinesisConnectionProperties;

  final OracleDatabaseGoldengateConnectionAmazonRedshiftConnectionProperties?
  amazonRedshiftConnectionProperties;

  final OracleDatabaseGoldengateConnectionAmazonS3ConnectionProperties?
  amazonS3ConnectionProperties;

  final OracleDatabaseGoldengateConnectionAzureDataLakeStorageConnectionProperties?
  azureDataLakeStorageConnectionProperties;

  final OracleDatabaseGoldengateConnectionAzureSynapseAnalyticsConnectionProperties?
  azureSynapseAnalyticsConnectionProperties;

  final OracleDatabaseGoldengateConnectionDatabricksConnectionProperties?
  databricksConnectionProperties;

  final OracleDatabaseGoldengateConnectionDb2ConnectionProperties?
  db2ConnectionProperties;

  final OracleDatabaseGoldengateConnectionElasticsearchConnectionProperties?
  elasticsearchConnectionProperties;

  final OracleDatabaseGoldengateConnectionGenericConnectionProperties?
  genericConnectionProperties;

  final OracleDatabaseGoldengateConnectionGoldengateConnectionProperties?
  goldengateConnectionProperties;

  final OracleDatabaseGoldengateConnectionGoogleBigQueryConnectionProperties?
  googleBigQueryConnectionProperties;

  final OracleDatabaseGoldengateConnectionGoogleCloudStorageConnectionProperties?
  googleCloudStorageConnectionProperties;

  final OracleDatabaseGoldengateConnectionGooglePubsubConnectionProperties?
  googlePubsubConnectionProperties;

  final OracleDatabaseGoldengateConnectionHdfsConnectionProperties?
  hdfsConnectionProperties;

  final OracleDatabaseGoldengateConnectionIcebergConnectionProperties?
  icebergConnectionProperties;

  final OracleDatabaseGoldengateConnectionJavaMessageServiceConnectionProperties?
  javaMessageServiceConnectionProperties;

  final OracleDatabaseGoldengateConnectionKafkaConnectionProperties?
  kafkaConnectionProperties;

  final OracleDatabaseGoldengateConnectionKafkaSchemaRegistryConnectionProperties?
  kafkaSchemaRegistryConnectionProperties;

  final OracleDatabaseGoldengateConnectionMicrosoftFabricConnectionProperties?
  microsoftFabricConnectionProperties;

  final OracleDatabaseGoldengateConnectionMicrosoftSqlserverConnectionProperties?
  microsoftSqlserverConnectionProperties;

  final OracleDatabaseGoldengateConnectionMongodbConnectionProperties?
  mongodbConnectionProperties;

  final OracleDatabaseGoldengateConnectionMysqlConnectionProperties?
  mysqlConnectionProperties;

  final OracleDatabaseGoldengateConnectionOciObjectStorageConnectionProperties?
  ociObjectStorageConnectionProperties;

  final OracleDatabaseGoldengateConnectionOracleAiDataPlatformConnectionProperties?
  oracleAiDataPlatformConnectionProperties;

  final OracleDatabaseGoldengateConnectionOracleConnectionProperties?
  oracleConnectionProperties;

  final OracleDatabaseGoldengateConnectionOracleNosqlConnectionProperties?
  oracleNosqlConnectionProperties;

  final OracleDatabaseGoldengateConnectionPostgresqlConnectionProperties?
  postgresqlConnectionProperties;

  final OracleDatabaseGoldengateConnectionRedisConnectionProperties?
  redisConnectionProperties;

  final OracleDatabaseGoldengateConnectionSnowflakeConnectionProperties?
  snowflakeConnectionProperties;

  @internal
  Map<String, Object?> encode() => {
    'connection_type': connectionType.toTfJson(),
    'description': ?description?.toTfJson(),
    'display_name': displayName.toTfJson(),
    'routing_method': ?routingMethod?.toTfJson(),
    'amazon_kinesis_connection_properties': ?amazonKinesisConnectionProperties
        ?.encode(),
    'amazon_redshift_connection_properties': ?amazonRedshiftConnectionProperties
        ?.encode(),
    'amazon_s3_connection_properties': ?amazonS3ConnectionProperties?.encode(),
    'azure_data_lake_storage_connection_properties':
        ?azureDataLakeStorageConnectionProperties?.encode(),
    'azure_synapse_analytics_connection_properties':
        ?azureSynapseAnalyticsConnectionProperties?.encode(),
    'databricks_connection_properties': ?databricksConnectionProperties
        ?.encode(),
    'db2_connection_properties': ?db2ConnectionProperties?.encode(),
    'elasticsearch_connection_properties': ?elasticsearchConnectionProperties
        ?.encode(),
    'generic_connection_properties': ?genericConnectionProperties?.encode(),
    'goldengate_connection_properties': ?goldengateConnectionProperties
        ?.encode(),
    'google_big_query_connection_properties':
        ?googleBigQueryConnectionProperties?.encode(),
    'google_cloud_storage_connection_properties':
        ?googleCloudStorageConnectionProperties?.encode(),
    'google_pubsub_connection_properties': ?googlePubsubConnectionProperties
        ?.encode(),
    'hdfs_connection_properties': ?hdfsConnectionProperties?.encode(),
    'iceberg_connection_properties': ?icebergConnectionProperties?.encode(),
    'java_message_service_connection_properties':
        ?javaMessageServiceConnectionProperties?.encode(),
    'kafka_connection_properties': ?kafkaConnectionProperties?.encode(),
    'kafka_schema_registry_connection_properties':
        ?kafkaSchemaRegistryConnectionProperties?.encode(),
    'microsoft_fabric_connection_properties':
        ?microsoftFabricConnectionProperties?.encode(),
    'microsoft_sqlserver_connection_properties':
        ?microsoftSqlserverConnectionProperties?.encode(),
    'mongodb_connection_properties': ?mongodbConnectionProperties?.encode(),
    'mysql_connection_properties': ?mysqlConnectionProperties?.encode(),
    'oci_object_storage_connection_properties':
        ?ociObjectStorageConnectionProperties?.encode(),
    'oracle_ai_data_platform_connection_properties':
        ?oracleAiDataPlatformConnectionProperties?.encode(),
    'oracle_connection_properties': ?oracleConnectionProperties?.encode(),
    'oracle_nosql_connection_properties': ?oracleNosqlConnectionProperties
        ?.encode(),
    'postgresql_connection_properties': ?postgresqlConnectionProperties
        ?.encode(),
    'redis_connection_properties': ?redisConnectionProperties?.encode(),
    'snowflake_connection_properties': ?snowflakeConnectionProperties?.encode(),
  };
}

/// Typed helper for the `properties.amazon_kinesis_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAmazonKinesisConnectionProperties {
  const OracleDatabaseGoldengateConnectionAmazonKinesisConnectionProperties({
    this.accessKeyId,
    this.awsRegion,
    this.endpoint,
    this.secretAccessKeySecret,
    this.technologyType,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? awsRegion;

  final TfArg<String>? endpoint;

  final TfArg<String>? secretAccessKeySecret;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'aws_region': ?awsRegion?.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
    'secret_access_key_secret': ?secretAccessKeySecret?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.amazon_redshift_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAmazonRedshiftConnectionProperties {
  const OracleDatabaseGoldengateConnectionAmazonRedshiftConnectionProperties({
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.technologyType,
    this.username,
  });

  final TfArg<String>? connectionUrl;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'connection_url': ?connectionUrl?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.amazon_s3_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAmazonS3ConnectionProperties {
  const OracleDatabaseGoldengateConnectionAmazonS3ConnectionProperties({
    this.accessKeyId,
    this.endpoint,
    this.region,
    this.secretAccessKeySecret,
    this.technologyType,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? endpoint;

  final TfArg<String>? region;

  final TfArg<String>? secretAccessKeySecret;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
    'region': ?region?.toTfJson(),
    'secret_access_key_secret': ?secretAccessKeySecret?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.azure_data_lake_storage_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAzureDataLakeStorageConnectionProperties {
  const OracleDatabaseGoldengateConnectionAzureDataLakeStorageConnectionProperties({
    this.account,
    this.accountKeySecret,
    this.authenticationType,
    this.azureAuthorityHost,
    this.azureTenantId,
    this.clientId,
    this.clientSecret,
    this.endpoint,
    this.sasTokenSecret,
    this.technologyType,
  });

  final TfArg<String>? account;

  final TfArg<String>? accountKeySecret;

  final TfArg<String>? authenticationType;

  final TfArg<String>? azureAuthorityHost;

  final TfArg<String>? azureTenantId;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? endpoint;

  final TfArg<String>? sasTokenSecret;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'account': ?account?.toTfJson(),
    'account_key_secret': ?accountKeySecret?.toTfJson(),
    'authentication_type': ?authenticationType?.toTfJson(),
    'azure_authority_host': ?azureAuthorityHost?.toTfJson(),
    'azure_tenant_id': ?azureTenantId?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
    'sas_token_secret': ?sasTokenSecret?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.azure_synapse_analytics_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAzureSynapseAnalyticsConnectionProperties {
  const OracleDatabaseGoldengateConnectionAzureSynapseAnalyticsConnectionProperties({
    this.connectionString,
    this.password,
    this.passwordSecretVersion,
    this.technologyType,
    this.username,
  });

  final TfArg<String>? connectionString;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'connection_string': ?connectionString?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.databricks_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionDatabricksConnectionProperties {
  const OracleDatabaseGoldengateConnectionDatabricksConnectionProperties({
    this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.storageCredential,
    this.technologyType,
  });

  final TfArg<String>? authenticationType;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? connectionUrl;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? storageCredential;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'connection_url': ?connectionUrl?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'storage_credential': ?storageCredential?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.db2_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionDb2ConnectionProperties {
  const OracleDatabaseGoldengateConnectionDb2ConnectionProperties({
    this.database,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslClientKeystashFile,
    this.sslClientKeystoredbFile,
    this.sslServerCertificateFile,
    this.technologyType,
    this.username,
    this.additionalAttributes,
  });

  final TfArg<String>? database;

  final TfArg<String>? host;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<num>? port;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? sslClientKeystashFile;

  final TfArg<String>? sslClientKeystoredbFile;

  final TfArg<String>? sslServerCertificateFile;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  final List<OracleDatabaseGoldengateConnectionAdditionalAttributes>?
  additionalAttributes;

  @internal
  Map<String, Object?> encode() => {
    'database': ?database?.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'port': ?port?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'ssl_client_keystash_file': ?sslClientKeystashFile?.toTfJson(),
    'ssl_client_keystoredb_file': ?sslClientKeystoredbFile?.toTfJson(),
    'ssl_server_certificate_file': ?sslServerCertificateFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
    if (additionalAttributes != null)
      'additional_attributes': [
        for (final e in additionalAttributes!) e.encode(),
      ],
  };
}

/// Typed helper for the `properties.db2_connection_properties.additional_attributes` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OracleDatabaseGoldengateConnectionAdditionalAttributes {
  const OracleDatabaseGoldengateConnectionAdditionalAttributes({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `properties.elasticsearch_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionElasticsearchConnectionProperties {
  const OracleDatabaseGoldengateConnectionElasticsearchConnectionProperties({
    this.authenticationType,
    this.fingerprint,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.servers,
    this.technologyType,
    this.username,
  });

  final TfArg<String>? authenticationType;

  final TfArg<String>? fingerprint;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? servers;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'fingerprint': ?fingerprint?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'servers': ?servers?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.generic_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionGenericConnectionProperties {
  const OracleDatabaseGoldengateConnectionGenericConnectionProperties({
    this.host,
    this.technologyType,
  });

  final TfArg<String>? host;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.goldengate_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionGoldengateConnectionProperties {
  const OracleDatabaseGoldengateConnectionGoldengateConnectionProperties({
    this.goldengateDeploymentId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.technologyType,
    this.username,
  });

  final TfArg<String>? goldengateDeploymentId;

  final TfArg<String>? host;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<num>? port;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'goldengate_deployment_id': ?goldengateDeploymentId?.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'port': ?port?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.google_big_query_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionGoogleBigQueryConnectionProperties {
  const OracleDatabaseGoldengateConnectionGoogleBigQueryConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  final TfArg<String>? serviceAccountKeyFile;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.google_cloud_storage_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionGoogleCloudStorageConnectionProperties {
  const OracleDatabaseGoldengateConnectionGoogleCloudStorageConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  final TfArg<String>? serviceAccountKeyFile;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.google_pubsub_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionGooglePubsubConnectionProperties {
  const OracleDatabaseGoldengateConnectionGooglePubsubConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  final TfArg<String>? serviceAccountKeyFile;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.hdfs_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionHdfsConnectionProperties {
  const OracleDatabaseGoldengateConnectionHdfsConnectionProperties({
    this.coreSiteXml,
    this.technologyType,
  });

  final TfArg<String>? coreSiteXml;

  final TfArg<String>? technologyType;

  @internal
  Map<String, Object?> encode() => {
    'core_site_xml': ?coreSiteXml?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionIcebergConnectionProperties {
  const OracleDatabaseGoldengateConnectionIcebergConnectionProperties({
    required this.technologyType,
    required this.catalog,
    required this.storage,
  });

  final TfArg<String> technologyType;

  final OracleDatabaseGoldengateConnectionCatalog catalog;

  final OracleDatabaseGoldengateConnectionStorage storage;

  @internal
  Map<String, Object?> encode() => {
    'technology_type': technologyType.toTfJson(),
    'catalog': catalog.encode(),
    'storage': storage.encode(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionCatalog {
  const OracleDatabaseGoldengateConnectionCatalog({
    required this.catalogType,
    this.glueIcebergCatalog,
    this.nessieIcebergCatalog,
    this.polarisIcebergCatalog,
    this.restIcebergCatalog,
  });

  final TfArg<String> catalogType;

  final OracleDatabaseGoldengateConnectionGlueIcebergCatalog?
  glueIcebergCatalog;

  final OracleDatabaseGoldengateConnectionNessieIcebergCatalog?
  nessieIcebergCatalog;

  final OracleDatabaseGoldengateConnectionPolarisIcebergCatalog?
  polarisIcebergCatalog;

  final OracleDatabaseGoldengateConnectionRestIcebergCatalog?
  restIcebergCatalog;

  @internal
  Map<String, Object?> encode() => {
    'catalog_type': catalogType.toTfJson(),
    'glue_iceberg_catalog': ?glueIcebergCatalog?.encode(),
    'nessie_iceberg_catalog': ?nessieIcebergCatalog?.encode(),
    'polaris_iceberg_catalog': ?polarisIcebergCatalog?.encode(),
    'rest_iceberg_catalog': ?restIcebergCatalog?.encode(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog.glue_iceberg_catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionGlueIcebergCatalog {
  const OracleDatabaseGoldengateConnectionGlueIcebergCatalog({
    required this.glueId,
  });

  final TfArg<String> glueId;

  @internal
  Map<String, Object?> encode() => {'glue_id': glueId.toTfJson()};
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog.nessie_iceberg_catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionNessieIcebergCatalog {
  const OracleDatabaseGoldengateConnectionNessieIcebergCatalog({
    required this.branch,
    required this.uri,
  });

  final TfArg<String> branch;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'branch': branch.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog.polaris_iceberg_catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPolarisIcebergCatalog {
  const OracleDatabaseGoldengateConnectionPolarisIcebergCatalog({
    required this.clientId,
    this.clientSecret,
    required this.polarisCatalog,
    required this.principalRole,
    required this.uri,
  });

  final TfArg<String> clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String> polarisCatalog;

  final TfArg<String> principalRole;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'polaris_catalog': polarisCatalog.toTfJson(),
    'principal_role': principalRole.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog.rest_iceberg_catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionRestIcebergCatalog {
  const OracleDatabaseGoldengateConnectionRestIcebergCatalog({
    this.properties,
    required this.uri,
  });

  final TfArg<String>? properties;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.storage` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionStorage {
  const OracleDatabaseGoldengateConnectionStorage({
    required this.storageType,
    this.amazonS3IcebergStorage,
    this.azureDataLakeStorageIcebergStorage,
    this.googleCloudStorageIcebergStorage,
  });

  final TfArg<String> storageType;

  final OracleDatabaseGoldengateConnectionAmazonS3IcebergStorage?
  amazonS3IcebergStorage;

  final OracleDatabaseGoldengateConnectionAzureDataLakeStorageIcebergStorage?
  azureDataLakeStorageIcebergStorage;

  final OracleDatabaseGoldengateConnectionGoogleCloudStorageIcebergStorage?
  googleCloudStorageIcebergStorage;

  @internal
  Map<String, Object?> encode() => {
    'storage_type': storageType.toTfJson(),
    'amazon_s3_iceberg_storage': ?amazonS3IcebergStorage?.encode(),
    'azure_data_lake_storage_iceberg_storage':
        ?azureDataLakeStorageIcebergStorage?.encode(),
    'google_cloud_storage_iceberg_storage': ?googleCloudStorageIcebergStorage
        ?.encode(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.storage.amazon_s3_iceberg_storage` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAmazonS3IcebergStorage {
  const OracleDatabaseGoldengateConnectionAmazonS3IcebergStorage({
    required this.accessKeyId,
    required this.bucket,
    this.endpoint,
    required this.region,
    required this.schemeType,
    this.secretAccessKeySecret,
  });

  final TfArg<String> accessKeyId;

  final TfArg<String> bucket;

  final TfArg<String>? endpoint;

  final TfArg<String> region;

  final TfArg<String> schemeType;

  final TfArg<String>? secretAccessKeySecret;

  @internal
  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'bucket': bucket.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
    'region': region.toTfJson(),
    'scheme_type': schemeType.toTfJson(),
    'secret_access_key_secret': ?secretAccessKeySecret?.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.storage.azure_data_lake_storage_iceberg_storage` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionAzureDataLakeStorageIcebergStorage {
  const OracleDatabaseGoldengateConnectionAzureDataLakeStorageIcebergStorage({
    this.accountKeySecret,
    required this.azureAccount,
    required this.container,
    this.endpoint,
  });

  final TfArg<String>? accountKeySecret;

  final TfArg<String> azureAccount;

  final TfArg<String> container;

  final TfArg<String>? endpoint;

  @internal
  Map<String, Object?> encode() => {
    'account_key_secret': ?accountKeySecret?.toTfJson(),
    'azure_account': azureAccount.toTfJson(),
    'container': container.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.storage.google_cloud_storage_iceberg_storage` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionGoogleCloudStorageIcebergStorage {
  const OracleDatabaseGoldengateConnectionGoogleCloudStorageIcebergStorage({
    required this.bucket,
    required this.projectId,
    this.serviceAccountKeyFile,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String> projectId;

  final TfArg<String>? serviceAccountKeyFile;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'project_id': projectId.toTfJson(),
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
  };
}

/// Typed helper for the `properties.java_message_service_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionJavaMessageServiceConnectionProperties {
  const OracleDatabaseGoldengateConnectionJavaMessageServiceConnectionProperties({
    this.authenticationType,
    this.connectionFactory,
    this.connectionUrl,
    this.jndiConnectionFactory,
    this.jndiInitialContextFactory,
    this.jndiProviderUrl,
    this.jndiSecurityCredentialsSecret,
    this.jndiSecurityPrincipal,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.useJndi,
    this.username,
  });

  final TfArg<String>? authenticationType;

  final TfArg<String>? connectionFactory;

  final TfArg<String>? connectionUrl;

  final TfArg<String>? jndiConnectionFactory;

  final TfArg<String>? jndiInitialContextFactory;

  final TfArg<String>? jndiProviderUrl;

  final TfArg<String>? jndiSecurityCredentialsSecret;

  final TfArg<String>? jndiSecurityPrincipal;

  final TfArg<String>? keyStoreFile;

  final TfArg<String>? keyStorePassword;

  final TfArg<String>? keyStorePasswordSecretVersion;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? sslKeyPassword;

  final TfArg<String>? sslKeyPasswordSecretVersion;

  final TfArg<String>? technologyType;

  final TfArg<String>? trustStoreFile;

  final TfArg<String>? trustStorePassword;

  final TfArg<String>? trustStorePasswordSecretVersion;

  final TfArg<bool>? useJndi;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'connection_factory': ?connectionFactory?.toTfJson(),
    'connection_url': ?connectionUrl?.toTfJson(),
    'jndi_connection_factory': ?jndiConnectionFactory?.toTfJson(),
    'jndi_initial_context_factory': ?jndiInitialContextFactory?.toTfJson(),
    'jndi_provider_url': ?jndiProviderUrl?.toTfJson(),
    'jndi_security_credentials_secret': ?jndiSecurityCredentialsSecret
        ?.toTfJson(),
    'jndi_security_principal': ?jndiSecurityPrincipal?.toTfJson(),
    'key_store_file': ?keyStoreFile?.toTfJson(),
    'key_store_password': ?keyStorePassword?.toTfJson(),
    'key_store_password_secret_version': ?keyStorePasswordSecretVersion
        ?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'ssl_key_password': ?sslKeyPassword?.toTfJson(),
    'ssl_key_password_secret_version': ?sslKeyPasswordSecretVersion?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'trust_store_file': ?trustStoreFile?.toTfJson(),
    'trust_store_password': ?trustStorePassword?.toTfJson(),
    'trust_store_password_secret_version': ?trustStorePasswordSecretVersion
        ?.toTfJson(),
    'use_jndi': ?useJndi?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.kafka_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionKafkaConnectionProperties {
  const OracleDatabaseGoldengateConnectionKafkaConnectionProperties({
    this.clusterId,
    this.consumerPropertiesFile,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.producerPropertiesFile,
    this.securityProtocol,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.streamPoolId,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.useResourcePrincipal,
    this.username,
    this.bootstrapServers,
  });

  final TfArg<String>? clusterId;

  final TfArg<String>? consumerPropertiesFile;

  final TfArg<String>? keyStoreFile;

  final TfArg<String>? keyStorePassword;

  final TfArg<String>? keyStorePasswordSecretVersion;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? producerPropertiesFile;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? sslKeyPassword;

  final TfArg<String>? sslKeyPasswordSecretVersion;

  final TfArg<String>? streamPoolId;

  final TfArg<String>? technologyType;

  final TfArg<String>? trustStoreFile;

  final TfArg<String>? trustStorePassword;

  final TfArg<String>? trustStorePasswordSecretVersion;

  final TfArg<bool>? useResourcePrincipal;

  final TfArg<String>? username;

  final List<OracleDatabaseGoldengateConnectionBootstrapServers>?
  bootstrapServers;

  @internal
  Map<String, Object?> encode() => {
    'cluster_id': ?clusterId?.toTfJson(),
    'consumer_properties_file': ?consumerPropertiesFile?.toTfJson(),
    'key_store_file': ?keyStoreFile?.toTfJson(),
    'key_store_password': ?keyStorePassword?.toTfJson(),
    'key_store_password_secret_version': ?keyStorePasswordSecretVersion
        ?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'producer_properties_file': ?producerPropertiesFile?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'ssl_key_password': ?sslKeyPassword?.toTfJson(),
    'ssl_key_password_secret_version': ?sslKeyPasswordSecretVersion?.toTfJson(),
    'stream_pool_id': ?streamPoolId?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'trust_store_file': ?trustStoreFile?.toTfJson(),
    'trust_store_password': ?trustStorePassword?.toTfJson(),
    'trust_store_password_secret_version': ?trustStorePasswordSecretVersion
        ?.toTfJson(),
    'use_resource_principal': ?useResourcePrincipal?.toTfJson(),
    'username': ?username?.toTfJson(),
    if (bootstrapServers != null)
      'bootstrap_servers': [for (final e in bootstrapServers!) e.encode()],
  };
}

/// Typed helper for the `properties.kafka_connection_properties.bootstrap_servers` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionBootstrapServers {
  const OracleDatabaseGoldengateConnectionBootstrapServers({
    required this.host,
    this.port,
    this.privateIpAddress,
  });

  final TfArg<String> host;

  final TfArg<num>? port;

  final TfArg<String>? privateIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'host': host.toTfJson(),
    'port': ?port?.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
  };
}

/// Typed helper for the `properties.kafka_schema_registry_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionKafkaSchemaRegistryConnectionProperties {
  const OracleDatabaseGoldengateConnectionKafkaSchemaRegistryConnectionProperties({
    this.authenticationType,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.url,
    this.username,
  });

  final TfArg<String>? authenticationType;

  final TfArg<String>? keyStoreFile;

  final TfArg<String>? keyStorePassword;

  final TfArg<String>? keyStorePasswordSecretVersion;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? sslKeyPassword;

  final TfArg<String>? sslKeyPasswordSecretVersion;

  final TfArg<String>? technologyType;

  final TfArg<String>? trustStoreFile;

  final TfArg<String>? trustStorePassword;

  final TfArg<String>? trustStorePasswordSecretVersion;

  final TfArg<String>? url;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'key_store_file': ?keyStoreFile?.toTfJson(),
    'key_store_password': ?keyStorePassword?.toTfJson(),
    'key_store_password_secret_version': ?keyStorePasswordSecretVersion
        ?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'ssl_key_password': ?sslKeyPassword?.toTfJson(),
    'ssl_key_password_secret_version': ?sslKeyPasswordSecretVersion?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'trust_store_file': ?trustStoreFile?.toTfJson(),
    'trust_store_password': ?trustStorePassword?.toTfJson(),
    'trust_store_password_secret_version': ?trustStorePasswordSecretVersion
        ?.toTfJson(),
    'url': ?url?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.microsoft_fabric_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionMicrosoftFabricConnectionProperties {
  const OracleDatabaseGoldengateConnectionMicrosoftFabricConnectionProperties({
    this.clientId,
    this.clientSecret,
    this.endpoint,
    this.technologyType,
    this.tenantId,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? endpoint;

  final TfArg<String>? technologyType;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `properties.microsoft_sqlserver_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionMicrosoftSqlserverConnectionProperties {
  const OracleDatabaseGoldengateConnectionMicrosoftSqlserverConnectionProperties({
    this.database,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.serverCertificateValidationRequired,
    this.sslCaFile,
    this.technologyType,
    this.username,
    this.additionalAttributes,
  });

  final TfArg<String>? database;

  final TfArg<String>? host;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<num>? port;

  final TfArg<String>? securityProtocol;

  final TfArg<bool>? serverCertificateValidationRequired;

  final TfArg<String>? sslCaFile;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  final List<OracleDatabaseGoldengateConnectionAdditionalAttributes>?
  additionalAttributes;

  @internal
  Map<String, Object?> encode() => {
    'database': ?database?.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'port': ?port?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'server_certificate_validation_required':
        ?serverCertificateValidationRequired?.toTfJson(),
    'ssl_ca_file': ?sslCaFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
    if (additionalAttributes != null)
      'additional_attributes': [
        for (final e in additionalAttributes!) e.encode(),
      ],
  };
}

/// Typed helper for the `properties.mongodb_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionMongodbConnectionProperties {
  const OracleDatabaseGoldengateConnectionMongodbConnectionProperties({
    this.connectionString,
    this.databaseId,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.technologyType,
    this.tlsCaFile,
    this.tlsCertificateKeyFile,
    this.tlsCertificateKeyFilePassword,
    this.tlsCertificateKeyFilePasswordSecretVersion,
    this.username,
  });

  final TfArg<String>? connectionString;

  final TfArg<String>? databaseId;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? technologyType;

  final TfArg<String>? tlsCaFile;

  final TfArg<String>? tlsCertificateKeyFile;

  final TfArg<String>? tlsCertificateKeyFilePassword;

  final TfArg<String>? tlsCertificateKeyFilePasswordSecretVersion;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'connection_string': ?connectionString?.toTfJson(),
    'database_id': ?databaseId?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'tls_ca_file': ?tlsCaFile?.toTfJson(),
    'tls_certificate_key_file': ?tlsCertificateKeyFile?.toTfJson(),
    'tls_certificate_key_file_password': ?tlsCertificateKeyFilePassword
        ?.toTfJson(),
    'tls_certificate_key_file_password_secret_version':
        ?tlsCertificateKeyFilePasswordSecretVersion?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.mysql_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionMysqlConnectionProperties {
  const OracleDatabaseGoldengateConnectionMysqlConnectionProperties({
    this.database,
    this.dbSystemId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslCaFile,
    this.sslCertFile,
    this.sslCrlFile,
    this.sslKeyFile,
    this.sslMode,
    this.technologyType,
    this.username,
    this.additionalAttributes,
  });

  final TfArg<String>? database;

  final TfArg<String>? dbSystemId;

  final TfArg<String>? host;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<num>? port;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? sslCaFile;

  final TfArg<String>? sslCertFile;

  final TfArg<String>? sslCrlFile;

  final TfArg<String>? sslKeyFile;

  final TfArg<String>? sslMode;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  final List<OracleDatabaseGoldengateConnectionAdditionalAttributes>?
  additionalAttributes;

  @internal
  Map<String, Object?> encode() => {
    'database': ?database?.toTfJson(),
    'db_system_id': ?dbSystemId?.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'port': ?port?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'ssl_ca_file': ?sslCaFile?.toTfJson(),
    'ssl_cert_file': ?sslCertFile?.toTfJson(),
    'ssl_crl_file': ?sslCrlFile?.toTfJson(),
    'ssl_key_file': ?sslKeyFile?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
    if (additionalAttributes != null)
      'additional_attributes': [
        for (final e in additionalAttributes!) e.encode(),
      ],
  };
}

/// Typed helper for the `properties.oci_object_storage_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionOciObjectStorageConnectionProperties {
  const OracleDatabaseGoldengateConnectionOciObjectStorageConnectionProperties({
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.publicKeyFingerprint,
    this.region,
    this.technologyType,
    this.tenancyId,
    this.useResourcePrincipal,
    this.userId,
  });

  final TfArg<String>? privateKeyFile;

  final TfArg<String>? privateKeyPassphraseSecret;

  final TfArg<String>? publicKeyFingerprint;

  final TfArg<String>? region;

  final TfArg<String>? technologyType;

  final TfArg<String>? tenancyId;

  final TfArg<bool>? useResourcePrincipal;

  final TfArg<String>? userId;

  @internal
  Map<String, Object?> encode() => {
    'private_key_file': ?privateKeyFile?.toTfJson(),
    'private_key_passphrase_secret': ?privateKeyPassphraseSecret?.toTfJson(),
    'public_key_fingerprint': ?publicKeyFingerprint?.toTfJson(),
    'region': ?region?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'tenancy_id': ?tenancyId?.toTfJson(),
    'use_resource_principal': ?useResourcePrincipal?.toTfJson(),
    'user_id': ?userId?.toTfJson(),
  };
}

/// Typed helper for the `properties.oracle_ai_data_platform_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionOracleAiDataPlatformConnectionProperties {
  const OracleDatabaseGoldengateConnectionOracleAiDataPlatformConnectionProperties({
    this.connectionUrl,
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.publicKeyFingerprint,
    this.region,
    this.technologyType,
    this.tenancyId,
    this.useResourcePrincipal,
    this.userId,
  });

  final TfArg<String>? connectionUrl;

  final TfArg<String>? privateKeyFile;

  final TfArg<String>? privateKeyPassphraseSecret;

  final TfArg<String>? publicKeyFingerprint;

  final TfArg<String>? region;

  final TfArg<String>? technologyType;

  final TfArg<String>? tenancyId;

  final TfArg<bool>? useResourcePrincipal;

  final TfArg<String>? userId;

  @internal
  Map<String, Object?> encode() => {
    'connection_url': ?connectionUrl?.toTfJson(),
    'private_key_file': ?privateKeyFile?.toTfJson(),
    'private_key_passphrase_secret': ?privateKeyPassphraseSecret?.toTfJson(),
    'public_key_fingerprint': ?publicKeyFingerprint?.toTfJson(),
    'region': ?region?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'tenancy_id': ?tenancyId?.toTfJson(),
    'use_resource_principal': ?useResourcePrincipal?.toTfJson(),
    'user_id': ?userId?.toTfJson(),
  };
}

/// Typed helper for the `properties.oracle_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionOracleConnectionProperties {
  const OracleDatabaseGoldengateConnectionOracleConnectionProperties({
    this.authenticationMode,
    this.connectionString,
    this.gcpOracleDatabaseId,
    this.password,
    this.passwordSecretVersion,
    this.sessionMode,
    this.technologyType,
    this.username,
    this.walletFile,
  });

  final TfArg<String>? authenticationMode;

  final TfArg<String>? connectionString;

  final TfArg<String>? gcpOracleDatabaseId;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? sessionMode;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  final TfArg<String>? walletFile;

  @internal
  Map<String, Object?> encode() => {
    'authentication_mode': ?authenticationMode?.toTfJson(),
    'connection_string': ?connectionString?.toTfJson(),
    'gcp_oracle_database_id': ?gcpOracleDatabaseId?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'session_mode': ?sessionMode?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
    'wallet_file': ?walletFile?.toTfJson(),
  };
}

/// Typed helper for the `properties.oracle_nosql_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionOracleNosqlConnectionProperties {
  const OracleDatabaseGoldengateConnectionOracleNosqlConnectionProperties({
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.publicKeyFingerprint,
    this.region,
    this.technologyType,
    this.tenancyId,
    this.useResourcePrincipal,
    this.userId,
  });

  final TfArg<String>? privateKeyFile;

  final TfArg<String>? privateKeyPassphraseSecret;

  final TfArg<String>? publicKeyFingerprint;

  final TfArg<String>? region;

  final TfArg<String>? technologyType;

  final TfArg<String>? tenancyId;

  final TfArg<bool>? useResourcePrincipal;

  final TfArg<String>? userId;

  @internal
  Map<String, Object?> encode() => {
    'private_key_file': ?privateKeyFile?.toTfJson(),
    'private_key_passphrase_secret': ?privateKeyPassphraseSecret?.toTfJson(),
    'public_key_fingerprint': ?publicKeyFingerprint?.toTfJson(),
    'region': ?region?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'tenancy_id': ?tenancyId?.toTfJson(),
    'use_resource_principal': ?useResourcePrincipal?.toTfJson(),
    'user_id': ?userId?.toTfJson(),
  };
}

/// Typed helper for the `properties.postgresql_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPostgresqlConnectionProperties {
  const OracleDatabaseGoldengateConnectionPostgresqlConnectionProperties({
    this.database,
    this.dbSystemId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslCaFile,
    this.sslCertFile,
    this.sslCrlFile,
    this.sslKeyFile,
    this.sslMode,
    this.technologyType,
    this.username,
    this.additionalAttributes,
  });

  final TfArg<String>? database;

  final TfArg<String>? dbSystemId;

  final TfArg<String>? host;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<num>? port;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? sslCaFile;

  final TfArg<String>? sslCertFile;

  final TfArg<String>? sslCrlFile;

  final TfArg<String>? sslKeyFile;

  final TfArg<String>? sslMode;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  final List<OracleDatabaseGoldengateConnectionAdditionalAttributes>?
  additionalAttributes;

  @internal
  Map<String, Object?> encode() => {
    'database': ?database?.toTfJson(),
    'db_system_id': ?dbSystemId?.toTfJson(),
    'host': ?host?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'port': ?port?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'ssl_ca_file': ?sslCaFile?.toTfJson(),
    'ssl_cert_file': ?sslCertFile?.toTfJson(),
    'ssl_crl_file': ?sslCrlFile?.toTfJson(),
    'ssl_key_file': ?sslKeyFile?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
    if (additionalAttributes != null)
      'additional_attributes': [
        for (final e in additionalAttributes!) e.encode(),
      ],
  };
}

/// Typed helper for the `properties.redis_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionRedisConnectionProperties {
  const OracleDatabaseGoldengateConnectionRedisConnectionProperties({
    this.authenticationType,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.redisClusterId,
    this.securityProtocol,
    this.servers,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.username,
  });

  final TfArg<String>? authenticationType;

  final TfArg<String>? keyStoreFile;

  final TfArg<String>? keyStorePassword;

  final TfArg<String>? keyStorePasswordSecretVersion;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? redisClusterId;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? servers;

  final TfArg<String>? technologyType;

  final TfArg<String>? trustStoreFile;

  final TfArg<String>? trustStorePassword;

  final TfArg<String>? trustStorePasswordSecretVersion;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'key_store_file': ?keyStoreFile?.toTfJson(),
    'key_store_password': ?keyStorePassword?.toTfJson(),
    'key_store_password_secret_version': ?keyStorePasswordSecretVersion
        ?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'redis_cluster_id': ?redisClusterId?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'servers': ?servers?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'trust_store_file': ?trustStoreFile?.toTfJson(),
    'trust_store_password': ?trustStorePassword?.toTfJson(),
    'trust_store_password_secret_version': ?trustStorePasswordSecretVersion
        ?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `properties.snowflake_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionSnowflakeConnectionProperties {
  const OracleDatabaseGoldengateConnectionSnowflakeConnectionProperties({
    this.authenticationType,
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.technologyType,
    this.username,
  });

  final TfArg<String>? authenticationType;

  final TfArg<String>? connectionUrl;

  final TfArg<String>? password;

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String>? privateKeyFile;

  final TfArg<String>? privateKeyPassphraseSecret;

  final TfArg<String>? technologyType;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'connection_url': ?connectionUrl?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_secret_version': ?passwordSecretVersion?.toTfJson(),
    'private_key_file': ?privateKeyFile?.toTfJson(),
    'private_key_passphrase_secret': ?privateKeyPassphraseSecret?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Factory wrapper for `google_oracle_database_goldengate_connection`.
///
/// GoldengateConnection is a resource that represents metadata to establish a
/// connection to a source or target data.
///
/// Oracle GoldenGate connection metadata for Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [properties]
/// with `connection_type`, `display_name`, and the type-specific connection
/// block (for example `generic_connection_properties`).
final class GoogleOracleDatabaseGoldengateConnection extends Resource {
  static const String tfType = 'google_oracle_database_goldengate_connection';

  GoogleOracleDatabaseGoldengateConnection(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> goldengateConnectionId,
    required OracleDatabaseGoldengateConnectionProperties properties,
    RefTo<GoogleOracleDatabaseOdbSubnet>? odbSubnet,
    RefTo<GoogleOracleDatabaseOdbNetwork>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseGoldengateConnectionDeletionPolicy? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'goldengate_connection_id': goldengateConnectionId,
           'properties': TfArg.literal(properties.encode()),
           'odb_subnet': ?odbSubnet?.encodeAs('name'),
           'odb_network': ?odbNetwork?.encodeAs('name'),
           'gcp_oracle_zone': ?gcpOracleZone,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateConnectionSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseGoldengateConnection>`.
  RefTo<GoogleOracleDatabaseGoldengateConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `goldengate_connection_id` attribute.
  TfRef<String> get goldengateConnectionId =>
      TfRef.attribute<String>(this, 'goldengate_connection_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetwork => TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnet => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
