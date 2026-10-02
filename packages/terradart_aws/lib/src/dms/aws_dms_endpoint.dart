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

/// Dms Endpoint enum for `endpoint_type`.
extension type const DmsEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointType.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const source = DmsEndpointType._(TfArgLiteral('source'));
  static const target = DmsEndpointType._(TfArgLiteral('target'));

  static const List<DmsEndpointType> values = [source, target];
}

/// Dms Endpoint Engine enum for `engine_name`.
extension type const DmsEndpointEngineName._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointEngineName.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointEngineName.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointEngineName.arg(TfArg<String> arg) : this._(arg);

  static const aurora = DmsEndpointEngineName._(TfArgLiteral('aurora'));
  static const auroraPostgresql = DmsEndpointEngineName._(
    TfArgLiteral('aurora-postgresql'),
  );
  static const auroraPostgresqlServerless = DmsEndpointEngineName._(
    TfArgLiteral('aurora-postgresql-serverless'),
  );
  static const auroraServerless = DmsEndpointEngineName._(
    TfArgLiteral('aurora-serverless'),
  );
  static const azuredb = DmsEndpointEngineName._(TfArgLiteral('azuredb'));
  static const azureSqlManagedInstance = DmsEndpointEngineName._(
    TfArgLiteral('azure-sql-managed-instance'),
  );
  static const babelfish = DmsEndpointEngineName._(TfArgLiteral('babelfish'));
  static const db2 = DmsEndpointEngineName._(TfArgLiteral('db2'));
  static const db2Zos = DmsEndpointEngineName._(TfArgLiteral('db2-zos'));
  static const dmsTransfer = DmsEndpointEngineName._(
    TfArgLiteral('dms-transfer'),
  );
  static const docdb = DmsEndpointEngineName._(TfArgLiteral('docdb'));
  static const dynamodb = DmsEndpointEngineName._(TfArgLiteral('dynamodb'));
  static const elasticsearch = DmsEndpointEngineName._(
    TfArgLiteral('elasticsearch'),
  );
  static const kafka = DmsEndpointEngineName._(TfArgLiteral('kafka'));
  static const kinesis = DmsEndpointEngineName._(TfArgLiteral('kinesis'));
  static const mariadb = DmsEndpointEngineName._(TfArgLiteral('mariadb'));
  static const mongodb = DmsEndpointEngineName._(TfArgLiteral('mongodb'));
  static const mysql = DmsEndpointEngineName._(TfArgLiteral('mysql'));
  static const neptune = DmsEndpointEngineName._(TfArgLiteral('neptune'));
  static const opensearch = DmsEndpointEngineName._(TfArgLiteral('opensearch'));
  static const oracle = DmsEndpointEngineName._(TfArgLiteral('oracle'));
  static const postgres = DmsEndpointEngineName._(TfArgLiteral('postgres'));
  static const redis = DmsEndpointEngineName._(TfArgLiteral('redis'));
  static const redshift = DmsEndpointEngineName._(TfArgLiteral('redshift'));
  static const redshiftServerless = DmsEndpointEngineName._(
    TfArgLiteral('redshift-serverless'),
  );
  static const sqlserver = DmsEndpointEngineName._(TfArgLiteral('sqlserver'));
  static const sybase = DmsEndpointEngineName._(TfArgLiteral('sybase'));

  static const List<DmsEndpointEngineName> values = [
    aurora,
    auroraPostgresql,
    auroraPostgresqlServerless,
    auroraServerless,
    azuredb,
    azureSqlManagedInstance,
    babelfish,
    db2,
    db2Zos,
    dmsTransfer,
    docdb,
    dynamodb,
    elasticsearch,
    kafka,
    kinesis,
    mariadb,
    mongodb,
    mysql,
    neptune,
    opensearch,
    oracle,
    postgres,
    redis,
    redshift,
    redshiftServerless,
    sqlserver,
    sybase,
  ];
}

