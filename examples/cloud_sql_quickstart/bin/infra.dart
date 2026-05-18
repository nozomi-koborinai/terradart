/// Synth entry. `dart run bin/infra.dart` -> `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:terradart_example_cloud_sql_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln('error: set GCP_PROJECT_ID env var');
    exit(64);
  }
  final dbPassword = Platform.environment['DB_PASSWORD'];
  if (dbPassword == null || dbPassword.isEmpty) {
    stderr.writeln('error: set DB_PASSWORD env var');
    exit(64);
  }
  final stack = CloudSqlStack(projectId: projectId, dbPassword: dbPassword);
  await stack.synth(outDir: 'tf-out');
  print('synthesized to tf-out/main.tf.json');
}
