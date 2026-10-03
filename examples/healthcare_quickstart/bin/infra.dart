/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Writes `tf-out/main.tf.json` and `lib/generated/healthcare_stack.app.dart`
/// (with `HealthcareStackConstants.healthcareDatasetName`). Computed values such as
/// `healthcare_dataset_id` are Terraform outputs.
///
/// Requires the GCP_PROJECT_ID environment variable.
library;

import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_healthcare_quickstart/main.dart';

Future<void> main(List<String> args) async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-proj-123)',
    );
    exit(64);
  }

  await runStack(args, () => HealthcareStack(projectId: projectId));
}
