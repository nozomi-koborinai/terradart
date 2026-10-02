/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json` and `lib/generated/serverless_api_stack.app.dart`.
///
/// `AWS_REGION` picks the region (default `us-east-1`). Synth needs no
/// credentials; apply authenticates through the AWS SDK credential chain.
library;

import 'package:terradart_example_aws_serverless_api_quickstart/main.dart';

Future<void> main() async {
  final stack = AwsServerlessApiStack();
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
