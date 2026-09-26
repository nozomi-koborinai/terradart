/// The Lambda function itself: a minimal `provided.al2023` custom runtime.
///
/// Compile it on Linux to a binary named `bootstrap` and zip it (see the
/// README). Lambda starts the binary once per execution environment; it
/// then long-polls the Runtime API for invocations and answers each one
/// with a function URL response.
library;

import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final api = Platform.environment['AWS_LAMBDA_RUNTIME_API']!;
  final invocations = Uri.parse('http://$api/2018-06-01/runtime/invocation/');
  final client = HttpClient();
  while (true) {
    final next =
        await (await client.getUrl(invocations.resolve('next'))).close();
    final requestId = next.headers.value('lambda-runtime-aws-request-id')!;
    await next.drain<void>();
    final reply = await client.postUrl(
      invocations.resolve('$requestId/response'),
    );
    final body = utf8.encode(
      jsonEncode({
        'statusCode': 200,
        'headers': {'content-type': 'text/plain'},
        'body': 'Hello from Dart on AWS Lambda\n',
      }),
    );
    reply
      ..headers.contentType = ContentType.json
      ..contentLength = body.length
      ..add(body);
    await (await reply.close()).drain<void>();
  }
}
