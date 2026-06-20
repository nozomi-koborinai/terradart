/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Writes `tf-out/main.tf.json` and `lib/generated/gemini_stack.app.dart`
/// (literal exports such as `ENABLEMENT_SETTING_ID`). Computed exports like
/// `ENABLEMENT_SETTING_NAME` appear as Terraform outputs only.
///
/// Requires the GCP_PROJECT_ID environment variable.
library;

import 'dart:io';

import 'package:terradart_example_gemini_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln(
      'error: set GCP_PROJECT_ID env var (e.g. GCP_PROJECT_ID=my-proj-123)',
    );
    exit(64);
  }

  final stack = GeminiStack(projectId: projectId);
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