/// Dms Endpoint Ssl enum for `ssl_mode`.
extension type const DmsEndpointSslMode._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointSslMode.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointSslMode.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointSslMode.arg(TfArg<String> arg) : this._(arg);

  static const none = DmsEndpointSslMode._(TfArgLiteral('none'));
  static const require = DmsEndpointSslMode._(TfArgLiteral('require'));
  static const verifyCa = DmsEndpointSslMode._(TfArgLiteral('verify-ca'));
  static const verifyFull = DmsEndpointSslMode._(TfArgLiteral('verify-full'));

  static const List<DmsEndpointSslMode> values = [
    none,
    require,
    verifyCa,
    verifyFull,
  ];
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

  @internal
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

  final DmsEndpointMessageFormat? messageFormat;

  final TfArg<num>? messageMaxBytes;

  final TfArg<bool>? noHexPrefix;

  final TfArg<bool>? partitionIncludeSchemaTable;

  final DmsEndpointSaslMechanism? saslMechanism;

  final Sensitive<String>? saslPassword;

  final TfArg<String>? saslUsername;

  final DmsEndpointSecurityProtocol? securityProtocol;

  final TfArg<String>? sslCaCertificateArn;

  final TfArg<String>? sslClientCertificateArn;

  final TfArg<String>? sslClientKeyArn;

  final Sensitive<String>? sslClientKeyPassword;

  final TfArg<String>? topic;

  @internal
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
extension type const DmsEndpointMessageFormat._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointMessageFormat.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointMessageFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointMessageFormat.arg(TfArg<String> arg) : this._(arg);

  static const json = DmsEndpointMessageFormat._(TfArgLiteral('json'));
  static const jsonUnformatted = DmsEndpointMessageFormat._(
    TfArgLiteral('json-unformatted'),
  );

  static const List<DmsEndpointMessageFormat> values = [json, jsonUnformatted];
}

/// `sasl_mechanism` — derived from the provider schema description.
extension type const DmsEndpointSaslMechanism._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointSaslMechanism.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointSaslMechanism.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointSaslMechanism.arg(TfArg<String> arg) : this._(arg);

  static const scramSha512 = DmsEndpointSaslMechanism._(
    TfArgLiteral('scram-sha-512'),
  );
  static const plain = DmsEndpointSaslMechanism._(TfArgLiteral('plain'));

  static const List<DmsEndpointSaslMechanism> values = [scramSha512, plain];
}

/// `security_protocol` — derived from the provider schema description.
extension type const DmsEndpointSecurityProtocol._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointSecurityProtocol.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointSecurityProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointSecurityProtocol.arg(TfArg<String> arg) : this._(arg);

  static const plaintext = DmsEndpointSecurityProtocol._(
    TfArgLiteral('plaintext'),
  );
  static const sslAuthentication = DmsEndpointSecurityProtocol._(
    TfArgLiteral('ssl-authentication'),
  );
  static const sslEncryption = DmsEndpointSecurityProtocol._(
    TfArgLiteral('ssl-encryption'),
  );
  static const saslSsl = DmsEndpointSecurityProtocol._(
    TfArgLiteral('sasl-ssl'),
  );

  static const List<DmsEndpointSecurityProtocol> values = [
    plaintext,
    sslAuthentication,
    sslEncryption,
    saslSsl,
  ];
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

  final DmsEndpointMessageFormat? messageFormat;

  final TfArg<bool>? partitionIncludeSchemaTable;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<String>? streamArn;

  final TfArg<bool>? useLargeIntegerValue;

  @internal
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

  final DmsEndpointAuthMechanism? authMechanism;

  final TfArg<String>? authSource;

  final DmsEndpointMongodbSettingsAuthType? authType;

  final TfArg<String>? docsToInvestigate;

  final TfArg<String>? extractDocId;

  final DmsEndpointNestingLevel? nestingLevel;

  final TfArg<bool>? useUpdateLookup;

  @internal
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
extension type const DmsEndpointAuthMechanism._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointAuthMechanism.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointAuthMechanism.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointAuthMechanism.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = DmsEndpointAuthMechanism._(
    TfArgLiteral('default'),
  );
  static const mongodbCr = DmsEndpointAuthMechanism._(
    TfArgLiteral('mongodb-cr'),
  );
  static const scramSha1 = DmsEndpointAuthMechanism._(
    TfArgLiteral('scram-sha-1'),
  );

  static const List<DmsEndpointAuthMechanism> values = [
    defaultCase,
    mongodbCr,
    scramSha1,
  ];
}

