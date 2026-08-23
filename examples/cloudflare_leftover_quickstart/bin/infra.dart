/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Dummy catalog-coverage stack — synth + `terraform validate` only.
/// Never apply. Authentication is unused at synth time.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_cloudflare_leftover_quickstart/main.dart';

Future<void> main() async {
  final stack = CloudflareLeftoverStack();
  await stack.writeTo('tf-out');
  // Sensitive leftover fields use TfArg.variable — declare for validate.
  await File('tf-out/variables.tf.json').writeAsString(
    const JsonEncoder.withIndent('  ').convert({
      'variable': {
        'leftover_secret': {'type': 'string', 'sensitive': true},
      },
    }),
  );
  print('synthesized to tf-out/main.tf.json');
}
