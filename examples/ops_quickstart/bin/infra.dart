/// Synth entry. `dart run bin/infra.dart` → `tf-out/main.tf.json`.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_ops_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln('error: set GCP_PROJECT_ID env var');
    exit(64);
  }
  final stack = AuditPipelineStack(projectId: projectId);
  await stack.writeTo('tf-out');
  // Folder/org sinks need hierarchy IDs at apply time (not required for synth).
  await File('tf-out/variables.tf.json').writeAsString(
    const JsonEncoder.withIndent('  ').convert({
      'variable': {
        'ops_folder_id': {'type': 'string'},
        'ops_organization_id': {'type': 'string'},
      },
    }),
  );
  print('synthesized to tf-out/main.tf.json');
}
