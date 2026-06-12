/// Synth entry. `dart run bin/infra.dart` -> `tf-out/main.tf.json`.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_compute_lb_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln('error: set GCP_PROJECT_ID env var');
    exit(64);
  }
  final stack = ComputeLbStack(projectId: projectId);
  await stack.writeTo('tf-out');
  // `private_key` on self-managed SSL cert uses TfArg.variable.
  await File('tf-out/variables.tf.json').writeAsString(
    const JsonEncoder.withIndent('  ').convert({
      'variable': {
        'lb_self_managed_certificate': {'type': 'string', 'sensitive': true},
        'lb_self_managed_private_key': {'type': 'string', 'sensitive': true},
        'lb_regional_certificate': {'type': 'string', 'sensitive': true},
        'lb_regional_private_key': {'type': 'string', 'sensitive': true},
        'cm_trust_anchor_pem': {'type': 'string', 'sensitive': true},
      },
    }),
  );
  print('synthesized to tf-out/main.tf.json');
}
