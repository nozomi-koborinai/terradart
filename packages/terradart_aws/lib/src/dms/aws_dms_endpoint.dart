// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_dms_endpoint`.
const Set<String> _awsDmsEndpointSensitive = <String>{
  'kafka_settings.sasl_password',
  'kafka_settings.ssl_client_key_password',
  'oracle_settings.asm_password',
  'oracle_settings.security_db_encryption',
  'password',
  'redis_settings.auth_password',
};

/// Dms Endpoint Endpoint enum for `endpoint_type`.
enum DmsEndpointEndpointType implements TerraformEnum {
  source('source'),
  target('target');

  const DmsEndpointEndpointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms Endpoint Engine enum for `engine_name`.
enum DmsEndpointEngineName implements TerraformEnum {
  aurora('aurora'),
  auroraPostgresql('aurora-postgresql'),
  auroraPostgresqlServerless('aurora-postgresql-serverless'),
  auroraServerless('aurora-serverless'),
  azuredb('azuredb'),
  azureSqlManagedInstance('azure-sql-managed-instance'),
  babelfish('babelfish'),
  db2('db2'),
  db2Zos('db2-zos'),
  dmsTransfer('dms-transfer'),
  docdb('docdb'),
  dynamodb('dynamodb'),
  elasticsearch('elasticsearch'),
  kafka('kafka'),
  kinesis('kinesis'),
  mariadb('mariadb'),
  mongodb('mongodb'),
  mysql('mysql'),
  neptune('neptune'),
  opensearch('opensearch'),
  oracle('oracle'),
  postgres('postgres'),
  redis('redis'),
  redshift('redshift'),
  redshiftServerless('redshift-serverless'),
  sqlserver('sqlserver'),
  sybase('sybase');

  const DmsEndpointEngineName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms Endpoint Ssl enum for `ssl_mode`.
enum DmsEndpointSslMode implements TerraformEnum {
  none('none'),
  require('require'),
  verifyCa('verify-ca'),
  verifyFull('verify-full');

