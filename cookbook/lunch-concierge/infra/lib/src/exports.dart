import 'package:terradart_core/terradart_core.dart';

import 'constants.dart';
import 'database.dart';

/// Demo AppExport seam: env → synth → typed Dart constants for the server.
///
/// Project-derived strings (`PROJECT_ID`, IAM DB user, instance connection
/// name, …) are intentional `StringExport`s. Callers must synth with the
/// real `GCP_PROJECT_ID` before `docker build` or a local server run so
/// `shared/lib/generated/lunch_stack.app.dart` matches the target project.
/// The committed file may carry `ci-test-project-id` from cookbook CI.
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
