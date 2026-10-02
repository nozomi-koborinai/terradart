/// A client of the deployed function. It is built with the function URL
/// that apply produced, and never applies anything itself:
///
/// ```text
/// terradart outputs
/// dart run -DFUNCTION_URL="$(jq -r .FUNCTION_URL .terradart/dart_defines.json)" bin/client.dart
/// ```
///
/// A Flutter app reads the same reader, built with
/// `--dart-define-from-file=.terradart/dart_defines.json` (README, "Calling
/// the function from a client").
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_aws_lambda_quickstart/generated/aws_lambda_stack.app.dart';

const outputs = AwsLambdaStackOutputs.fromDartDefine();

Future<void> main() async {
  final client = HttpClient();
  try {
    final response = await (await client.getUrl(
      Uri.parse(outputs.functionUrl),
    )).close();
    stdout.write(await response.transform(utf8.decoder).join());
  } finally {
    client.close();
  }
}
