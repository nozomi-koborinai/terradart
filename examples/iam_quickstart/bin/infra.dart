/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Resource IDs are computed at apply; `terradart apply` prints the outputs.
library;

import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_iam_quickstart/main.dart';

Future<void> main(List<String> args) async {
  final projectId = Platform.environment['GCP_PROJECT_ID'] ?? 'YOUR-PROJECT-ID';
  await runStack(args, () => IamShowcaseStack(projectId: projectId));
}
