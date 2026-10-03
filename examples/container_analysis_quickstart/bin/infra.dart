/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_container_analysis_quickstart/main.dart';

Future<void> main(List<String> args) async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-proj-123)',
    );
    exit(64);
  }

  await runStack(args, () => ContainerAnalysisStack(projectId: projectId));
}
