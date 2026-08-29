/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Dummy catalog-coverage stack — synth + `terraform validate` only.
/// Never apply. Authentication is unused at synth time.
library;

import 'package:terradart_example_cloudflare_leftover_quickstart/main.dart';

Future<void> main() async {
  final stack = CloudflareLeftoverStack();
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
