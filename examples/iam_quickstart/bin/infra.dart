/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Resource IDs are computed at apply; `terradart apply` prints the outputs.
library;

import 'dart:io';

import 'package:terradart_example_iam_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'] ?? 'YOUR-PROJECT-ID';
  final stack = IamShowcaseStack(projectId: projectId);
  await stack.writeTo('tf-out');
}
