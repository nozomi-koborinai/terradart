/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Resource IDs are Terraform-computed; use `terraform output` after apply.
library;

import 'dart:io';

import 'package:terradart_example_iam_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'] ?? 'YOUR-PROJECT-ID';
  final stack = IamShowcaseStack(
    projectId: projectId,
  );
  await stack.synth(outDir: 'tf-out');
}
