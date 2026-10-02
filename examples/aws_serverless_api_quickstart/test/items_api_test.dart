import 'dart:convert';

import 'package:terradart_example_aws_serverless_api_quickstart/dynamodb.dart';
import 'package:terradart_example_aws_serverless_api_quickstart/generated/serverless_api_stack.app.dart';
import 'package:terradart_example_aws_serverless_api_quickstart/items_api.dart';
import 'package:test/test.dart';

void main() {
  test('outputs reader reads the API URL and the table name', () {
    final outputs = AwsServerlessApiStackOutputs.fromEnvironment({
      'API_URL': 'https://abc.execute-api.us-east-1.amazonaws.com',
      'TABLE_NAME': 'terradart-items',
    });
    expect(outputs.apiUrl, 'https://abc.execute-api.us-east-1.amazonaws.com');
    expect(outputs.tableName, 'terradart-items');
  });

  test('GET, PUT and DELETE round-trip one item', () async {
    final store = _MemoryItems();
    final missing = await handleItem(_event('GET', 'a'), store);
    expect(missing.statusCode, 404);

    final created = await handleItem(
      _event('PUT', 'a', body: '{"note":"hi"}'),
      store,
    );
    expect(created.statusCode, 200);
    expect(jsonDecode(created.body), {'id': 'a'});

    final found = await handleItem(_event('GET', 'a'), store);
    expect(found.statusCode, 200);
    expect(found.body, '{"note":"hi"}');

    final removed = await handleItem(_event('DELETE', 'a'), store);
    expect(removed.statusCode, 200);
    expect(
      await handleItem(_event('GET', 'a'), store),
      isA<ItemResponse>().having((r) => r.statusCode, 'status', 404),
    );
  });

  test('a base64 body is decoded before it is stored', () async {
    final store = _MemoryItems();
    final response = await handleItem(
      _event(
        'PUT',
        'a',
        body: base64Encode(utf8.encode('{"n":1}')),
        encoded: true,
      ),
      store,
    );
    expect(response.statusCode, 200);
    expect(await store.get('a'), '{"n":1}');
  });

  test('SigV4 authorization matches an independent signature', () {
    final headers = sigV4Headers(
      method: 'POST',
      service: 'service',
      region: 'us-east-1',
      host: 'example.amazonaws.com',
      body: '',
      accessKeyId: 'AKIDEXAMPLE',
      secretAccessKey: 'wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY',
      now: DateTime.utc(2015, 8, 30, 12, 36),
      headers: {'content-type': 'application/json'},
    );
    expect(
      headers['authorization'],
      'AWS4-HMAC-SHA256 '
      'Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, '
      'SignedHeaders=content-type;host;x-amz-date, '
      'Signature=5a2c5a6e41ff6b9d131f981dd0c72dc6a101bafd7e194dfa4d6984a4ae5e0f19',
    );
  });
}

Map<String, Object?> _event(
  String method,
  String id, {
  String? body,
  bool encoded = false,
}) => {
  'requestContext': {
    'http': {'method': method},
  },
  'pathParameters': {'id': id},
  'body': ?body,
  'isBase64Encoded': encoded,
};

final class _MemoryItems implements ItemStore {
  final _items = <String, String>{};

  @override
  Future<void> delete(String id) async {
    _items.remove(id);
  }

  @override
  Future<String?> get(String id) async => _items[id];

  @override
  Future<void> put(String id, String body) async {
    _items[id] = body;
  }
}
