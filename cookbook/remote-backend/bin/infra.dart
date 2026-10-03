/// Synth entry: `terradart synth` (or `dart run bin/infra.dart`) writes
/// `tf-out/main.tf.json`.
///
/// `GCP_PROJECT_ID` is the project, `BUCKET_NAME` the state bucket
/// (default `<GCP_PROJECT_ID>-tfstate`). Setting `STATE_BUCKET` moves the
/// Stack's own state into that bucket.
library;

import 'dart:io';

import 'package:remote_backend/main.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln('error: set GCP_PROJECT_ID env var (target GCP project)');
    exit(64);
  }
  final bucketName =
      Platform.environment['BUCKET_NAME'] ?? '$projectId-tfstate';
  final stateBucket = Platform.environment['STATE_BUCKET'];
  await runStack(
    args,
    () => RemoteBackendStack(
      projectId: projectId,
      bucketName: bucketName,
      stateBucket: stateBucket == null || stateBucket.isEmpty
          ? null
          : stateBucket,
    ),
  );
}
