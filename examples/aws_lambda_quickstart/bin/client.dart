/// A client of the deployed function. It is built with the function URL
/// that apply produced, and never applies anything itself:
///
/// ```text
/// dart run -DFUNCTION_URL="$(terraform -chdir=tf-out output -raw function_url)" bin/client.dart
/// ```
///
/// A Flutter app reads the same reader, built with
/// `--dart-define-from-file` and the JSON of
/// `terraform -chdir=tf-out output -json dart_defines` (README, "Calling
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
