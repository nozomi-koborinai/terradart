// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_data_provider`.
const Set<String> _awsDmsDataProviderSensitive = <String>{};

/// Dms Data Provider enum for `engine`.
enum DmsDataProviderEngine implements TerraformEnum {
  aurora('aurora'),
  auroraPostgresql('aurora-postgresql'),
  db2('db2'),
  db2Zos('db2-zos'),
  docdb('docdb'),
  mariadb('mariadb'),
  mongodb('mongodb'),
  mysql('mysql'),
  oracle('oracle'),
  postgres('postgres'),
  redshift('redshift'),
  sqlserver('sqlserver'),
  sybase('sybase');

  const DmsDataProviderEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettings {
  const DmsDataProviderSettings({
    this.docDbSettings,
    this.ibmDb2LuwSettings,
    this.ibmDb2ZosSettings,
    this.mariaDbSettings,
    this.microsoftSqlServerSettings,
    this.mongoDbSettings,
    this.mysqlSettings,
    this.oracleSettings,
    this.postgresqlSettings,
    this.redshiftSettings,
    this.sybaseAseSettings,
  });

  final List<DmsDataProviderSettingsDocDbSettings>? docDbSettings;

  final List<DmsDataProviderSettingsIbmDb2LuwSettings>? ibmDb2LuwSettings;

  final List<DmsDataProviderSettingsIbmDb2ZosSettings>? ibmDb2ZosSettings;

  final List<DmsDataProviderSettingsMariaDbSettings>? mariaDbSettings;

  final List<DmsDataProviderSettingsMicrosoftSqlServerSettings>?
  microsoftSqlServerSettings;

  final List<DmsDataProviderSettingsMongoDbSettings>? mongoDbSettings;

  final List<DmsDataProviderSettingsMysqlSettings>? mysqlSettings;

  final List<DmsDataProviderSettingsOracleSettings>? oracleSettings;

  final List<DmsDataProviderSettingsPostgresqlSettings>? postgresqlSettings;

  final List<DmsDataProviderSettingsRedshiftSettings>? redshiftSettings;

  final List<DmsDataProviderSettingsSybaseAseSettings>? sybaseAseSettings;

  Map<String, Object?> encode() => {
    if (docDbSettings != null)
      'doc_db_settings': [for (final e in docDbSettings!) e.encode()],
    if (ibmDb2LuwSettings != null)
      'ibm_db2_luw_settings': [for (final e in ibmDb2LuwSettings!) e.encode()],
    if (ibmDb2ZosSettings != null)
      'ibm_db2_zos_settings': [for (final e in ibmDb2ZosSettings!) e.encode()],
    if (mariaDbSettings != null)
      'maria_db_settings': [for (final e in mariaDbSettings!) e.encode()],
    if (microsoftSqlServerSettings != null)
      'microsoft_sql_server_settings': [
        for (final e in microsoftSqlServerSettings!) e.encode(),
      ],
    if (mongoDbSettings != null)
      'mongo_db_settings': [for (final e in mongoDbSettings!) e.encode()],
    if (mysqlSettings != null)
      'mysql_settings': [for (final e in mysqlSettings!) e.encode()],
    if (oracleSettings != null)
      'oracle_settings': [for (final e in oracleSettings!) e.encode()],
    if (postgresqlSettings != null)
      'postgresql_settings': [for (final e in postgresqlSettings!) e.encode()],
    if (redshiftSettings != null)
      'redshift_settings': [for (final e in redshiftSettings!) e.encode()],
    if (sybaseAseSettings != null)
      'sybase_ase_settings': [for (final e in sybaseAseSettings!) e.encode()],
  };
}

/// Typed helper for the `settings.doc_db_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsDocDbSettings {
  const DmsDataProviderSettingsDocDbSettings({
    this.certificateArn,
    this.databaseName,
    this.port,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<num>? port;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'port': ?port?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.ibm_db2_luw_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsIbmDb2LuwSettings {
  const DmsDataProviderSettingsIbmDb2LuwSettings({
    this.certificateArn,
    this.databaseName,
    this.encryptionAlgorithm,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.securityMechanism,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<num>? encryptionAlgorithm;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<num>? securityMechanism;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'encryption_algorithm': ?encryptionAlgorithm?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'security_mechanism': ?securityMechanism?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.ibm_db2_zos_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsIbmDb2ZosSettings {
  const DmsDataProviderSettingsIbmDb2ZosSettings({
    this.certificateArn,
    this.databaseName,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.maria_db_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsMariaDbSettings {
  const DmsDataProviderSettingsMariaDbSettings({
    this.certificateArn,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.microsoft_sql_server_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsMicrosoftSqlServerSettings {
  const DmsDataProviderSettingsMicrosoftSqlServerSettings({
    this.certificateArn,
    this.databaseName,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.mongo_db_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsMongoDbSettings {
  const DmsDataProviderSettingsMongoDbSettings({
    this.authMechanism,
    this.authSource,
    this.authType,
    this.certificateArn,
    this.databaseName,
    this.port,
    this.serverName,
    this.sslMode,
  });

  final TfArg<DmsDataProviderSettingsMongoDbSettingsAuthMechanism>?
  authMechanism;

  final TfArg<String>? authSource;

  final TfArg<DmsDataProviderSettingsMongoDbSettingsAuthType>? authType;

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<num>? port;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'auth_mechanism': ?authMechanism?.toTfJson(),
    'auth_source': ?authSource?.toTfJson(),
    'auth_type': ?authType?.toTfJson(),
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'port': ?port?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// `auth_mechanism` — derived from the provider schema description.
enum DmsDataProviderSettingsMongoDbSettingsAuthMechanism
    implements TerraformEnum {
  defaultCase('default'),
  mongodbCr('mongodb_cr'),
  scramSha1('scram_sha_1');

  const DmsDataProviderSettingsMongoDbSettingsAuthMechanism(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `auth_type` — derived from the provider schema description.
enum DmsDataProviderSettingsMongoDbSettingsAuthType implements TerraformEnum {
  no('no'),
  password('password');

  const DmsDataProviderSettingsMongoDbSettingsAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.mysql_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsMysqlSettings {
  const DmsDataProviderSettingsMysqlSettings({
    this.certificateArn,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.oracle_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsOracleSettings {
  const DmsDataProviderSettingsOracleSettings({
    this.asmServer,
    this.certificateArn,
    this.databaseName,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.secretsManagerOracleAsmAccessRoleArn,
    this.secretsManagerOracleAsmSecretId,
    this.secretsManagerSecurityDbEncryptionAccessRoleArn,
    this.secretsManagerSecurityDbEncryptionSecretId,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? asmServer;

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<String>? secretsManagerOracleAsmAccessRoleArn;

  final TfArg<String>? secretsManagerOracleAsmSecretId;

  final TfArg<String>? secretsManagerSecurityDbEncryptionAccessRoleArn;

  final TfArg<String>? secretsManagerSecurityDbEncryptionSecretId;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'asm_server': ?asmServer?.toTfJson(),
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'secrets_manager_oracle_asm_access_role_arn':
        ?secretsManagerOracleAsmAccessRoleArn?.toTfJson(),
    'secrets_manager_oracle_asm_secret_id': ?secretsManagerOracleAsmSecretId
        ?.toTfJson(),
    'secrets_manager_security_db_encryption_access_role_arn':
        ?secretsManagerSecurityDbEncryptionAccessRoleArn?.toTfJson(),
    'secrets_manager_security_db_encryption_secret_id':
        ?secretsManagerSecurityDbEncryptionSecretId?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.postgresql_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsPostgresqlSettings {
  const DmsDataProviderSettingsPostgresqlSettings({
    this.certificateArn,
    this.databaseName,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Typed helper for the `settings.redshift_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsRedshiftSettings {
  const DmsDataProviderSettingsRedshiftSettings({
    this.databaseName,
    this.port,
    this.s3AccessRoleArn,
    this.s3Path,
    this.serverName,
  });

  final TfArg<String>? databaseName;

  final TfArg<num>? port;

  final TfArg<String>? s3AccessRoleArn;

  final TfArg<String>? s3Path;

  final TfArg<String>? serverName;

  Map<String, Object?> encode() => {
    'database_name': ?databaseName?.toTfJson(),
    'port': ?port?.toTfJson(),
    's3_access_role_arn': ?s3AccessRoleArn?.toTfJson(),
    's3_path': ?s3Path?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
  };
}

/// Typed helper for the `settings.sybase_ase_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderSettingsSybaseAseSettings {
  const DmsDataProviderSettingsSybaseAseSettings({
    this.certificateArn,
    this.databaseName,
    this.encryptPassword,
    this.port,
    this.serverName,
    this.sslMode,
  });

  final TfArg<String>? certificateArn;

  final TfArg<String>? databaseName;

  final TfArg<bool>? encryptPassword;

  final TfArg<num>? port;

  final TfArg<String>? serverName;

  final TfArg<String>? sslMode;

  Map<String, Object?> encode() => {
    'certificate_arn': ?certificateArn?.toTfJson(),
    'database_name': ?databaseName?.toTfJson(),
    'encrypt_password': ?encryptPassword?.toTfJson(),
    'port': ?port?.toTfJson(),
    'server_name': ?serverName?.toTfJson(),
    'ssl_mode': ?sslMode?.toTfJson(),
  };
}

/// Factory wrapper for `aws_dms_data_provider`.
final class AwsDmsDataProvider extends Resource {
  static const String tfType = 'aws_dms_data_provider';

  AwsDmsDataProvider({
    required super.localName,
    TfArg<String>? description,
    required TfArg<DmsDataProviderEngine> engine,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? virtual,
    List<DmsDataProviderSettings>? settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'engine': engine,
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
           'virtual': ?virtual,
           if (settings != null)
             'settings': TfArg.literal([for (final e in settings) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsDataProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsDataProvider>`.
  RefTo<AwsDmsDataProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