  const DmsEndpointSslMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `elasticsearch_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointElasticsearchSettings {
  const DmsEndpointElasticsearchSettings({
    required this.endpointUri,
    this.errorRetryDuration,
    this.fullLoadErrorPercentage,
    required this.serviceAccessRoleArn,
    this.useNewMappingType,
  });

  final TfArg<String> endpointUri;

  final TfArg<num>? errorRetryDuration;

  final TfArg<num>? fullLoadErrorPercentage;

  final TfArg<String> serviceAccessRoleArn;

  final TfArg<bool>? useNewMappingType;

  Map<String, Object?> encode() => {
    'endpoint_uri': endpointUri.toTfJson(),
    'error_retry_duration': ?errorRetryDuration?.toTfJson(),
    'full_load_error_percentage': ?fullLoadErrorPercentage?.toTfJson(),
    'service_access_role_arn': serviceAccessRoleArn.toTfJson(),
    'use_new_mapping_type': ?useNewMappingType?.toTfJson(),
  };
}

/// Typed helper for the `kafka_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointKafkaSettings {
  const DmsEndpointKafkaSettings({
    required this.broker,
    this.includeControlDetails,
    this.includeNullAndEmpty,
    this.includePartitionValue,
    this.includeTableAlterOperations,
    this.includeTransactionDetails,
    this.messageFormat,
    this.messageMaxBytes,
    this.noHexPrefix,
    this.partitionIncludeSchemaTable,
    this.saslMechanism,
    this.saslPassword,
    this.saslUsername,
    this.securityProtocol,
    this.sslCaCertificateArn,
    this.sslClientCertificateArn,
    this.sslClientKeyArn,
    this.sslClientKeyPassword,
    this.topic,
  });

  final TfArg<String> broker;

  final TfArg<bool>? includeControlDetails;

  final TfArg<bool>? includeNullAndEmpty;

  final TfArg<bool>? includePartitionValue;

  final TfArg<bool>? includeTableAlterOperations;

  final TfArg<bool>? includeTransactionDetails;

  final TfArg<DmsEndpointMessageFormat>? messageFormat;

  final TfArg<num>? messageMaxBytes;

  final TfArg<bool>? noHexPrefix;

  final TfArg<bool>? partitionIncludeSchemaTable;

  final TfArg<DmsEndpointSaslMechanism>? saslMechanism;

  final TfArg<String>? saslPassword;

  final TfArg<String>? saslUsername;

  final TfArg<DmsEndpointSecurityProtocol>? securityProtocol;

  final TfArg<String>? sslCaCertificateArn;

  final TfArg<String>? sslClientCertificateArn;

  final TfArg<String>? sslClientKeyArn;

  final TfArg<String>? sslClientKeyPassword;

  final TfArg<String>? topic;

  Map<String, Object?> encode() => {
    'broker': broker.toTfJson(),
    'include_control_details': ?includeControlDetails?.toTfJson(),
    'include_null_and_empty': ?includeNullAndEmpty?.toTfJson(),
    'include_partition_value': ?includePartitionValue?.toTfJson(),
    'include_table_alter_operations': ?includeTableAlterOperations?.toTfJson(),
    'include_transaction_details': ?includeTransactionDetails?.toTfJson(),
    'message_format': ?messageFormat?.toTfJson(),
    'message_max_bytes': ?messageMaxBytes?.toTfJson(),
    'no_hex_prefix': ?noHexPrefix?.toTfJson(),
    'partition_include_schema_table': ?partitionIncludeSchemaTable?.toTfJson(),
    'sasl_mechanism': ?saslMechanism?.toTfJson(),
    'sasl_password': ?saslPassword?.toTfJson(),
    'sasl_username': ?saslUsername?.toTfJson(),
    'security_protocol': ?securityProtocol?.toTfJson(),
    'ssl_ca_certificate_arn': ?sslCaCertificateArn?.toTfJson(),
    'ssl_client_certificate_arn': ?sslClientCertificateArn?.toTfJson(),
    'ssl_client_key_arn': ?sslClientKeyArn?.toTfJson(),
    'ssl_client_key_password': ?sslClientKeyPassword?.toTfJson(),
    'topic': ?topic?.toTfJson(),
  };
}

/// `message_format` — derived from the provider schema description.
enum DmsEndpointMessageFormat implements TerraformEnum {
  json('json'),
  jsonUnformatted('json-unformatted');

  const DmsEndpointMessageFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sasl_mechanism` — derived from the provider schema description.
enum DmsEndpointSaslMechanism implements TerraformEnum {
  scramSha512('scram-sha-512'),
  plain('plain');

  const DmsEndpointSaslMechanism(this.terraformValue);
  @override
  final String terraformValue;
}

/// `security_protocol` — derived from the provider schema description.
enum DmsEndpointSecurityProtocol implements TerraformEnum {
  plaintext('plaintext'),
  sslAuthentication('ssl-authentication'),
  sslEncryption('ssl-encryption'),
  saslSsl('sasl-ssl');

  const DmsEndpointSecurityProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `kinesis_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointKinesisSettings {
  const DmsEndpointKinesisSettings({
    this.includeControlDetails,
    this.includeNullAndEmpty,
    this.includePartitionValue,
    this.includeTableAlterOperations,
    this.includeTransactionDetails,
    this.messageFormat,
    this.partitionIncludeSchemaTable,
    this.serviceAccessRoleArn,
    this.streamArn,
    this.useLargeIntegerValue,
  });

  final TfArg<bool>? includeControlDetails;

  final TfArg<bool>? includeNullAndEmpty;

  final TfArg<bool>? includePartitionValue;

  final TfArg<bool>? includeTableAlterOperations;

  final TfArg<bool>? includeTransactionDetails;

  final TfArg<DmsEndpointMessageFormat>? messageFormat;

  final TfArg<bool>? partitionIncludeSchemaTable;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<String>? streamArn;

  final TfArg<bool>? useLargeIntegerValue;

  Map<String, Object?> encode() => {
    'include_control_details': ?includeControlDetails?.toTfJson(),
    'include_null_and_empty': ?includeNullAndEmpty?.toTfJson(),
    'include_partition_value': ?includePartitionValue?.toTfJson(),
    'include_table_alter_operations': ?includeTableAlterOperations?.toTfJson(),
    'include_transaction_details': ?includeTransactionDetails?.toTfJson(),
    'message_format': ?messageFormat?.toTfJson(),
    'partition_include_schema_table': ?partitionIncludeSchemaTable?.toTfJson(),
    'service_access_role_arn': ?serviceAccessRoleArn?.toTfJson(),
    'stream_arn': ?streamArn?.toTfJson(),
    'use_large_integer_value': ?useLargeIntegerValue?.toTfJson(),
  };
}

/// Typed helper for the `mongodb_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointMongodbSettings {
  const DmsEndpointMongodbSettings({
    this.authMechanism,
    this.authSource,
    this.authType,
    this.docsToInvestigate,
    this.extractDocId,
    this.nestingLevel,
    this.useUpdateLookup,
  });

