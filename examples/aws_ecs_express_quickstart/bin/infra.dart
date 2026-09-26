/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// `AWS_REGION` picks the region (default `us-east-1`) and `IMAGE_TAG` the
/// tag the service runs (default `latest`). Synth needs no credentials;
/// apply authenticates through the AWS SDK credential chain.
library;

import 'dart:io';

import 'package:terradart_example_aws_ecs_express_quickstart/main.dart';

Future<void> main() async {
  final stack = AwsEcsExpressStack(
    region: Platform.environment['AWS_REGION'] ?? 'us-east-1',
    imageTag: Platform.environment['IMAGE_TAG'] ?? 'latest',
  );
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