/// `auth_type` — derived from the provider schema description.
extension type const DmsEndpointMongodbSettingsAuthType._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointMongodbSettingsAuthType.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointMongodbSettingsAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointMongodbSettingsAuthType.arg(TfArg<String> arg) : this._(arg);

  static const no = DmsEndpointMongodbSettingsAuthType._(TfArgLiteral('no'));
  static const password = DmsEndpointMongodbSettingsAuthType._(
    TfArgLiteral('password'),
  );

  static const List<DmsEndpointMongodbSettingsAuthType> values = [no, password];
}

/// `nesting_level` — derived from the provider schema description.
extension type const DmsEndpointNestingLevel._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointNestingLevel.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointNestingLevel.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointNestingLevel.arg(TfArg<String> arg) : this._(arg);

  static const none = DmsEndpointNestingLevel._(TfArgLiteral('none'));
  static const one = DmsEndpointNestingLevel._(TfArgLiteral('one'));

  static const List<DmsEndpointNestingLevel> values = [none, one];
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

  final DmsEndpointMysqlSettingsAuthenticationMethod? authenticationMethod;

  final TfArg<bool>? cleanSourceMetadataOnMismatch;

  final TfArg<num>? eventsPollInterval;

  final TfArg<num>? executeTimeout;

  final TfArg<num>? maxFileSize;

  final TfArg<num>? parallelLoadThreads;

  final TfArg<String>? serverTimezone;

  final TfArg<String>? serviceAccessRoleArn;

  final DmsEndpointTargetDbType? targetDbType;

  @internal
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
extension type const DmsEndpointMysqlSettingsAuthenticationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  DmsEndpointMysqlSettingsAuthenticationMethod.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointMysqlSettingsAuthenticationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointMysqlSettingsAuthenticationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const password = DmsEndpointMysqlSettingsAuthenticationMethod._(
    TfArgLiteral('password'),
  );
  static const iam = DmsEndpointMysqlSettingsAuthenticationMethod._(
    TfArgLiteral('iam'),
  );

  static const List<DmsEndpointMysqlSettingsAuthenticationMethod> values = [
    password,
    iam,
  ];
}

/// `target_db_type` — derived from the provider schema description.
extension type const DmsEndpointTargetDbType._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointTargetDbType.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointTargetDbType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointTargetDbType.arg(TfArg<String> arg) : this._(arg);

  static const specificDatabase = DmsEndpointTargetDbType._(
    TfArgLiteral('specific-database'),
  );
  static const multipleDatabases = DmsEndpointTargetDbType._(
    TfArgLiteral('multiple-databases'),
  );

  static const List<DmsEndpointTargetDbType> values = [
    specificDatabase,
    multipleDatabases,
  ];
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

  final Sensitive<String>? asmPassword;

  final TfArg<String>? asmServer;

  final TfArg<String>? asmUser;

  final DmsEndpointOracleSettingsAuthenticationMethod? authenticationMethod;

  final DmsEndpointCharLengthSemantics? charLengthSemantics;

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

  final Sensitive<String>? securityDbEncryption;

  final TfArg<String>? securityDbEncryptionName;

  final TfArg<String>? spatialDataOptionToGeoJsonFunctionName;

  final TfArg<num>? standbyDelayTime;

  final TfArg<bool>? trimSpaceInChar;

  final TfArg<bool>? useAlternateFolderForOnline;

  final TfArg<bool>? useBfile;

  final TfArg<bool>? useDirectPathFullLoad;

  final TfArg<bool>? useLogminerReader;

  final TfArg<String>? usePathPrefix;

  @internal
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
extension type const DmsEndpointOracleSettingsAuthenticationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  DmsEndpointOracleSettingsAuthenticationMethod.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointOracleSettingsAuthenticationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointOracleSettingsAuthenticationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const password = DmsEndpointOracleSettingsAuthenticationMethod._(
    TfArgLiteral('password'),
  );
  static const kerberos = DmsEndpointOracleSettingsAuthenticationMethod._(
    TfArgLiteral('kerberos'),
  );

  static const List<DmsEndpointOracleSettingsAuthenticationMethod> values = [
    password,
    kerberos,
  ];
}

