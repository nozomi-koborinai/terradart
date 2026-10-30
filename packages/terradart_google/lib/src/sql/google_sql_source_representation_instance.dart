// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_source_representation_instance`.
const Set<String> _googleSqlSourceRepresentationInstanceSensitive = <String>{
  'password',
};

/// Sql Source Representation Instance Database enum for `database_version`.
extension type const SqlSourceRepresentationInstanceDatabaseVersion._(
  TfArg<String> _
) implements TfArg<String> {
  SqlSourceRepresentationInstanceDatabaseVersion.variable(String name)
    : this._(TfArg.variable(name));
  SqlSourceRepresentationInstanceDatabaseVersion.expression(String template)
    : this._(TfArg.expression(template));
  const SqlSourceRepresentationInstanceDatabaseVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const mysql56 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_5_6'),
  );
  static const mysql57 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_5_7'),
  );
  static const mysql80 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0'),
  );
  static const mysql84 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_4'),
  );
  static const postgres96 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_9_6'),
  );
  static const postgres10 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_10'),
  );
  static const postgres11 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_11'),
  );
  static const postgres12 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_12'),
  );
  static const postgres13 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_13'),
  );
  static const postgres14 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_14'),
  );
  static const postgres15 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_15'),
  );
  static const postgres16 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_16'),
  );
  static const postgres17 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_17'),
  );
  static const postgres18 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_18'),
  );
  static const sqlserver2022Standard =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2022_STANDARD'),
      );
  static const sqlserver2022Enterprise =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2022_ENTERPRISE'),
      );
  static const sqlserver2022Express =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2022_EXPRESS'),
      );
  static const sqlserver2022Web =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2022_WEB'),
      );
  static const sqlserver2025Standard =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2025_STANDARD'),
      );
  static const sqlserver2025Enterprise =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2025_ENTERPRISE'),
      );
  static const sqlserver2025Express =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2025_EXPRESS'),
      );
  static const sqlserver2025Web =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2025_WEB'),
      );

  static const List<SqlSourceRepresentationInstanceDatabaseVersion> values = [
    mysql56,
    mysql57,
    mysql80,
    mysql84,
    postgres96,
    postgres10,
    postgres11,
    postgres12,
    postgres13,
    postgres14,
    postgres15,
    postgres16,
    postgres17,
    postgres18,
    sqlserver2022Standard,
    sqlserver2022Enterprise,
    sqlserver2022Express,
    sqlserver2022Web,
    sqlserver2025Standard,
    sqlserver2025Enterprise,
    sqlserver2025Express,
    sqlserver2025Web,
  ];
}

/// Factory wrapper for `google_sql_source_representation_instance`.
///
/// A source representation instance is a Cloud SQL instance that represents the
/// source database server to the Cloud SQL replica. It is visible in the Cloud
/// Console and appears the same as a regular Cloud SQL instance, but it
/// contains no data, requires no configuration or maintenance, and does not
/// affect billing. You cannot update the source representation instance.
final class GoogleSqlSourceRepresentationInstance extends Resource {
  static const String tfType = 'google_sql_source_representation_instance';

  GoogleSqlSourceRepresentationInstance(
    super.localName, {
    TfArg<String>? caCertificate,
    TfArg<String>? clientCertificate,
    TfArg<String>? clientKey,
    required SqlSourceRepresentationInstanceDatabaseVersion databaseVersion,
    TfArg<String>? dumpFilePath,
    required TfArg<String> host,
    required TfArg<String> name,
    Sensitive<String>? password,
    TfArg<num>? port,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ca_certificate': ?caCertificate,
           'client_certificate': ?clientCertificate,
           'client_key': ?clientKey,
           'database_version': databaseVersion,
           'dump_file_path': ?dumpFilePath,
           'host': host,
           'name': name,
           'password': ?password,
           'port': ?port,
           'project': ?project,
           'region': ?region,
           'username': ?username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSqlSourceRepresentationInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSqlSourceRepresentationInstance>`.
  RefTo<GoogleSqlSourceRepresentationInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ca_certificate` attribute.
  TfRef<String> get caCertificate =>
      TfRef.attribute<String>(this, 'ca_certificate');

  /// Reference to `client_certificate` attribute.
  TfRef<String> get clientCertificate =>
      TfRef.attribute<String>(this, 'client_certificate');

  /// Reference to `client_key` attribute.
  TfRef<String> get clientKey => TfRef.attribute<String>(this, 'client_key');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `dump_file_path` attribute.
  TfRef<String> get dumpFilePath =>
      TfRef.attribute<String>(this, 'dump_file_path');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
