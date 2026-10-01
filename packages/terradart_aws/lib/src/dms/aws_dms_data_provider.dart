// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_data_provider`.
const Set<String> _awsDmsDataProviderSensitive = <String>{};

/// Dms Data Provider enum for `engine`.
extension type const DmsDataProviderEngine._(TfArg<String> _)
    implements TfArg<String> {
  DmsDataProviderEngine.variable(String name) : this._(TfArg.variable(name));
  DmsDataProviderEngine.expression(String template)
    : this._(TfArg.expression(template));
  const DmsDataProviderEngine.arg(TfArg<String> arg) : this._(arg);

  static const aurora = DmsDataProviderEngine._(TfArgLiteral('aurora'));
  static const auroraPostgresql = DmsDataProviderEngine._(
    TfArgLiteral('aurora-postgresql'),
  );
  static const db2 = DmsDataProviderEngine._(TfArgLiteral('db2'));
  static const db2Zos = DmsDataProviderEngine._(TfArgLiteral('db2-zos'));
  static const docdb = DmsDataProviderEngine._(TfArgLiteral('docdb'));
  static const mariadb = DmsDataProviderEngine._(TfArgLiteral('mariadb'));
  static const mongodb = DmsDataProviderEngine._(TfArgLiteral('mongodb'));
  static const mysql = DmsDataProviderEngine._(TfArgLiteral('mysql'));
  static const oracle = DmsDataProviderEngine._(TfArgLiteral('oracle'));
  static const postgres = DmsDataProviderEngine._(TfArgLiteral('postgres'));
  static const redshift = DmsDataProviderEngine._(TfArgLiteral('redshift'));
  static const sqlserver = DmsDataProviderEngine._(TfArgLiteral('sqlserver'));
  static const sybase = DmsDataProviderEngine._(TfArgLiteral('sybase'));

  static const List<DmsDataProviderEngine> values = [
    aurora,
    auroraPostgresql,
    db2,
    db2Zos,
    docdb,
    mariadb,
    mongodb,
    mysql,
    oracle,
    postgres,
    redshift,
    sqlserver,
    sybase,
  ];
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

  final List<DmsDataProviderDocDbSettings>? docDbSettings;

  final List<DmsDataProviderIbmDb2LuwSettings>? ibmDb2LuwSettings;

  final List<DmsDataProviderIbmDb2ZosSettings>? ibmDb2ZosSettings;

  final List<DmsDataProviderMariaDbSettings>? mariaDbSettings;

  final List<DmsDataProviderMicrosoftSqlServerSettings>?
  microsoftSqlServerSettings;

  final List<DmsDataProviderMongoDbSettings>? mongoDbSettings;

  final List<DmsDataProviderMysqlSettings>? mysqlSettings;

  final List<DmsDataProviderOracleSettings>? oracleSettings;

  final List<DmsDataProviderPostgresqlSettings>? postgresqlSettings;

  final List<DmsDataProviderRedshiftSettings>? redshiftSettings;

  final List<DmsDataProviderSybaseAseSettings>? sybaseAseSettings;

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
final class DmsDataProviderDocDbSettings {
  const DmsDataProviderDocDbSettings({
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
final class DmsDataProviderIbmDb2LuwSettings {
  const DmsDataProviderIbmDb2LuwSettings({
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
final class DmsDataProviderIbmDb2ZosSettings {
  const DmsDataProviderIbmDb2ZosSettings({
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
final class DmsDataProviderMariaDbSettings {
  const DmsDataProviderMariaDbSettings({
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
final class DmsDataProviderMicrosoftSqlServerSettings {
  const DmsDataProviderMicrosoftSqlServerSettings({
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
final class DmsDataProviderMongoDbSettings {
  const DmsDataProviderMongoDbSettings({
    this.authMechanism,
    this.authSource,
    this.authType,
    this.certificateArn,
    this.databaseName,
    this.port,
    this.serverName,
    this.sslMode,
  });

  final DmsDataProviderAuthMechanism? authMechanism;

  final TfArg<String>? authSource;

  final DmsDataProviderAuthType? authType;

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
extension type const DmsDataProviderAuthMechanism._(TfArg<String> _)
    implements TfArg<String> {
  DmsDataProviderAuthMechanism.variable(String name)
    : this._(TfArg.variable(name));
  DmsDataProviderAuthMechanism.expression(String template)
    : this._(TfArg.expression(template));
  const DmsDataProviderAuthMechanism.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = DmsDataProviderAuthMechanism._(
    TfArgLiteral('default'),
  );
  static const mongodbCr = DmsDataProviderAuthMechanism._(
    TfArgLiteral('mongodb_cr'),
  );
  static const scramSha1 = DmsDataProviderAuthMechanism._(
    TfArgLiteral('scram_sha_1'),
  );

  static const List<DmsDataProviderAuthMechanism> values = [
    defaultCase,
    mongodbCr,
    scramSha1,
  ];
}

/// `auth_type` — derived from the provider schema description.
extension type const DmsDataProviderAuthType._(TfArg<String> _)
    implements TfArg<String> {
  DmsDataProviderAuthType.variable(String name) : this._(TfArg.variable(name));
  DmsDataProviderAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsDataProviderAuthType.arg(TfArg<String> arg) : this._(arg);

  static const no = DmsDataProviderAuthType._(TfArgLiteral('no'));
  static const password = DmsDataProviderAuthType._(TfArgLiteral('password'));

  static const List<DmsDataProviderAuthType> values = [no, password];
}

/// Typed helper for the `settings.mysql_settings` block of
/// `aws_dms_data_provider` (derived from provider schema).
@immutable
final class DmsDataProviderMysqlSettings {
  const DmsDataProviderMysqlSettings({
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
final class DmsDataProviderOracleSettings {
  const DmsDataProviderOracleSettings({
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
final class DmsDataProviderPostgresqlSettings {
  const DmsDataProviderPostgresqlSettings({
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
final class DmsDataProviderRedshiftSettings {
  const DmsDataProviderRedshiftSettings({
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
final class DmsDataProviderSybaseAseSettings {
  const DmsDataProviderSybaseAseSettings({
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

  AwsDmsDataProvider(
    super.localName, {
    TfArg<String>? description,
    required DmsDataProviderEngine engine,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual` attribute.
  TfRef<bool> get virtual => TfRef.attribute<bool>(this, 'virtual');
}
