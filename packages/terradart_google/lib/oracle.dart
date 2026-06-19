// packages/terradart_google/lib/oracle.dart
/// Oracle Database@Google Cloud — Autonomous Database, ODB networking, GoldenGate.
library;

export 'src/oracle/google_oracle_database_autonomous_database.dart'
    show
        GoogleOracleDatabaseAutonomousDatabase,
        OracleDatabaseAutonomousDatabaseDbWorkload,
        OracleDatabaseAutonomousDatabaseDeletionPolicy,
        OracleDatabaseAutonomousDatabaseLicenseType;
export 'src/oracle/google_oracle_database_goldengate_connection.dart'
    show
        GoogleOracleDatabaseGoldengateConnection,
        OracleDatabaseGoldengateConnectionDeletionPolicy;
export 'src/oracle/google_oracle_database_goldengate_connection_assignment.dart'
    show
        GoogleOracleDatabaseGoldengateConnectionAssignment,
        OracleDatabaseGoldengateConnectionAssignmentDeletionPolicy;
export 'src/oracle/google_oracle_database_goldengate_deployment.dart'
    show
        GoogleOracleDatabaseGoldengateDeployment,
        OracleDatabaseGoldengateDeploymentDeletionPolicy;
export 'src/oracle/google_oracle_database_odb_network.dart'
    show
        GoogleOracleDatabaseOdbNetwork,
        OracleDatabaseOdbNetworkDeletionPolicy;
export 'src/oracle/google_oracle_database_odb_subnet.dart'
    show
        GoogleOracleDatabaseOdbSubnet,
        OracleDatabaseOdbSubnetDeletionPolicy,
        OracleDatabaseOdbSubnetPurpose;