/// `char_length_semantics` — derived from the provider schema description.
extension type const DmsEndpointCharLengthSemantics._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointCharLengthSemantics.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointCharLengthSemantics.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointCharLengthSemantics.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = DmsEndpointCharLengthSemantics._(
    TfArgLiteral('default'),
  );
  static const char = DmsEndpointCharLengthSemantics._(TfArgLiteral('char'));
  static const byte = DmsEndpointCharLengthSemantics._(TfArgLiteral('byte'));

  static const List<DmsEndpointCharLengthSemantics> values = [
    defaultCase,
    char,
    byte,
  ];
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

  final DmsEndpointMysqlSettingsAuthenticationMethod? authenticationMethod;

  final TfArg<String>? babelfishDatabaseName;

  final TfArg<bool>? captureDdls;

  final DmsEndpointDatabaseMode? databaseMode;

  final TfArg<String>? ddlArtifactsSchema;

  final TfArg<num>? executeTimeout;

  final TfArg<bool>? failTasksOnLobTruncation;

  final TfArg<bool>? heartbeatEnable;

  final TfArg<num>? heartbeatFrequency;

  final TfArg<String>? heartbeatSchema;

  final TfArg<bool>? mapBooleanAsBoolean;

  final TfArg<bool>? mapJsonbAsClob;

  final DmsEndpointMapLongVarcharAs? mapLongVarcharAs;

  final TfArg<num>? maxFileSize;

  final DmsEndpointPluginName? pluginName;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<String>? slotName;

  @internal
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
extension type const DmsEndpointDatabaseMode._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointDatabaseMode.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointDatabaseMode.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointDatabaseMode.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = DmsEndpointDatabaseMode._(TfArgLiteral('default'));
  static const babelfish = DmsEndpointDatabaseMode._(TfArgLiteral('babelfish'));

  static const List<DmsEndpointDatabaseMode> values = [defaultCase, babelfish];
}

/// `map_long_varchar_as` — derived from the provider schema description.
extension type const DmsEndpointMapLongVarcharAs._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointMapLongVarcharAs.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointMapLongVarcharAs.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointMapLongVarcharAs.arg(TfArg<String> arg) : this._(arg);

  static const wstring = DmsEndpointMapLongVarcharAs._(TfArgLiteral('wstring'));
  static const clob = DmsEndpointMapLongVarcharAs._(TfArgLiteral('clob'));
  static const nclob = DmsEndpointMapLongVarcharAs._(TfArgLiteral('nclob'));

  static const List<DmsEndpointMapLongVarcharAs> values = [
    wstring,
    clob,
    nclob,
  ];
}

/// `plugin_name` — derived from the provider schema description.
extension type const DmsEndpointPluginName._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointPluginName.variable(String name) : this._(TfArg.variable(name));
  DmsEndpointPluginName.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointPluginName.arg(TfArg<String> arg) : this._(arg);

  static const noPreference = DmsEndpointPluginName._(
    TfArgLiteral('no-preference'),
  );
  static const testDecoding = DmsEndpointPluginName._(
    TfArgLiteral('test-decoding'),
  );
  static const pglogical = DmsEndpointPluginName._(TfArgLiteral('pglogical'));

  static const List<DmsEndpointPluginName> values = [
    noPreference,
    testDecoding,
    pglogical,
  ];
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

  final Sensitive<String>? authPassword;

  final DmsEndpointRedisSettingsAuthType authType;

  final TfArg<String>? authUserName;

  final TfArg<num> port;

  final TfArg<String> serverName;

  final TfArg<String>? sslCaCertificateArn;

  final DmsEndpointSslSecurityProtocol? sslSecurityProtocol;

  @internal
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
extension type const DmsEndpointRedisSettingsAuthType._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointRedisSettingsAuthType.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointRedisSettingsAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointRedisSettingsAuthType.arg(TfArg<String> arg) : this._(arg);

  static const none = DmsEndpointRedisSettingsAuthType._(TfArgLiteral('none'));
  static const authRole = DmsEndpointRedisSettingsAuthType._(
    TfArgLiteral('auth-role'),
  );
  static const authToken = DmsEndpointRedisSettingsAuthType._(
    TfArgLiteral('auth-token'),
  );

  static const List<DmsEndpointRedisSettingsAuthType> values = [
    none,
    authRole,
    authToken,
  ];
}

