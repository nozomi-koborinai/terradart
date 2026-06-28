/// Stage 0 synth entry. `dart run bin/infra.dart` -> `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:remote_backend/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln('error: set GCP_PROJECT_ID env var (target GCP project)');
    exit(64);
  }
  final bucketName =
      Platform.environment['BUCKET_NAME'] ?? '$projectId-tfstate';
  final stack = RemoteBackendStack(
    projectId: projectId,
    bucketName: bucketName,
  );
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json (bucket: $bucketName)');
}
