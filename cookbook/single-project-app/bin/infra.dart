/// Synth entry. `dart run bin/infra.dart` -> `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:single_project_app/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
        'error: set GCP_PROJECT_ID env var (target GCP project, e.g. terradart-validate)');
    exit(64);
  }
  final dbPassword = Platform.environment['DB_PASSWORD'];
  if (dbPassword == null || dbPassword.isEmpty) {
    stderr.writeln('error: set DB_PASSWORD env var');
    exit(64);
  }
  final alertEmail = Platform.environment['ALERT_EMAIL'];
  if (alertEmail == null || alertEmail.isEmpty) {
    stderr.writeln(
        'error: set ALERT_EMAIL env var (notification channel destination)');
    exit(64);
  }
  final stack = SingleProjectAppStack(
    projectId: projectId,
    dbPassword: dbPassword,
    alertEmail: alertEmail,
  );
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
