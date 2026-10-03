/// Synth entry. `dart run bin/infra.dart` → `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:firebase_app_backend/main.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-project-id)',
    );
    exit(64);
  }
  await runStack(args, () => FirebaseAppBackendStack(projectId: projectId));
}
