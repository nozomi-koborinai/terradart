/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// No Appwrite credentials are required for synth — authentication is an
/// apply-time concern (`APPWRITE_*` env vars). Sensitive constructor
/// inputs use `TfArg.variable` and are declared here for
/// `terraform validate`.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_appwrite_quickstart/main.dart';

Future<void> main() async {
  final stack = AppwriteDemoStack();
  await stack.writeTo('tf-out');
  await File('tf-out/variables.tf.json').writeAsString(
    const JsonEncoder.withIndent('  ').convert({
      'variable': {
        'backup_access_key': {'type': 'string', 'sensitive': true},
        'backup_secret_key': {'type': 'string', 'sensitive': true},
        'function_api_url': {'type': 'string', 'sensitive': true},
        'site_api_url': {'type': 'string', 'sensitive': true},
      },
    }),
  );
  print('synthesized to tf-out/main.tf.json');
}
