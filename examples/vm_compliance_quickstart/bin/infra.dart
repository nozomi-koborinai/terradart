/// Synth entry. `dart run bin/infra.dart` → `tf-out/main.tf.json`.
library;

import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_vm_compliance_quickstart/main.dart';

Future<void> main(List<String> args) async {
  final projectId =
      Platform.environment['GCP_PROJECT_ID'] ?? 'ci-test-project-id';
  await runStack(args, () => VmComplianceStack(projectId: projectId));
}
