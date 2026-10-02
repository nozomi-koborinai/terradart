/// The Lambda function: a `provided.al2023` custom runtime for the items API.
///
/// Compile it on Linux to a binary named `bootstrap` and zip it (see the
/// README). Each invocation is an API Gateway HTTP API event. The table
/// name is `AwsServerlessApiStackOutputs.tableName`, which the stack passes
/// in as `TABLE_NAME`.
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_aws_serverless_api_quickstart/dynamodb.dart';
import 'package:terradart_example_aws_serverless_api_quickstart/generated/serverless_api_stack.app.dart';
import 'package:terradart_example_aws_serverless_api_quickstart/items_api.dart';

Future<void> main() async {
  final runtimeApi = Platform.environment['AWS_LAMBDA_RUNTIME_API']!;
  final outputs = AwsServerlessApiStackOutputs.fromEnvironment(
    Platform.environment,
  );
  final items = DynamoDbItems.fromEnvironment(outputs.tableName);
  final invocations = Uri.parse(
    'http://$runtimeApi/2018-06-01/runtime/invocation/',
  );
  final client = HttpClient();
  while (true) {
    final next = await (await client.getUrl(
      invocations.resolve('next'),
    )).close();
    final requestId = next.headers.value('lambda-runtime-aws-request-id')!;
    final raw = await next.transform(utf8.decoder).join();
    Object? event;
    try {
      event = jsonDecode(raw);
    } on FormatException {
      event = null;
    }
    final ItemResponse response;
    try {
      response = await handleItem(event, items);
    } on Object catch (e) {
      await _post(client, invocations.resolve('$requestId/error'), {
        'errorMessage': '$e',
        'errorType': 'RuntimeError',
      });
      continue;
    }
    await _post(
      client,
      invocations.resolve('$requestId/response'),
      response.toGateway(),
    );
  }
}

Future<void> _post(HttpClient client, Uri url, Object body) async {
  final reply = await client.postUrl(url);
  final bytes = utf8.encode(jsonEncode(body));
  reply
    ..headers.contentType = ContentType.json
    ..contentLength = bytes.length
    ..add(bytes);
  await (await reply.close()).drain<void>();
}