  final TfArg<DmsEndpointAuthMechanism>? authMechanism;

  final TfArg<String>? authSource;

  final TfArg<DmsEndpointMongodbSettingsAuthType>? authType;

  final TfArg<String>? docsToInvestigate;

  final TfArg<String>? extractDocId;

  final TfArg<DmsEndpointNestingLevel>? nestingLevel;

  final TfArg<bool>? useUpdateLookup;

  Map<String, Object?> encode() => {
    'auth_mechanism': ?authMechanism?.toTfJson(),
    'auth_source': ?authSource?.toTfJson(),
    'auth_type': ?authType?.toTfJson(),
    'docs_to_investigate': ?docsToInvestigate?.toTfJson(),
    'extract_doc_id': ?extractDocId?.toTfJson(),
    'nesting_level': ?nestingLevel?.toTfJson(),
    'use_update_lookup': ?useUpdateLookup?.toTfJson(),
  };
}

/// `auth_mechanism` — derived from the provider schema description.
enum DmsEndpointAuthMechanism implements TerraformEnum {
  defaultCase('default'),
  mongodbCr('mongodb-cr'),
  scramSha1('scram-sha-1');

  const DmsEndpointAuthMechanism(this.terraformValue);
  @override
  final String terraformValue;
}

/// `auth_type` — derived from the provider schema description.
enum DmsEndpointMongodbSettingsAuthType implements TerraformEnum {
  no('no'),
  password('password');

  const DmsEndpointMongodbSettingsAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `nesting_level` — derived from the provider schema description.
enum DmsEndpointNestingLevel implements TerraformEnum {
  none('none'),
  one('one');

  const DmsEndpointNestingLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mysql_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointMysqlSettings {
  const DmsEndpointMysqlSettings({
    this.afterConnectScript,
    this.authenticationMethod,
    this.cleanSourceMetadataOnMismatch,
    this.eventsPollInterval,
    this.executeTimeout,
    this.maxFileSize,
    this.parallelLoadThreads,
    this.serverTimezone,
    this.serviceAccessRoleArn,
    this.targetDbType,
  });

  final TfArg<String>? afterConnectScript;

  final TfArg<DmsEndpointMysqlSettingsAuthenticationMethod>?
  authenticationMethod;

  final TfArg<bool>? cleanSourceMetadataOnMismatch;

  final TfArg<num>? eventsPollInterval;

  final TfArg<num>? executeTimeout;

  final TfArg<num>? maxFileSize;

  final TfArg<num>? parallelLoadThreads;

  final TfArg<String>? serverTimezone;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<DmsEndpointTargetDbType>? targetDbType;

  Map<String, Object?> encode() => {
    'after_connect_script': ?afterConnectScript?.toTfJson(),
    'authentication_method': ?authenticationMethod?.toTfJson(),
    'clean_source_metadata_on_mismatch': ?cleanSourceMetadataOnMismatch
        ?.toTfJson(),
    'events_poll_interval': ?eventsPollInterval?.toTfJson(),
    'execute_timeout': ?executeTimeout?.toTfJson(),
    'max_file_size': ?maxFileSize?.toTfJson(),
    'parallel_load_threads': ?parallelLoadThreads?.toTfJson(),
    'server_timezone': ?serverTimezone?.toTfJson(),
    'service_access_role_arn': ?serviceAccessRoleArn?.toTfJson(),
    'target_db_type': ?targetDbType?.toTfJson(),
  };
}

/// `authentication_method` — derived from the provider schema description.
enum DmsEndpointMysqlSettingsAuthenticationMethod implements TerraformEnum {
  password('password'),
  iam('iam');