/// `ssl_security_protocol` — derived from the provider schema description.
extension type const DmsEndpointSslSecurityProtocol._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointSslSecurityProtocol.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointSslSecurityProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointSslSecurityProtocol.arg(TfArg<String> arg) : this._(arg);

  static const plaintext = DmsEndpointSslSecurityProtocol._(
    TfArgLiteral('plaintext'),
  );
  static const sslEncryption = DmsEndpointSslSecurityProtocol._(
    TfArgLiteral('ssl-encryption'),
  );

  static const List<DmsEndpointSslSecurityProtocol> values = [
    plaintext,
    sslEncryption,
  ];
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

  final DmsEndpointEncryptionMode? encryptionMode;

  final TfArg<String>? serverSideEncryptionKmsKeyId;

  final TfArg<String>? serviceAccessRoleArn;

  @internal
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
extension type const DmsEndpointEncryptionMode._(TfArg<String> _)
    implements TfArg<String> {
  DmsEndpointEncryptionMode.variable(String name)
    : this._(TfArg.variable(name));
  DmsEndpointEncryptionMode.expression(String template)
    : this._(TfArg.expression(template));
  const DmsEndpointEncryptionMode.arg(TfArg<String> arg) : this._(arg);

  static const sseKms = DmsEndpointEncryptionMode._(TfArgLiteral('SSE_KMS'));
  static const sseS3 = DmsEndpointEncryptionMode._(TfArgLiteral('SSE_S3'));

  static const List<DmsEndpointEncryptionMode> values = [sseKms, sseS3];
}

/// Factory wrapper for `aws_dms_endpoint`.
final class AwsDmsEndpoint extends Resource {
  static const String tfType = 'aws_dms_endpoint';

  AwsDmsEndpoint(
    super.localName, {
    TfArg<String>? certificateArn,
    TfArg<String>? databaseName,
    required TfArg<String> endpointId,
    required DmsEndpointType endpointType,
    required DmsEndpointEngineName engineName,
    TfArg<String>? extraConnectionAttributes,
    RefTo<AwsKmsKey>? kmsKeyArn,
    Sensitive<String>? password,
    TfArg<bool>? pauseReplicationTasks,
    TfArg<num>? port,
    TfArg<String>? region,
    TfArg<String>? secretsManagerAccessRoleArn,
    TfArg<String>? secretsManagerArn,
    TfArg<String>? serverName,
    TfArg<String>? serviceAccessRole,
    DmsEndpointSslMode? sslMode,
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
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointId => TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `engine_name` attribute.
  TfRef<String> get engineName => TfRef.attribute<String>(this, 'engine_name');

  /// Reference to `extra_connection_attributes` attribute.
  TfRef<String> get extraConnectionAttributes =>
      TfRef.attribute<String>(this, 'extra_connection_attributes');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `pause_replication_tasks` attribute.
  TfRef<bool> get pauseReplicationTasks =>
      TfRef.attribute<bool>(this, 'pause_replication_tasks');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secrets_manager_access_role_arn` attribute.
  TfRef<String> get secretsManagerAccessRoleArn =>
      TfRef.attribute<String>(this, 'secrets_manager_access_role_arn');

  /// Reference to `secrets_manager_arn` attribute.
  TfRef<String> get secretsManagerArn =>
      TfRef.attribute<String>(this, 'secrets_manager_arn');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `service_access_role` attribute.
  TfRef<String> get serviceAccessRole =>
      TfRef.attribute<String>(this, 'service_access_role');

  /// Reference to `ssl_mode` attribute.
  TfRef<String> get sslMode => TfRef.attribute<String>(this, 'ssl_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
