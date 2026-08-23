/// Synth entry. `dart run bin/infra.dart` → `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:firebase_app_backend/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-project-id)',
    );
    exit(64);
  }
  final stack = FirebaseAppBackendStack(projectId: projectId);
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
