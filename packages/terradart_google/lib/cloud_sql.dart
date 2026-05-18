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
        AuthorizedNetwork,
        BackupConfiguration,
        BackupRetentionSettings,
        DatabaseFlag,
        DatabaseVersion,
        GoogleSqlDatabaseInstance,
        IpConfiguration,
        LocationPreference,
        MaintenanceWindow,
        PscConfig,
        ReplicaConfiguration,
        Settings,
        SqlActivationPolicy,
        SqlAvailabilityType,
        SqlDiskType,
        SqlEdition;
export 'src/sql/google_sql_user.dart' show GoogleSqlUser, SqlUserType;
