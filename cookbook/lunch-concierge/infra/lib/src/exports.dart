import 'package:terradart_core/terradart_core.dart';

import 'constants.dart';
import 'database.dart';

/// The generated file the server imports; relative to `infra/`, where
/// `bin/infra.dart` runs.
final lunchAppExports = AppExports(
  '../shared/lib/generated/lunch_stack.app.dart',
);

void addLunchConstants({
  required Stack stack,
  required String projectId,
  required LunchDatabase database,
}) {
  stack
    ..addConstant('region', const .value(region))
    ..addConstant('projectId', .value(projectId))
    ..addConstant('serviceName', const .value(serviceName))
    ..addConstant('databaseName', const .value(databaseName))
    ..addConstant('databaseUser', .value(database.databaseUser))
    ..addConstant('databaseUrl', .value(database.databaseUrl))
    ..addConstant(
      'cloudSqlInstanceConnectionName',
      .value(database.instanceConnectionName),
    );
}
