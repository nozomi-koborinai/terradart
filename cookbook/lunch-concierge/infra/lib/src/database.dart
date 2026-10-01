import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_sql.dart';

import 'constants.dart';
import 'network.dart';
import 'runtime_identity.dart';

final class LunchDatabase {
  const LunchDatabase({
    required this.sql,
    required this.database,
    required this.sqlUser,
    required this.databaseUser,
    required this.databaseUrl,
    required this.instanceConnectionName,
  });

  final GoogleSqlDatabaseInstance sql;
  final GoogleSqlDatabase database;
  final GoogleSqlUser sqlUser;
  final String databaseUser;
  final String databaseUrl;
  final String instanceConnectionName;
}

LunchDatabase addDatabase({
  required Stack stack,
  required String projectId,
  required LunchNetwork network,
  required LunchRuntimeIdentity identity,
}) {
  final sql = stack.add(
    GoogleSqlDatabaseInstance(
      localName: 'lunch_sql',
      name: .literal(sqlInstanceName),
      databaseVersion: .literal(.postgres15),
      region: .literal(region),
      deletionProtection: .literal(false),
      settings: SqlDatabaseInstanceSettings(
        tier: .literal('db-f1-micro'),
        availabilityType: .literal(.zonal),
        edition: .literal(.enterprise),
        diskSize: .literal(10),
        diskType: .literal(.pdSsd),
        databaseFlags: [
          .new(
            name: .literal('cloudsql.iam_authentication'),
            value: .literal('on'),
          ),
        ],
        ipConfiguration: .new(
          ipv4Enabled: .literal(false),
          privateNetwork: network.vpc.ref,
          allocatedIpRange: network.psaRange.ref,
        ),
      ),
      dependsOn: [network.psaConnection],
    ),
  );

  final database = stack.add(
    GoogleSqlDatabase(
      localName: 'lunch',
      instance: sql.ref,
      name: .literal(databaseName),
      dependsOn: [sql],
    ),
  );

  final databaseUser = '$sqlClientAccountId@$projectId.iam';
  final sqlUser = stack.add(
    GoogleSqlUser(
      localName: 'sql_client',
      instance: sql.ref,
      name: .literal(databaseUser),
      type: .literal(.cloudIamServiceAccount),
      dependsOn: [sql, identity.serviceAccount],
    ),
  );

  return LunchDatabase(
    sql: sql,
    database: database,
    sqlUser: sqlUser,
    databaseUser: databaseUser,
    databaseUrl: 'postgresql://$databaseUser@localhost:5432/$databaseName',
    instanceConnectionName: '$projectId:$region:$sqlInstanceName',
  );
}
