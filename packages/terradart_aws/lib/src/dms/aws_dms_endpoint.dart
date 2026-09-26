// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_endpoint`.
const Set<String> _awsDmsEndpointSensitive = <String>{
  'kafka_settings.sasl_password',
  'kafka_settings.ssl_client_key_password',
  'oracle_settings.asm_password',
  'oracle_settings.security_db_encryption',
  'password',
  'redis_settings.auth_password',
};

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
    if (errorRetryDuration != null)
      'error_retry_duration': errorRetryDuration!.toTfJson(),
    if (fullLoadErrorPercentage != null)
      'full_load_error_percentage': fullLoadErrorPercentage!.toTfJson(),
    'service_access_role_arn': serviceAccessRoleArn.toTfJson(),
    if (useNewMappingType != null)
      'use_new_mapping_type': useNewMappingType!.toTfJson(),
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

  final TfArg<String>? messageFormat;

  final TfArg<num>? messageMaxBytes;

  final TfArg<bool>? noHexPrefix;

  final TfArg<bool>? partitionIncludeSchemaTable;

  final TfArg<String>? saslMechanism;

  final TfArg<String>? saslPassword;

  final TfArg<String>? saslUsername;

  final TfArg<String>? securityProtocol;

  final TfArg<String>? sslCaCertificateArn;

  final TfArg<String>? sslClientCertificateArn;

  final TfArg<String>? sslClientKeyArn;

  final TfArg<String>? sslClientKeyPassword;

  final TfArg<String>? topic;

  Map<String, Object?> encode() => {
    'broker': broker.toTfJson(),
    if (includeControlDetails != null)
      'include_control_details': includeControlDetails!.toTfJson(),
    if (includeNullAndEmpty != null)
      'include_null_and_empty': includeNullAndEmpty!.toTfJson(),
    if (includePartitionValue != null)
      'include_partition_value': includePartitionValue!.toTfJson(),
    if (includeTableAlterOperations != null)
      'include_table_alter_operations': includeTableAlterOperations!.toTfJson(),
    if (includeTransactionDetails != null)
      'include_transaction_details': includeTransactionDetails!.toTfJson(),
    if (messageFormat != null) 'message_format': messageFormat!.toTfJson(),
    if (messageMaxBytes != null)
      'message_max_bytes': messageMaxBytes!.toTfJson(),
    if (noHexPrefix != null) 'no_hex_prefix': noHexPrefix!.toTfJson(),
    if (partitionIncludeSchemaTable != null)
      'partition_include_schema_table': partitionIncludeSchemaTable!.toTfJson(),
    if (saslMechanism != null) 'sasl_mechanism': saslMechanism!.toTfJson(),
    if (saslPassword != null) 'sasl_password': saslPassword!.toTfJson(),
    if (saslUsername != null) 'sasl_username': saslUsername!.toTfJson(),
    if (securityProtocol != null)
      'security_protocol': securityProtocol!.toTfJson(),
    if (sslCaCertificateArn != null)
      'ssl_ca_certificate_arn': sslCaCertificateArn!.toTfJson(),
    if (sslClientCertificateArn != null)
      'ssl_client_certificate_arn': sslClientCertificateArn!.toTfJson(),
    if (sslClientKeyArn != null)
      'ssl_client_key_arn': sslClientKeyArn!.toTfJson(),
    if (sslClientKeyPassword != null)
      'ssl_client_key_password': sslClientKeyPassword!.toTfJson(),
    if (topic != null) 'topic': topic!.toTfJson(),
  };
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

  final TfArg<String>? messageFormat;

  final TfArg<bool>? partitionIncludeSchemaTable;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<String>? streamArn;

  final TfArg<bool>? useLargeIntegerValue;

  Map<String, Object?> encode() => {
    if (includeControlDetails != null)
      'include_control_details': includeControlDetails!.toTfJson(),
    if (includeNullAndEmpty != null)
      'include_null_and_empty': includeNullAndEmpty!.toTfJson(),
    if (includePartitionValue != null)
      'include_partition_value': includePartitionValue!.toTfJson(),
    if (includeTableAlterOperations != null)
      'include_table_alter_operations': includeTableAlterOperations!.toTfJson(),
    if (includeTransactionDetails != null)
      'include_transaction_details': includeTransactionDetails!.toTfJson(),
    if (messageFormat != null) 'message_format': messageFormat!.toTfJson(),
    if (partitionIncludeSchemaTable != null)
      'partition_include_schema_table': partitionIncludeSchemaTable!.toTfJson(),
    if (serviceAccessRoleArn != null)
      'service_access_role_arn': serviceAccessRoleArn!.toTfJson(),
    if (streamArn != null) 'stream_arn': streamArn!.toTfJson(),
    if (useLargeIntegerValue != null)
      'use_large_integer_value': useLargeIntegerValue!.toTfJson(),
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

  final TfArg<String>? authMechanism;

  final TfArg<String>? authSource;

  final TfArg<String>? authType;

  final TfArg<String>? docsToInvestigate;

  final TfArg<String>? extractDocId;

  final TfArg<String>? nestingLevel;

  final TfArg<bool>? useUpdateLookup;

  Map<String, Object?> encode() => {
    if (authMechanism != null) 'auth_mechanism': authMechanism!.toTfJson(),
    if (authSource != null) 'auth_source': authSource!.toTfJson(),
    if (authType != null) 'auth_type': authType!.toTfJson(),
    if (docsToInvestigate != null)
      'docs_to_investigate': docsToInvestigate!.toTfJson(),
    if (extractDocId != null) 'extract_doc_id': extractDocId!.toTfJson(),
    if (nestingLevel != null) 'nesting_level': nestingLevel!.toTfJson(),
    if (useUpdateLookup != null)
      'use_update_lookup': useUpdateLookup!.toTfJson(),
  };
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

  final TfArg<String>? authenticationMethod;

  final TfArg<bool>? cleanSourceMetadataOnMismatch;

  final TfArg<num>? eventsPollInterval;

  final TfArg<num>? executeTimeout;

  final TfArg<num>? maxFileSize;

  final TfArg<num>? parallelLoadThreads;

  final TfArg<String>? serverTimezone;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<String>? targetDbType;

  Map<String, Object?> encode() => {
    if (afterConnectScript != null)
      'after_connect_script': afterConnectScript!.toTfJson(),
    if (authenticationMethod != null)
      'authentication_method': authenticationMethod!.toTfJson(),
    if (cleanSourceMetadataOnMismatch != null)
      'clean_source_metadata_on_mismatch': cleanSourceMetadataOnMismatch!
          .toTfJson(),
    if (eventsPollInterval != null)
      'events_poll_interval': eventsPollInterval!.toTfJson(),
    if (executeTimeout != null) 'execute_timeout': executeTimeout!.toTfJson(),
    if (maxFileSize != null) 'max_file_size': maxFileSize!.toTfJson(),
    if (parallelLoadThreads != null)
      'parallel_load_threads': parallelLoadThreads!.toTfJson(),
    if (serverTimezone != null) 'server_timezone': serverTimezone!.toTfJson(),
    if (serviceAccessRoleArn != null)
      'service_access_role_arn': serviceAccessRoleArn!.toTfJson(),
    if (targetDbType != null) 'target_db_type': targetDbType!.toTfJson(),
  };
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

  final TfArg<String>? authenticationMethod;

  final TfArg<String>? charLengthSemantics;

  final TfArg<bool>? convertTimestampWithZoneToUtc;

  final TfArg<bool>? directPathNoLog;

  final TfArg<bool>? directPathParallelLoad;

  final TfArg<bool>? enableHomogenousTablespace;

  final TfArg<List<Object?>>? extraArchivedLogDestIds;

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
    if (accessAlternateDirectly != null)
      'access_alternate_directly': accessAlternateDirectly!.toTfJson(),
    if (addSupplementalLogging != null)
      'add_supplemental_logging': addSupplementalLogging!.toTfJson(),
    if (additionalArchivedLogDestId != null)
      'additional_archived_log_dest_id': additionalArchivedLogDestId!
          .toTfJson(),
    if (allowSelectedNestedTables != null)
      'allow_selected_nested_tables': allowSelectedNestedTables!.toTfJson(),
    if (archivedLogDestId != null)
      'archived_log_dest_id': archivedLogDestId!.toTfJson(),
    if (archivedLogsOnly != null)
      'archived_logs_only': archivedLogsOnly!.toTfJson(),
    if (asmPassword != null) 'asm_password': asmPassword!.toTfJson(),
    if (asmServer != null) 'asm_server': asmServer!.toTfJson(),
    if (asmUser != null) 'asm_user': asmUser!.toTfJson(),
    if (authenticationMethod != null)
      'authentication_method': authenticationMethod!.toTfJson(),
    if (charLengthSemantics != null)
      'char_length_semantics': charLengthSemantics!.toTfJson(),
    if (convertTimestampWithZoneToUtc != null)
      'convert_timestamp_with_zone_to_utc': convertTimestampWithZoneToUtc!
          .toTfJson(),
    if (directPathNoLog != null)
      'direct_path_no_log': directPathNoLog!.toTfJson(),
    if (directPathParallelLoad != null)
      'direct_path_parallel_load': directPathParallelLoad!.toTfJson(),
    if (enableHomogenousTablespace != null)
      'enable_homogenous_tablespace': enableHomogenousTablespace!.toTfJson(),
    if (extraArchivedLogDestIds != null)
      'extra_archived_log_dest_ids': extraArchivedLogDestIds!.toTfJson(),
    if (failTaskOnLobTruncation != null)
      'fail_task_on_lob_truncation': failTaskOnLobTruncation!.toTfJson(),
    if (numberDatatypeScale != null)
      'number_datatype_scale': numberDatatypeScale!.toTfJson(),
    if (openTransactionWindow != null)
      'open_transaction_window': openTransactionWindow!.toTfJson(),
    if (oraclePathPrefix != null)
      'oracle_path_prefix': oraclePathPrefix!.toTfJson(),
    if (parallelAsmReadThreads != null)
      'parallel_asm_read_threads': parallelAsmReadThreads!.toTfJson(),
    if (readAheadBlocks != null)
      'read_ahead_blocks': readAheadBlocks!.toTfJson(),
    if (readTableSpaceName != null)
      'read_table_space_name': readTableSpaceName!.toTfJson(),
    if (replacePathPrefix != null)
      'replace_path_prefix': replacePathPrefix!.toTfJson(),
    if (retryInterval != null) 'retry_interval': retryInterval!.toTfJson(),
    if (secretsManagerOracleAsmAccessRoleArn != null)
      'secrets_manager_oracle_asm_access_role_arn':
          secretsManagerOracleAsmAccessRoleArn!.toTfJson(),
    if (secretsManagerOracleAsmSecretId != null)
      'secrets_manager_oracle_asm_secret_id': secretsManagerOracleAsmSecretId!
          .toTfJson(),
    if (securityDbEncryption != null)
      'security_db_encryption': securityDbEncryption!.toTfJson(),
    if (securityDbEncryptionName != null)
      'security_db_encryption_name': securityDbEncryptionName!.toTfJson(),
    if (spatialDataOptionToGeoJsonFunctionName != null)
      'spatial_data_option_to_geo_json_function_name':
          spatialDataOptionToGeoJsonFunctionName!.toTfJson(),
    if (standbyDelayTime != null)
      'standby_delay_time': standbyDelayTime!.toTfJson(),
    if (trimSpaceInChar != null)
      'trim_space_in_char': trimSpaceInChar!.toTfJson(),
    if (useAlternateFolderForOnline != null)
      'use_alternate_folder_for_online': useAlternateFolderForOnline!
          .toTfJson(),
    if (useBfile != null) 'use_bfile': useBfile!.toTfJson(),
    if (useDirectPathFullLoad != null)
      'use_direct_path_full_load': useDirectPathFullLoad!.toTfJson(),
    if (useLogminerReader != null)
      'use_logminer_reader': useLogminerReader!.toTfJson(),
    if (usePathPrefix != null) 'use_path_prefix': usePathPrefix!.toTfJson(),
  };
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

  final TfArg<String>? authenticationMethod;

  final TfArg<String>? babelfishDatabaseName;

  final TfArg<bool>? captureDdls;

  final TfArg<String>? databaseMode;

  final TfArg<String>? ddlArtifactsSchema;

  final TfArg<num>? executeTimeout;

  final TfArg<bool>? failTasksOnLobTruncation;

  final TfArg<bool>? heartbeatEnable;

  final TfArg<num>? heartbeatFrequency;

  final TfArg<String>? heartbeatSchema;

  final TfArg<bool>? mapBooleanAsBoolean;

  final TfArg<bool>? mapJsonbAsClob;

  final TfArg<String>? mapLongVarcharAs;

  final TfArg<num>? maxFileSize;

  final TfArg<String>? pluginName;

  final TfArg<String>? serviceAccessRoleArn;

  final TfArg<String>? slotName;

  Map<String, Object?> encode() => {
    if (afterConnectScript != null)
      'after_connect_script': afterConnectScript!.toTfJson(),
    if (authenticationMethod != null)
      'authentication_method': authenticationMethod!.toTfJson(),
    if (babelfishDatabaseName != null)
      'babelfish_database_name': babelfishDatabaseName!.toTfJson(),
    if (captureDdls != null) 'capture_ddls': captureDdls!.toTfJson(),
    if (databaseMode != null) 'database_mode': databaseMode!.toTfJson(),
    if (ddlArtifactsSchema != null)
      'ddl_artifacts_schema': ddlArtifactsSchema!.toTfJson(),
    if (executeTimeout != null) 'execute_timeout': executeTimeout!.toTfJson(),
    if (failTasksOnLobTruncation != null)
      'fail_tasks_on_lob_truncation': failTasksOnLobTruncation!.toTfJson(),
    if (heartbeatEnable != null)
      'heartbeat_enable': heartbeatEnable!.toTfJson(),
    if (heartbeatFrequency != null)
      'heartbeat_frequency': heartbeatFrequency!.toTfJson(),
    if (heartbeatSchema != null)
      'heartbeat_schema': heartbeatSchema!.toTfJson(),
    if (mapBooleanAsBoolean != null)
      'map_boolean_as_boolean': mapBooleanAsBoolean!.toTfJson(),
    if (mapJsonbAsClob != null) 'map_jsonb_as_clob': mapJsonbAsClob!.toTfJson(),
    if (mapLongVarcharAs != null)
      'map_long_varchar_as': mapLongVarcharAs!.toTfJson(),
    if (maxFileSize != null) 'max_file_size': maxFileSize!.toTfJson(),
    if (pluginName != null) 'plugin_name': pluginName!.toTfJson(),
    if (serviceAccessRoleArn != null)
      'service_access_role_arn': serviceAccessRoleArn!.toTfJson(),
    if (slotName != null) 'slot_name': slotName!.toTfJson(),
  };
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

  final TfArg<String> authType;

  final TfArg<String>? authUserName;

  final TfArg<num> port;

  final TfArg<String> serverName;

  final TfArg<String>? sslCaCertificateArn;

  final TfArg<String>? sslSecurityProtocol;

  Map<String, Object?> encode() => {
    if (authPassword != null) 'auth_password': authPassword!.toTfJson(),
    'auth_type': authType.toTfJson(),
    if (authUserName != null) 'auth_user_name': authUserName!.toTfJson(),
    'port': port.toTfJson(),
    'server_name': serverName.toTfJson(),
    if (sslCaCertificateArn != null)
      'ssl_ca_certificate_arn': sslCaCertificateArn!.toTfJson(),
    if (sslSecurityProtocol != null)
      'ssl_security_protocol': sslSecurityProtocol!.toTfJson(),
  };
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

  final TfArg<String>? bucketName;

  final TfArg<String>? encryptionMode;

  final TfArg<String>? serverSideEncryptionKmsKeyId;

  final TfArg<String>? serviceAccessRoleArn;

  Map<String, Object?> encode() => {
    if (bucketFolder != null) 'bucket_folder': bucketFolder!.toTfJson(),
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (encryptionMode != null) 'encryption_mode': encryptionMode!.toTfJson(),
    if (serverSideEncryptionKmsKeyId != null)
      'server_side_encryption_kms_key_id': serverSideEncryptionKmsKeyId!
          .toTfJson(),
    if (serviceAccessRoleArn != null)
      'service_access_role_arn': serviceAccessRoleArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_dms_endpoint`.
final class AwsDmsEndpoint extends Resource {
  static const String tfType = 'aws_dms_endpoint';

  AwsDmsEndpoint({
    required super.localName,
    TfArg<String>? certificateArn,
    TfArg<String>? databaseName,
    required TfArg<String> endpointId,
    required TfArg<String> endpointType,
    required TfArg<String> engineName,
    TfArg<String>? extraConnectionAttributes,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? password,
    TfArg<bool>? pauseReplicationTasks,
    TfArg<num>? port,
    TfArg<String>? region,
    TfArg<String>? secretsManagerAccessRoleArn,
    TfArg<String>? secretsManagerArn,
    TfArg<String>? serverName,
    TfArg<String>? serviceAccessRole,
    TfArg<String>? sslMode,
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
           if (certificateArn != null) 'certificate_arn': certificateArn,
           if (databaseName != null) 'database_name': databaseName,
           'endpoint_id': endpointId,
           'endpoint_type': endpointType,
           'engine_name': engineName,
           if (extraConnectionAttributes != null)
             'extra_connection_attributes': extraConnectionAttributes,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (password != null) 'password': password,
           if (pauseReplicationTasks != null)
             'pause_replication_tasks': pauseReplicationTasks,
           if (port != null) 'port': port,
           if (region != null) 'region': region,
           if (secretsManagerAccessRoleArn != null)
             'secrets_manager_access_role_arn': secretsManagerAccessRoleArn,
           if (secretsManagerArn != null)
             'secrets_manager_arn': secretsManagerArn,
           if (serverName != null) 'server_name': serverName,
           if (serviceAccessRole != null)
             'service_access_role': serviceAccessRole,
           if (sslMode != null) 'ssl_mode': sslMode,
           if (tags != null) 'tags': tags,
           if (username != null) 'username': username,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint_arn` attribute.
  TfRef<String> get endpointArn =>
      TfRef.attribute<String>(this, 'endpoint_arn');
}
