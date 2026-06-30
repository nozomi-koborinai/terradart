/// Synth entry. `dart run bin/infra.dart` → `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:terradart_example_vm_compliance_quickstart/main.dart';

Future<void> main() async {
  final projectId =
      Platform.environment['GCP_PROJECT_ID'] ?? 'ci-test-project-id';
  final stack = VmComplianceStack(projectId: projectId);
  await stack.writeTo('tf-out');
}
