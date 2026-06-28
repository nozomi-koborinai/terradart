import 'package:terradart_core/terradart_core.dart';

import 'constants.dart';
import 'database.dart';

void addLunchExports({
  required Stack stack,
  required String projectId,
  required LunchDatabase database,
}) {
  stack
    ..addExport('REGION', StringExport(region))
    ..addExport('PROJECT_ID', StringExport(projectId))
    ..addExport('SERVICE_NAME', StringExport(serviceName))
    ..addExport('DATABASE_NAME', StringExport(databaseName))
    ..addExport('DATABASE_USER', StringExport(database.databaseUser))
    ..addExport('DATABASE_URL', StringExport(database.databaseUrl))
    ..addExport(
      'CLOUD_SQL_INSTANCE_CONNECTION_NAME',
      StringExport(database.instanceConnectionName),
    )
    ..setAppExportsOutputPath('../shared/lib/generated/lunch_stack.app.dart');
}
