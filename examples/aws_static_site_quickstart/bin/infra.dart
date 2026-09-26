/// Synth entry point. Run `dart run bin/infra.dart` to emit
/// `tf-out/main.tf.json`.
///
/// `SITE_DOMAIN` is the site's host name (default `app.example.com`) and
/// `HOSTED_ZONE` the Route 53 public hosted zone that serves it (default
/// `example.com`). Synth needs no credentials; apply authenticates through
/// the AWS SDK credential chain.
library;

import 'dart:io';

import 'package:terradart_example_aws_static_site_quickstart/main.dart';

Future<void> main() async {
  final stack = AwsStaticSiteStack(
    siteDomain: Platform.environment['SITE_DOMAIN'] ?? 'app.example.com',
    hostedZone: Platform.environment['HOSTED_ZONE'] ?? 'example.com',
  );
  await stack.writeTo('tf-out');
  print('synthesized to tf-out/main.tf.json');
}