  const DmsEndpointMysqlSettingsAuthenticationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `target_db_type` — derived from the provider schema description.
enum DmsEndpointTargetDbType implements TerraformEnum {
  specificDatabase('specific-database'),
  multipleDatabases('multiple-databases');

  const DmsEndpointTargetDbType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `oracle_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointOracleSettings {
  const DmsEndpointOracleSettings({
    this.accessAlternateDirectly,
    this.addSupplementalLogging,
    this.additionalArchivedLogDestId,
    this.allowSelectedNestedTables,
    this.archivedLogDestId,
    this.archivedLogsOnly,
    this.asmPassword,
    this.asmServer,
    this.asmUser,
    this.authenticationMethod,
    this.charLengthSemantics,
    this.convertTimestampWithZoneToUtc,
    this.directPathNoLog,
    this.directPathParallelLoad,
    this.enableHomogenousTablespace,
    this.extraArchivedLogDestIds,
    this.failTaskOnLobTruncation,
    this.numberDatatypeScale,
    this.openTransactionWindow,
    this.oraclePathPrefix,
    this.parallelAsmReadThreads,
    this.readAheadBlocks,
    this.readTableSpaceName,
    this.replacePathPrefix,
    this.retryInterval,
    this.secretsManagerOracleAsmAccessRoleArn,
    this.secretsManagerOracleAsmSecretId,
    this.securityDbEncryption,
    this.securityDbEncryptionName,
    this.spatialDataOptionToGeoJsonFunctionName,
    this.standbyDelayTime,
    this.trimSpaceInChar,
    this.useAlternateFolderForOnline,
    this.useBfile,
    this.useDirectPathFullLoad,
    this.useLogminerReader,
    this.usePathPrefix,
  });

  final TfArg<bool>? accessAlternateDirectly;

  final TfArg<bool>? addSupplementalLogging;

  final TfArg<num>? additionalArchivedLogDestId;

  final TfArg<bool>? allowSelectedNestedTables;

  final TfArg<num>? archivedLogDestId;

  final TfArg<bool>? archivedLogsOnly;

  final TfArg<String>? asmPassword;

  final TfArg<String>? asmServer;

  final TfArg<String>? asmUser;

  final TfArg<DmsEndpointOracleSettingsAuthenticationMethod>?
  authenticationMethod;

  final TfArg<DmsEndpointCharLengthSemantics>? charLengthSemantics;

  final TfArg<bool>? convertTimestampWithZoneToUtc;

  final TfArg<bool>? directPathNoLog;

  final TfArg<bool>? directPathParallelLoad;

  final TfArg<bool>? enableHomogenousTablespace;

  final TfArg<List<num>>? extraArchivedLogDestIds;

  final TfArg<bool>? failTaskOnLobTruncation;

  final TfArg<num>? numberDatatypeScale;

  final TfArg<num>? openTransactionWindow;

  final TfArg<String>? oraclePathPrefix;

  final TfArg<num>? parallelAsmReadThreads;

  final TfArg<num>? readAheadBlocks;

  final TfArg<bool>? readTableSpaceName;

  final TfArg<bool>? replacePathPrefix;

  final TfArg<num>? retryInterval;

  final TfArg<String>? secretsManagerOracleAsmAccessRoleArn;

  final TfArg<String>? secretsManagerOracleAsmSecretId;

  final TfArg<String>? securityDbEncryption;

  final TfArg<String>? securityDbEncryptionName;

  final TfArg<String>? spatialDataOptionToGeoJsonFunctionName;

  final TfArg<num>? standbyDelayTime;

  final TfArg<bool>? trimSpaceInChar;

  final TfArg<bool>? useAlternateFolderForOnline;

  final TfArg<bool>? useBfile;

  final TfArg<bool>? useDirectPathFullLoad;

  final TfArg<bool>? useLogminerReader;

  final TfArg<String>? usePathPrefix;

  Map<String, Object?> encode() => {
    'access_alternate_directly': ?accessAlternateDirectly?.toTfJson(),
    'add_supplemental_logging': ?addSupplementalLogging?.toTfJson(),
    'additional_archived_log_dest_id': ?additionalArchivedLogDestId?.toTfJson(),
    'allow_selected_nested_tables': ?allowSelectedNestedTables?.toTfJson(),
    'archived_log_dest_id': ?archivedLogDestId?.toTfJson(),
    'archived_logs_only': ?archivedLogsOnly?.toTfJson(),
    'asm_password': ?asmPassword?.toTfJson(),
    'asm_server': ?asmServer?.toTfJson(),
    'asm_user': ?asmUser?.toTfJson(),
    'authentication_method': ?authenticationMethod?.toTfJson(),
    'char_length_semantics': ?charLengthSemantics?.toTfJson(),
    'convert_timestamp_with_zone_to_utc': ?convertTimestampWithZoneToUtc
        ?.toTfJson(),
    'direct_path_no_log': ?directPathNoLog?.toTfJson(),
    'direct_path_parallel_load': ?directPathParallelLoad?.toTfJson(),
    'enable_homogenous_tablespace': ?enableHomogenousTablespace?.toTfJson(),
    'extra_archived_log_dest_ids': ?extraArchivedLogDestIds?.toTfJson(),
    'fail_task_on_lob_truncation': ?failTaskOnLobTruncation?.toTfJson(),
    'number_datatype_scale': ?numberDatatypeScale?.toTfJson(),
    'open_transaction_window': ?openTransactionWindow?.toTfJson(),
    'oracle_path_prefix': ?oraclePathPrefix?.toTfJson(),
    'parallel_asm_read_threads': ?parallelAsmReadThreads?.toTfJson(),
    'read_ahead_blocks': ?readAheadBlocks?.toTfJson(),
    'read_table_space_name': ?readTableSpaceName?.toTfJson(),
    'replace_path_prefix': ?replacePathPrefix?.toTfJson(),
    'retry_interval': ?retryInterval?.toTfJson(),
    'secrets_manager_oracle_asm_access_role_arn':
        ?secretsManagerOracleAsmAccessRoleArn?.toTfJson(),
    'secrets_manager_oracle_asm_secret_id': ?secretsManagerOracleAsmSecretId
        ?.toTfJson(),
    'security_db_encryption': ?securityDbEncryption?.toTfJson(),
    'security_db_encryption_name': ?securityDbEncryptionName?.toTfJson(),
    'spatial_data_option_to_geo_json_function_name':
        ?spatialDataOptionToGeoJsonFunctionName?.toTfJson(),
    'standby_delay_time': ?standbyDelayTime?.toTfJson(),
    'trim_space_in_char': ?trimSpaceInChar?.toTfJson(),
    'use_alternate_folder_for_online': ?useAlternateFolderForOnline?.toTfJson(),
    'use_bfile': ?useBfile?.toTfJson(),
    'use_direct_path_full_load': ?useDirectPathFullLoad?.toTfJson(),
    'use_logminer_reader': ?useLogminerReader?.toTfJson(),
    'use_path_prefix': ?usePathPrefix?.toTfJson(),
  };
}

/// `authentication_method` — derived from the provider schema description.
enum DmsEndpointOracleSettingsAuthenticationMethod implements TerraformEnum {
  password('password'),
  kerberos('kerberos');

  const DmsEndpointOracleSettingsAuthenticationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `char_length_semantics` — derived from the provider schema description.
enum DmsEndpointCharLengthSemantics implements TerraformEnum {
  defaultCase('default'),
  char('char'),
  byte('byte');

  const DmsEndpointCharLengthSemantics(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `postgres_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointPostgresSettings {
  const DmsEndpointPostgresSettings({
    this.afterConnectScript,
    this.authenticationMethod,
    this.babelfishDatabaseName,
    this.captureDdls,
    this.databaseMode,
    this.ddlArtifactsSchema,
    this.executeTimeout,
    this.failTasksOnLobTruncation,
    this.heartbeatEnable,
    this.heartbeatFrequency,
    this.heartbeatSchema,
    this.mapBooleanAsBoolean,
    this.mapJsonbAsClob,
    this.mapLongVarcharAs,
    this.maxFileSize,
    this.pluginName,
    this.serviceAccessRoleArn,
    this.slotName,
  });

  final TfArg<String>? afterConnectScript;

  final TfArg<DmsEndpointMysqlSettingsAuthenticationMethod>?
  authenticationMethod;

  final TfArg<String>? babelfishDatabaseName;

  final TfArg<bool>? captureDdls;

  final TfArg<DmsEndpointDatabaseMode>? databaseMode;

  final TfArg<String>? ddlArtifactsSchema;

  final TfArg<num>? executeTimeout;

  final TfArg<bool>? failTasksOnLobTruncation;

  final TfArg<bool>? heartbeatEnable;

  final TfArg<num>? heartbeatFrequency;

  final TfArg<String>? heartbeatSchema;

  final TfArg<bool>? mapBooleanAsBoolean;

  final TfArg<bool>? mapJsonbAsClob;

  final TfArg<DmsEndpointMapLongVarcharAs>? mapLongVarcharAs;

  final TfArg<num>? maxFileSize;

  final TfArg<DmsEndpointPluginName>? pluginName;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<String>? slotName;

  Map<String, Object?> encode() => {
    'after_connect_script': ?afterConnectScript?.toTfJson(),
    'authentication_method': ?authenticationMethod?.toTfJson(),
    'babelfish_database_name': ?babelfishDatabaseName?.toTfJson(),
    'capture_ddls': ?captureDdls?.toTfJson(),
    'database_mode': ?databaseMode?.toTfJson(),
    'ddl_artifacts_schema': ?ddlArtifactsSchema?.toTfJson(),
    'execute_timeout': ?executeTimeout?.toTfJson(),
    'fail_tasks_on_lob_truncation': ?failTasksOnLobTruncation?.toTfJson(),
    'heartbeat_enable': ?heartbeatEnable?.toTfJson(),
    'heartbeat_frequency': ?heartbeatFrequency?.toTfJson(),
    'heartbeat_schema': ?heartbeatSchema?.toTfJson(),
    'map_boolean_as_boolean': ?mapBooleanAsBoolean?.toTfJson(),
    'map_jsonb_as_clob': ?mapJsonbAsClob?.toTfJson(),
    'map_long_varchar_as': ?mapLongVarcharAs?.toTfJson(),
    'max_file_size': ?maxFileSize?.toTfJson(),
    'plugin_name': ?pluginName?.toTfJson(),
    'service_access_role_arn': ?serviceAccessRoleArn?.toTfJson(),
    'slot_name': ?slotName?.toTfJson(),
  };
}

/// `database_mode` — derived from the provider schema description.
enum DmsEndpointDatabaseMode implements TerraformEnum {
  defaultCase('default'),
  babelfish('babelfish');

  const DmsEndpointDatabaseMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `map_long_varchar_as` — derived from the provider schema description.
enum DmsEndpointMapLongVarcharAs implements TerraformEnum {
  wstring('wstring'),
  clob('clob'),
  nclob('nclob');

  const DmsEndpointMapLongVarcharAs(this.terraformValue);
  @override
  final String terraformValue;
}

/// `plugin_name` — derived from the provider schema description.
enum DmsEndpointPluginName implements TerraformEnum {
  noPreference('no-preference'),
  testDecoding('test-decoding'),
  pglogical('pglogical');

  const DmsEndpointPluginName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `redis_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointRedisSettings {
  const DmsEndpointRedisSettings({
    this.authPassword,
    required this.authType,
    this.authUserName,
    required this.port,
    required this.serverName,
    this.sslCaCertificateArn,
    this.sslSecurityProtocol,
  });

  final TfArg<String>? authPassword;

  final TfArg<DmsEndpointRedisSettingsAuthType> authType;

  final TfArg<String>? authUserName;

  final TfArg<num> port;

  final TfArg<String> serverName;

  final TfArg<String>? sslCaCertificateArn;

  final TfArg<DmsEndpointSslSecurityProtocol>? sslSecurityProtocol;

  Map<String, Object?> encode() => {
    'auth_password': ?authPassword?.toTfJson(),
    'auth_type': authType.toTfJson(),
    'auth_user_name': ?authUserName?.toTfJson(),
    'port': port.toTfJson(),
    'server_name': serverName.toTfJson(),
    'ssl_ca_certificate_arn': ?sslCaCertificateArn?.toTfJson(),
    'ssl_security_protocol': ?sslSecurityProtocol?.toTfJson(),
  };
}

/// `auth_type` — derived from the provider schema description.
enum DmsEndpointRedisSettingsAuthType implements TerraformEnum {
  none('none'),
  authRole('auth-role'),
  authToken('auth-token');

  const DmsEndpointRedisSettingsAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ssl_security_protocol` — derived from the provider schema description.
enum DmsEndpointSslSecurityProtocol implements TerraformEnum {
  plaintext('plaintext'),
  sslEncryption('ssl-encryption');

  const DmsEndpointSslSecurityProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `redshift_settings` block of
/// `aws_dms_endpoint` (derived from provider schema).
@immutable
final class DmsEndpointRedshiftSettings {
  const DmsEndpointRedshiftSettings({
    this.bucketFolder,
    this.bucketName,
    this.encryptionMode,
    this.serverSideEncryptionKmsKeyId,
    this.serviceAccessRoleArn,
  });

  final TfArg<String>? bucketFolder;

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<DmsEndpointEncryptionMode>? encryptionMode;

  final TfArg<String>? serverSideEncryptionKmsKeyId;

  final TfArg<String>? serviceAccessRoleArn;

  Map<String, Object?> encode() => {
    'bucket_folder': ?bucketFolder?.toTfJson(),
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'encryption_mode': ?encryptionMode?.toTfJson(),
    'server_side_encryption_kms_key_id': ?serverSideEncryptionKmsKeyId
        ?.toTfJson(),
    'service_access_role_arn': ?serviceAccessRoleArn?.toTfJson(),
  };
}

/// `encryption_mode` — derived from the provider schema description.
enum DmsEndpointEncryptionMode implements TerraformEnum {
  sseKms('SSE_KMS'),
  sseS3('SSE_S3');

  const DmsEndpointEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dms_endpoint`.
final class AwsDmsEndpoint extends Resource {
  static const String tfType = 'aws_dms_endpoint';

  AwsDmsEndpoint({
    required super.localName,
    TfArg<String>? certificateArn,
    TfArg<String>? databaseName,
    required TfArg<String> endpointId,
    required TfArg<DmsEndpointEndpointType> endpointType,
    required TfArg<DmsEndpointEngineName> engineName,
    TfArg<String>? extraConnectionAttributes,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<String>? password,
    TfArg<bool>? pauseReplicationTasks,
    TfArg<num>? port,
    TfArg<String>? region,
    TfArg<String>? secretsManagerAccessRoleArn,
    TfArg<String>? secretsManagerArn,
    TfArg<String>? serverName,
    TfArg<String>? serviceAccessRole,
    TfArg<DmsEndpointSslMode>? sslMode,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? username,
    DmsEndpointElasticsearchSettings? elasticsearchSettings,
    DmsEndpointKafkaSettings? kafkaSettings,
    DmsEndpointKinesisSettings? kinesisSettings,
    DmsEndpointMongodbSettings? mongodbSettings,
    DmsEndpointMysqlSettings? mysqlSettings,
    DmsEndpointOracleSettings? oracleSettings,
    DmsEndpointPostgresSettings? postgresSettings,
    DmsEndpointRedisSettings? redisSettings,
    DmsEndpointRedshiftSettings? redshiftSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_arn': ?certificateArn,
           'database_name': ?databaseName,
           'endpoint_id': endpointId,
           'endpoint_type': endpointType,
           'engine_name': engineName,
           'extra_connection_attributes': ?extraConnectionAttributes,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'password': ?password,
           'pause_replication_tasks': ?pauseReplicationTasks,
           'port': ?port,
           'region': ?region,
           'secrets_manager_access_role_arn': ?secretsManagerAccessRoleArn,
           'secrets_manager_arn': ?secretsManagerArn,
           'server_name': ?serverName,
           'service_access_role': ?serviceAccessRole,
           'ssl_mode': ?sslMode,
           'tags': ?tags,
           'username': ?username,
           if (elasticsearchSettings != null)
             'elasticsearch_settings': TfArg.literal(
               elasticsearchSettings.encode(),
             ),
           if (kafkaSettings != null)
             'kafka_settings': TfArg.literal(kafkaSettings.encode()),
           if (kinesisSettings != null)
             'kinesis_settings': TfArg.literal(kinesisSettings.encode()),
           if (mongodbSettings != null)
             'mongodb_settings': TfArg.literal(mongodbSettings.encode()),
           if (mysqlSettings != null)
             'mysql_settings': TfArg.literal(mysqlSettings.encode()),
           if (oracleSettings != null)
             'oracle_settings': TfArg.literal(oracleSettings.encode()),
           if (postgresSettings != null)
             'postgres_settings': TfArg.literal(postgresSettings.encode()),
           if (redisSettings != null)
             'redis_settings': TfArg.literal(redisSettings.encode()),
           if (redshiftSettings != null)
             'redshift_settings': TfArg.literal(redshiftSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsEndpoint>`.
  RefTo<AwsDmsEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint_arn` attribute.
  TfRef<String> get endpointArn =>
      TfRef.attribute<String>(this, 'endpoint_arn');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArnRef =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseNameRef =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointIdRef =>
      TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointTypeRef =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `engine_name` attribute.
  TfRef<String> get engineNameRef =>
      TfRef.attribute<String>(this, 'engine_name');

  /// Reference to `extra_connection_attributes` attribute.
  TfRef<String> get extraConnectionAttributesRef =>
      TfRef.attribute<String>(this, 'extra_connection_attributes');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArnRef =>
      TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `password` attribute.
  TfRef<String> get passwordRef => TfRef.attribute<String>(this, 'password');

  /// Reference to `pause_replication_tasks` attribute.
  TfRef<bool> get pauseReplicationTasksRef =>
      TfRef.attribute<bool>(this, 'pause_replication_tasks');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `secrets_manager_access_role_arn` attribute.
  TfRef<String> get secretsManagerAccessRoleArnRef =>
      TfRef.attribute<String>(this, 'secrets_manager_access_role_arn');

  /// Reference to `secrets_manager_arn` attribute.
  TfRef<String> get secretsManagerArnRef =>
      TfRef.attribute<String>(this, 'secrets_manager_arn');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverNameRef =>
      TfRef.attribute<String>(this, 'server_name');

  /// Reference to `service_access_role` attribute.
  TfRef<String> get serviceAccessRoleRef =>
      TfRef.attribute<String>(this, 'service_access_role');

  /// Reference to `ssl_mode` attribute.
  TfRef<String> get sslModeRef => TfRef.attribute<String>(this, 'ssl_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `username` attribute.
  TfRef<String> get usernameRef => TfRef.attribute<String>(this, 'username');
}
