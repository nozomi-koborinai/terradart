/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Requires the GCP_PROJECT_ID environment variable.
library;

import 'dart:io';

import 'package:terradart_example_compute_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-proj-123)',
    );
    exit(64);
  }

  final stack = NetworkStack(projectId: projectId);
  await stack.synth(outDir: 'tf-out');
  print('synthesized to tf-out/main.tf.json');
}
