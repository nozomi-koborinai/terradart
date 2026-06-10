/// Synth entry. `dart run bin/infra.dart` → `tf-out/main.tf.json`.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_firebase_app_check_quickstart/main.dart';

Future<void> main() async {
  final projectId = Platform.environment['GCP_PROJECT_ID'];
  if (projectId == null || projectId.isEmpty) {
    stderr.writeln('error: set GCP_PROJECT_ID env var');
    exit(64);
  }
  final stack = AppCheckStack(projectId: projectId);
  await stack.writeTo('tf-out');
  // `site_secret` uses TfArg.variable — declare for terraform validate.
  await File('tf-out/variables.tf.json').writeAsString(
    const JsonEncoder.withIndent('  ').convert({
      'variable': {
        'recaptcha_v3_site_secret': {'type': 'string', 'sensitive': true},
      },
    }),
  );
  print('synthesized to tf-out/main.tf.json');
}
