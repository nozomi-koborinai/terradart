/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// No environment variables and no credentials are required for synth —
/// authentication is an apply-time concern (CLOUDFLARE_API_TOKEN).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_cloudflare_dns_quickstart/main.dart';

Future<void> main(List<String> args) async {
  await runStack(args, () => CloudflareDnsStack());
}
