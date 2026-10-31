// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_database_instances`.
const Set<String> _googleSqlDatabaseInstancesSensitive = <String>{};

/// Data Sql Database Instances Database enum for `database_version`.
extension type const DataSqlDatabaseInstancesDatabaseVersion._(TfArg<String> _)
    implements TfArg<String> {
  DataSqlDatabaseInstancesDatabaseVersion.variable(String name)
    : this._(TfArg.variable(name));
  DataSqlDatabaseInstancesDatabaseVersion.expression(String template)
    : this._(TfArg.expression(template));
  const DataSqlDatabaseInstancesDatabaseVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const mysql51 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_5_1'),
  );
  static const mysql55 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_5_5'),
  );
  static const mysql56 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_5_6'),
  );
  static const mysql57 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_5_7'),
  );
  static const mysql80 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0'),
  );
  static const mysql8018 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_18'),
  );
  static const mysql8026 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_26'),
  );
  static const mysql8027 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_27'),
  );
  static const mysql8028 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_28'),
  );
  static const mysql8029 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_29'),
  );
  static const mysql8030 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_30'),
  );
  static const mysql8031 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_31'),
  );
  static const mysql8032 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_32'),
  );
  static const mysql8033 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_33'),
  );
  static const mysql8034 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_34'),
  );
  static const mysql8035 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_35'),
  );
  static const mysql8036 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_36'),
  );
  static const mysql8037 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_37'),
  );
  static const mysql8039 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_39'),
  );
  static const mysql8040 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_40'),
  );
  static const mysql8041 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_41'),
  );
  static const mysql8042 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_42'),
  );
  static const mysql8043 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_43'),
  );
  static const mysql8044 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_44'),
  );
  static const mysql8045 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_45'),
  );
  static const mysql8046 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_0_46'),
  );
  static const mysql84 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_8_4'),
  );
  static const mysql97 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('MYSQL_9_7'),
  );
  static const sqlserver2017Standard =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2017_STANDARD'),
      );
  static const sqlserver2017Enterprise =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2017_ENTERPRISE'),
      );
  static const sqlserver2017Express = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('SQLSERVER_2017_EXPRESS'),
  );
  static const sqlserver2017Web = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('SQLSERVER_2017_WEB'),
  );
  static const postgres96 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_9_6'),
  );
  static const postgres10 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_10'),
  );
  static const postgres11 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_11'),
  );
  static const postgres12 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_12'),
  );
  static const postgres13 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_13'),
  );
  static const postgres14 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_14'),
  );
  static const postgres15 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_15'),
  );
  static const postgres16 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_16'),
  );
  static const postgres17 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_17'),
  );
  static const postgres18 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_18'),
  );
  static const postgres19 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_19'),
  );
  static const postgres20 = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('POSTGRES_20'),
  );
  static const sqlserver2019Standard =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2019_STANDARD'),
      );
  static const sqlserver2019Enterprise =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2019_ENTERPRISE'),
      );
  static const sqlserver2019Express = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('SQLSERVER_2019_EXPRESS'),
  );
  static const sqlserver2019Web = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('SQLSERVER_2019_WEB'),
  );
  static const sqlserver2022Standard =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2022_STANDARD'),
      );
  static const sqlserver2022Enterprise =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2022_ENTERPRISE'),
      );
  static const sqlserver2022Express = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('SQLSERVER_2022_EXPRESS'),
  );
  static const sqlserver2022Web = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('SQLSERVER_2022_WEB'),
  );
  static const sqlserver2025Standard =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2025_STANDARD'),
      );
  static const sqlserver2025Enterprise =
      DataSqlDatabaseInstancesDatabaseVersion._(
        TfArgLiteral('SQLSERVER_2025_ENTERPRISE'),
      );
  static const sqlserver2025Express = DataSqlDatabaseInstancesDatabaseVersion._(
    TfArgLiteral('SQLSERVER_2025_EXPRESS'),
  );

  static const List<DataSqlDatabaseInstancesDatabaseVersion> values = [
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

/// Data Sql Database Instances enum for `state`.
extension type const DataSqlDatabaseInstancesState._(TfArg<String> _)
    implements TfArg<String> {
  DataSqlDatabaseInstancesState.variable(String name)
    : this._(TfArg.variable(name));
  DataSqlDatabaseInstancesState.expression(String template)
    : this._(TfArg.expression(template));
  const DataSqlDatabaseInstancesState.arg(TfArg<String> arg) : this._(arg);

  static const sqlInstanceStateUnspecified = DataSqlDatabaseInstancesState._(
    TfArgLiteral('SQL_INSTANCE_STATE_UNSPECIFIED'),
  );
  static const runnable = DataSqlDatabaseInstancesState._(
    TfArgLiteral('RUNNABLE'),
  );
  static const suspended = DataSqlDatabaseInstancesState._(
    TfArgLiteral('SUSPENDED'),
  );
  static const pendingDelete = DataSqlDatabaseInstancesState._(
    TfArgLiteral('PENDING_DELETE'),
  );
  static const pendingCreate = DataSqlDatabaseInstancesState._(
    TfArgLiteral('PENDING_CREATE'),
  );
  static const maintenance = DataSqlDatabaseInstancesState._(
    TfArgLiteral('MAINTENANCE'),
  );
  static const failed = DataSqlDatabaseInstancesState._(TfArgLiteral('FAILED'));

  static const List<DataSqlDatabaseInstancesState> values = [
    sqlInstanceStateUnspecified,
    runnable,
    suspended,
    pendingDelete,
    pendingCreate,
    maintenance,
    failed,
  ];
}

/// Factory wrapper for `google_sql_database_instances`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlDatabaseInstances extends Data {
  static const String tfType = 'google_sql_database_instances';

  DataGoogleSqlDatabaseInstances(
    super.localName, {
    DataSqlDatabaseInstancesDatabaseVersion? databaseVersion,
    TfArg<String>? project,
    TfArg<String>? region,
    DataSqlDatabaseInstancesState? state,
    TfArg<String>? tier,
    TfArg<String>? zone,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_version': ?databaseVersion,
           'project': ?project,
           'region': ?region,
           'state': ?state,
           'tier': ?tier,
           'zone': ?zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabaseInstancesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instances` attribute.
  TfRef<List<Map<String, Object?>>> get instances =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instances');

  /// Reference to `database_version` attribute.
  TfRef<String> get databaseVersion =>
      TfRef.attribute<String>(this, 'database_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
