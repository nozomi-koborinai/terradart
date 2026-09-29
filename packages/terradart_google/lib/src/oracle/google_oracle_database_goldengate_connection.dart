// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_oracle_database_goldengate_connection`.
const Set<String> _googleOracleDatabaseGoldengateConnectionSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate connections.
enum OracleDatabaseGoldengateConnectionDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseGoldengateConnectionDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
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

  final OracleDatabaseGoldengateConnectionPropertiesAmazonKinesisConnectionProperties?
  amazonKinesisConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesAmazonRedshiftConnectionProperties?
  amazonRedshiftConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesAmazonS3ConnectionProperties?
  amazonS3ConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties?
  azureDataLakeStorageConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties?
  azureSynapseAnalyticsConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesDatabricksConnectionProperties?
  databricksConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionProperties?
  db2ConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesElasticsearchConnectionProperties?
  elasticsearchConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesGenericConnectionProperties?
  genericConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesGoldengateConnectionProperties?
  goldengateConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesGoogleBigQueryConnectionProperties?
  googleBigQueryConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties?
  googleCloudStorageConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesGooglePubsubConnectionProperties?
  googlePubsubConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesHdfsConnectionProperties?
  hdfsConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionProperties?
  icebergConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesJavaMessageServiceConnectionProperties?
  javaMessageServiceConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionProperties?
  kafkaConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties?
  kafkaSchemaRegistryConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesMicrosoftFabricConnectionProperties?
  microsoftFabricConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties?
  microsoftSqlserverConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesMongodbConnectionProperties?
  mongodbConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionProperties?
  mysqlConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesOciObjectStorageConnectionProperties?
  ociObjectStorageConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties?
  oracleAiDataPlatformConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesOracleConnectionProperties?
  oracleConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesOracleNosqlConnectionProperties?
  oracleNosqlConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionProperties?
  postgresqlConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesRedisConnectionProperties?
  redisConnectionProperties;

  final OracleDatabaseGoldengateConnectionPropertiesSnowflakeConnectionProperties?
  snowflakeConnectionProperties;

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
final class OracleDatabaseGoldengateConnectionPropertiesAmazonKinesisConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesAmazonKinesisConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesAmazonRedshiftConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesAmazonRedshiftConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesAmazonS3ConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesAmazonS3ConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesAzureDataLakeStorageConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesDatabricksConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesDatabricksConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionProperties({
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

  final List<
    OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttributes
  >?
  additionalAttributes;

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
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttributes {
  const OracleDatabaseGoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttributes({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `properties.elasticsearch_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesElasticsearchConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesElasticsearchConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesGenericConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesGenericConnectionProperties({
    this.host,
    this.technologyType,
  });

  final TfArg<String>? host;

  final TfArg<String>? technologyType;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.goldengate_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesGoldengateConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesGoldengateConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesGoogleBigQueryConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesGoogleBigQueryConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  final TfArg<String>? serviceAccountKeyFile;

  final TfArg<String>? technologyType;

  Map<String, Object?> encode() => {
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.google_cloud_storage_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesGoogleCloudStorageConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  final TfArg<String>? serviceAccountKeyFile;

  final TfArg<String>? technologyType;

  Map<String, Object?> encode() => {
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.google_pubsub_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesGooglePubsubConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesGooglePubsubConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  final TfArg<String>? serviceAccountKeyFile;

  final TfArg<String>? technologyType;

  Map<String, Object?> encode() => {
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.hdfs_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesHdfsConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesHdfsConnectionProperties({
    this.coreSiteXml,
    this.technologyType,
  });

  final TfArg<String>? coreSiteXml;

  final TfArg<String>? technologyType;

  Map<String, Object?> encode() => {
    'core_site_xml': ?coreSiteXml?.toTfJson(),
    'technology_type': ?technologyType?.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionProperties({
    required this.technologyType,
    required this.catalog,
    required this.storage,
  });

  final TfArg<String> technologyType;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog
  catalog;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorage
  storage;

  Map<String, Object?> encode() => {
    'technology_type': technologyType.toTfJson(),
    'catalog': catalog.encode(),
    'storage': storage.encode(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalog({
    required this.catalogType,
    this.glueIcebergCatalog,
    this.nessieIcebergCatalog,
    this.polarisIcebergCatalog,
    this.restIcebergCatalog,
  });

  final TfArg<String> catalogType;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog?
  glueIcebergCatalog;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog?
  nessieIcebergCatalog;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog?
  polarisIcebergCatalog;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog?
  restIcebergCatalog;

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
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogGlueIcebergCatalog({
    required this.glueId,
  });

  final TfArg<String> glueId;

  Map<String, Object?> encode() => {'glue_id': glueId.toTfJson()};
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog.nessie_iceberg_catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog({
    required this.branch,
    required this.uri,
  });

  final TfArg<String> branch;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'branch': branch.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.catalog.polaris_iceberg_catalog` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogPolarisIcebergCatalog({
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
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogRestIcebergCatalog({
    this.properties,
    required this.uri,
  });

  final TfArg<String>? properties;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `properties.iceberg_connection_properties.storage` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorage {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorage({
    required this.storageType,
    this.amazonS3IcebergStorage,
    this.azureDataLakeStorageIcebergStorage,
    this.googleCloudStorageIcebergStorage,
  });

  final TfArg<String> storageType;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage?
  amazonS3IcebergStorage;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage?
  azureDataLakeStorageIcebergStorage;

  final OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage?
  googleCloudStorageIcebergStorage;

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
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAmazonS3IcebergStorage({
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
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageAzureDataLakeStorageIcebergStorage({
    this.accountKeySecret,
    required this.azureAccount,
    required this.container,
    this.endpoint,
  });

  final TfArg<String>? accountKeySecret;

  final TfArg<String> azureAccount;

  final TfArg<String> container;

  final TfArg<String>? endpoint;

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
final class OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage {
  const OracleDatabaseGoldengateConnectionPropertiesIcebergConnectionPropertiesStorageGoogleCloudStorageIcebergStorage({
    required this.bucket,
    required this.projectId,
    this.serviceAccountKeyFile,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String> projectId;

  final TfArg<String>? serviceAccountKeyFile;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'project_id': projectId.toTfJson(),
    'service_account_key_file': ?serviceAccountKeyFile?.toTfJson(),
  };
}

/// Typed helper for the `properties.java_message_service_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesJavaMessageServiceConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesJavaMessageServiceConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionProperties({
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

  final List<
    OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServers
  >?
  bootstrapServers;

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
final class OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServers {
  const OracleDatabaseGoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServers({
    required this.host,
    this.port,
    this.privateIpAddress,
  });

  final TfArg<String> host;

  final TfArg<num>? port;

  final TfArg<String>? privateIpAddress;

  Map<String, Object?> encode() => {
    'host': host.toTfJson(),
    'port': ?port?.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
  };
}

/// Typed helper for the `properties.kafka_schema_registry_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesMicrosoftFabricConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesMicrosoftFabricConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties({
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

  final List<
    OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttributes
  >?
  additionalAttributes;

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

/// Typed helper for the `properties.microsoft_sqlserver_connection_properties.additional_attributes` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttributes {
  const OracleDatabaseGoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttributes({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `properties.mongodb_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesMongodbConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesMongodbConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionProperties({
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

  final List<
    OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributes
  >?
  additionalAttributes;

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

/// Typed helper for the `properties.mysql_connection_properties.additional_attributes` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributes {
  const OracleDatabaseGoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttributes({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `properties.oci_object_storage_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesOciObjectStorageConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesOciObjectStorageConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesOracleAiDataPlatformConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesOracleConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesOracleConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesOracleNosqlConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesOracleNosqlConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionProperties({
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

  final List<
    OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttributes
  >?
  additionalAttributes;

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

/// Typed helper for the `properties.postgresql_connection_properties.additional_attributes` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttributes {
  const OracleDatabaseGoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttributes({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `properties.redis_connection_properties` block of
/// `google_oracle_database_goldengate_connection` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateConnectionPropertiesRedisConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesRedisConnectionProperties({
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
final class OracleDatabaseGoldengateConnectionPropertiesSnowflakeConnectionProperties {
  const OracleDatabaseGoldengateConnectionPropertiesSnowflakeConnectionProperties({
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

  GoogleOracleDatabaseGoldengateConnection({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> goldengateConnectionId,
    required OracleDatabaseGoldengateConnectionProperties properties,
    TfArg<String>? odbSubnet,
    TfArg<String>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseGoldengateConnectionDeletionPolicy>? deletionPolicy,
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
           'odb_subnet': ?odbSubnet,
           'odb_network': ?odbNetwork,
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

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
