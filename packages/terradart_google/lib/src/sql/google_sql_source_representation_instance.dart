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

  static const mysql51 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_5_1'),
  );
  static const mysql55 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_5_5'),
  );
  static const mysql56 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_5_6'),
  );
  static const mysql57 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_5_7'),
  );
  static const mysql80 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0'),
  );
  static const mysql8018 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_18'),
  );
  static const mysql8026 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_26'),
  );
  static const mysql8027 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_27'),
  );
  static const mysql8028 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_28'),
  );
  static const mysql8029 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_29'),
  );
  static const mysql8030 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_30'),
  );
  static const mysql8031 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_31'),
  );
  static const mysql8032 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_32'),
  );
  static const mysql8033 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_33'),
  );
  static const mysql8034 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_34'),
  );
  static const mysql8035 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_35'),
  );
  static const mysql8036 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_36'),
  );
  static const mysql8037 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_37'),
  );
  static const mysql8039 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_39'),
  );
  static const mysql8040 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_40'),
  );
  static const mysql8041 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_41'),
  );
  static const mysql8042 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_42'),
  );
  static const mysql8043 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_43'),
  );
  static const mysql8044 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_44'),
  );
  static const mysql8045 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_45'),
  );
  static const mysql8046 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_46'),
  );
  static const mysql84 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_8_4'),
  );
  static const mysql97 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('MYSQL_9_7'),
  );
  static const sqlserver2017Standard =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2017_STANDARD'),
      );
  static const sqlserver2017Enterprise =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2017_ENTERPRISE'),
      );
  static const sqlserver2017Express =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2017_EXPRESS'),
      );
  static const sqlserver2017Web =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2017_WEB'),
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
  static const postgres19 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_19'),
  );
  static const postgres20 = SqlSourceRepresentationInstanceDatabaseVersion._(
    TfArgLiteral('POSTGRES_20'),
  );
  static const sqlserver2019Standard =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2019_STANDARD'),
      );
  static const sqlserver2019Enterprise =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2019_ENTERPRISE'),
      );
  static const sqlserver2019Express =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2019_EXPRESS'),
      );
  static const sqlserver2019Web =
      SqlSourceRepresentationInstanceDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2019_WEB'),
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

  static const List<SqlSourceRepresentationInstanceDatabaseVersion> values = [
    mysql51,
    mysql55,
    mysql56,
    mysql57,
    mysql80,
    mysql8018,
    mysql8026,
    mysql8027,
    mysql8028,
    mysql8029,
    mysql8030,
    mysql8031,
    mysql8032,
    mysql8033,
    mysql8034,
    mysql8035,
    mysql8036,
    mysql8037,
    mysql8039,
    mysql8040,
    mysql8041,
    mysql8042,
    mysql8043,
    mysql8044,
    mysql8045,
    mysql8046,
    mysql84,
    mysql97,
    sqlserver2017Standard,
    sqlserver2017Enterprise,
    sqlserver2017Express,
    sqlserver2017Web,
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
    postgres19,
    postgres20,
    sqlserver2019Standard,
    sqlserver2019Enterprise,
    sqlserver2019Express,
    sqlserver2019Web,
    sqlserver2022Standard,
    sqlserver2022Enterprise,
    sqlserver2022Express,
    sqlserver2022Web,
    sqlserver2025Standard,
    sqlserver2025Enterprise,
    sqlserver2025Express,
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
