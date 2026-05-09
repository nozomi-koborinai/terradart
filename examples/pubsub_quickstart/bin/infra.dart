/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Note: `topic.id` is a Terraform-computed reference, so the Dart
/// constants file is not generated at synth time — use `terraform output`
/// to read `orders_topic_id` after apply.
///
/// Requires the GCP_PROJECT_ID environment variable.
library;

import 'dart:io';

import 'package:terradart_example_pubsub_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-proj-123)',
    );
    exit(64);
  }

  final stack = OrdersStack(projectId: projectId);
  await stack.synth(outDir: 'tf-out');
  print('synthesized to tf-out/main.tf.json');
}
