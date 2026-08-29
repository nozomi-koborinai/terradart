/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// No Appwrite credentials are required for synth — authentication is an
/// apply-time concern (`APPWRITE_*` env vars). Sensitive constructor
/// inputs use `TfArg.variable` and are declared here for
/// `terraform validate`.
library;

import 'package:terradart_example_appwrite_quickstart/main.dart';

Future<void> main() async {
  final stack = AppwriteDemoStack();
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
