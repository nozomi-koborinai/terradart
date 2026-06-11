// packages/terradart_google/lib/cloud_sql.dart
/// Cloud SQL — managed relational databases (MySQL / PostgreSQL / SQL Server).
///
/// For private-IP deployments, see also `service_networking.dart`
/// ([GoogleServiceNetworkingConnection]) and `compute.dart`
/// ([GoogleComputeGlobalAddress]).
library;

export 'src/sql/google_sql_database.dart' show GoogleSqlDatabase;
export 'src/sql/google_sql_database_instance.dart'
    show
        SqlDatabaseInstanceAuthorizedNetwork,
        SqlDatabaseInstanceBackupConfiguration,
        SqlDatabaseInstanceBackupRetentionSettings,
        SqlDatabaseInstanceDatabaseFlag,
        DatabaseVersion,
        GoogleSqlDatabaseInstance,
        SqlDatabaseInstanceIpConfiguration,
        SqlDatabaseInstanceLocationPreference,
        SqlDatabaseInstanceMaintenanceWindow,
        SqlDatabaseInstancePscConfig,
        SqlDatabaseInstanceReplicaConfiguration,
        SqlDatabaseInstanceSettings,
        SqlActivationPolicy,
        SqlAvailabilityType,
        SqlDiskType,
        SqlEdition;
export 'src/sql/google_sql_source_representation_instance.dart'
    show GoogleSqlSourceRepresentationInstance;
export 'src/sql/google_sql_ssl_cert.dart' show GoogleSqlSslCert;
export 'src/sql/google_sql_user.dart'
    show GoogleSqlUser, SqlUserDeletionPolicy, SqlUserType;
