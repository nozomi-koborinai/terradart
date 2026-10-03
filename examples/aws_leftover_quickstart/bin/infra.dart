/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// Dummy catalog-coverage stack — synth + `terraform validate` only.
/// Never apply. Authentication is unused at synth time.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_aws_leftover_quickstart/main.dart';

Future<void> main(List<String> args) async {
  await runStack(args, () => AwsLeftoverStack());
}
