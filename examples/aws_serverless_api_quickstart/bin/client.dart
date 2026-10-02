/// Calls the items API using the stack's outputs.
///
/// Reads `API_URL` and `TABLE_NAME` through `AwsServerlessApiStackOutputs`
/// — the same reader the function uses for the table name. After
/// `terradart apply`, which writes `.terradart/dart_defines.json`:
///
/// ```bash
/// export API_URL="$(jq -r .API_URL .terradart/dart_defines.json)"
/// export TABLE_NAME="$(jq -r .TABLE_NAME .terradart/dart_defines.json)"
/// dart run bin/client.dart demo
/// ```
library;

import 'dart:convert';
import 'dart:io';

import 'package:terradart_example_aws_serverless_api_quickstart/generated/serverless_api_stack.app.dart';

Future<void> main(List<String> args) async {
  final outputs = AwsServerlessApiStackOutputs.fromEnvironment(
    Platform.environment,
  );
  final id = args.isEmpty ? 'demo' : args.first;
  final base = outputs.apiUrl.replaceAll(RegExp(r'/+$'), '');
  final uri = Uri.parse('$base/items/$id');
  stdout
    ..writeln('table ${outputs.tableName}')
    ..writeln('PUT   $uri');
  final client = HttpClient();
  final payload = jsonEncode({'note': 'hello from Dart', 'id': id});
  await _send(client, 'PUT', uri, payload);
  stdout.writeln('GET   $uri');
  await _send(client, 'GET', uri, null);
  client.close();
}

Future<void> _send(
  HttpClient client,
  String method,
  Uri uri,
  String? body,
) async {
  final request = await client.openUrl(method, uri);
  if (body != null) {
    final bytes = utf8.encode(body);
    request
      ..headers.contentType = ContentType.json
      ..contentLength = bytes.length
      ..add(bytes);
  }
  final response = await request.close();
  final text = await response.transform(utf8.decoder).join();
  stdout.writeln('${response.statusCode} $text');
}
