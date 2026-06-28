import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_sql.dart';

import 'constants.dart';
import 'network.dart';
import 'runtime_identity.dart';

final class LunchDatabase {
  const LunchDatabase({
    required this.sql,
    required this.databaseUser,
    required this.databaseUrl,
    required this.instanceConnectionName,
  });

  final GoogleSqlDatabaseInstance sql;
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
      name: TfArg.literal(sqlInstanceName),
      databaseVersion: TfArg.literal(DatabaseVersion.postgres15),
      region: TfArg.literal(region),
      deletionProtection: TfArg.literal(false),
      settings: SqlDatabaseInstanceSettings(
        tier: TfArg.literal('db-f1-micro'),
        availabilityType: TfArg.literal(SqlAvailabilityType.zonal),
        edition: TfArg.literal(SqlEdition.enterprise),
        diskSize: TfArg.literal(10),
        diskType: TfArg.literal(SqlDiskType.pdSsd),
        databaseFlags: [
          SqlDatabaseInstanceDatabaseFlag(
            name: TfArg.literal('cloudsql.iam_authentication'),
            value: TfArg.literal('on'),
          ),
        ],
        ipConfiguration: SqlDatabaseInstanceIpConfiguration(
          ipv4Enabled: TfArg.literal(false),
          privateNetwork: TfArg.ref(network.vpc.selfLink),
          allocatedIpRange: TfArg.ref(network.psaRange.nameRef),
        ),
      ),
      dependsOn: [ResourceDependency(network.psaConnection)],
    ),
  );

  stack.add(
    GoogleSqlDatabase(
      localName: 'lunch',
      instance: TfArg.ref(sql.nameRef),
      name: TfArg.literal(databaseName),
      dependsOn: [ResourceDependency(sql)],
    ),
  );

  final sqlIamUserName =
      '$sqlClientAccountId@$projectId.iam.gserviceaccount.com';
  final databaseUser = '$sqlClientAccountId@$projectId.iam';
  stack.add(
    GoogleSqlUser(
      localName: 'sql_client',
      instance: TfArg.ref(sql.nameRef),
      name: TfArg.literal(sqlIamUserName),
      type: TfArg.literal(SqlUserType.cloudIamServiceAccount),
      dependsOn: [
        ResourceDependency(sql),
        ResourceDependency(identity.serviceAccount),
      ],
    ),
  );

  return LunchDatabase(
    sql: sql,
    databaseUser: databaseUser,
    databaseUrl: 'postgresql://$databaseUser@localhost:5432/$databaseName',
    instanceConnectionName: '$projectId:$region:$sqlInstanceName',
  );
}
