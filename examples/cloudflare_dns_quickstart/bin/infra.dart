/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// No environment variables and no credentials are required for synth —
/// authentication is an apply-time concern (CLOUDFLARE_API_TOKEN).
library;

import 'package:terradart_example_cloudflare_dns_quickstart/main.dart';

Future<void> main() async {
  final stack = CloudflareDnsStack();
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
