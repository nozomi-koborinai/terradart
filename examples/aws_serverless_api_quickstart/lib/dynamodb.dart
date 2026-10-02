/// Minimal DynamoDB JSON client for the items table.
///
/// Lambda injects `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`,
/// `AWS_SESSION_TOKEN` and `AWS_REGION`. Requests are signed with SigV4
/// for the `dynamodb` service. The role's policy is what allows them.
library;

import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';

import 'items_api.dart';

/// GetItem, PutItem and DeleteItem against one table.
final class DynamoDbItems implements ItemStore {
  DynamoDbItems({
    required this.tableName,
    required this.region,
    required this.accessKeyId,
    required this.secretAccessKey,
    this.sessionToken,
    HttpClient? client,
  }) : _client = client ?? HttpClient();

  /// Credentials and region from the Lambda execution environment.
  factory DynamoDbItems.fromEnvironment(String tableName) {
    final env = Platform.environment;
    final accessKey = env['AWS_ACCESS_KEY_ID'];
    final secret = env['AWS_SECRET_ACCESS_KEY'];
    final region = env['AWS_REGION'];
    if (accessKey == null || secret == null || region == null) {
      throw StateError(
        'AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and AWS_REGION must be set.',
      );
    }
    return DynamoDbItems(
      tableName: tableName,
      region: region,
      accessKeyId: accessKey,
      secretAccessKey: secret,
      sessionToken: env['AWS_SESSION_TOKEN'],
    );
  }

  final String tableName;
  final String region;
  final String accessKeyId;
  final String secretAccessKey;
  final String? sessionToken;
  final HttpClient _client;

  @override
  Future<String?> get(String id) async {
    final decoded = await _call('GetItem', {
      'TableName': tableName,
      'Key': {
        'id': {'S': id},
      },
      'ConsistentRead': true,
    });
    final item = decoded['Item'];
    if (item is! Map) return null;
    final body = item['body'];
    if (body is Map && body['S'] is String) return body['S'] as String;
    return null;
  }

  @override
  Future<void> put(String id, String body) async {
    await _call('PutItem', {
      'TableName': tableName,
      'Item': {
        'id': {'S': id},
        'body': {'S': body},
      },
    });
  }

  @override
  Future<void> delete(String id) async {
    await _call('DeleteItem', {
      'TableName': tableName,
      'Key': {
        'id': {'S': id},
      },
    });
  }

  Future<Map<String, Object?>> _call(
    String action,
    Map<String, Object?> payload,
  ) async {
    final host = 'dynamodb.$region.amazonaws.com';
    final body = jsonEncode(payload);
    final headers = sigV4Headers(
      method: 'POST',
      service: 'dynamodb',
      region: region,
      host: host,
      body: body,
      accessKeyId: accessKeyId,
      secretAccessKey: secretAccessKey,
      now: DateTime.now().toUtc(),
      headers: {
        'content-type': 'application/x-amz-json-1.0',
        'x-amz-target': 'DynamoDB_20120810.$action',
        'x-amz-security-token': ?sessionToken,
      },
    );
    final request = await _client.postUrl(Uri.https(host, '/'));
    // HttpClient derives Host from the URI. Setting it here forces port 80.
    headers.forEach((name, value) {
      if (name == 'host') return;
      request.headers.set(name, value);
    });
    final bytes = utf8.encode(body);
    request
      ..contentLength = bytes.length
      ..add(bytes);
    final response = await request.close();
    final text = await response.transform(utf8.decoder).join();
    if (response.statusCode != 200) {
      throw ItemStoreException(
        'dynamodb $action failed (${response.statusCode})',
      );
    }
    final decoded = jsonDecode(text);
    if (decoded is Map) {
      return {
        for (final e in decoded.entries) e.key.toString(): e.value as Object?,
      };
    }
    return const {};
  }
}

/// SigV4 headers for one request, including `authorization` and `x-amz-date`.
///
/// Header names in [headers] are lowercase. The returned map uses the same
/// names, which `HttpClient` sends as-is.
Map<String, String> sigV4Headers({
  required String method,
  required String service,
  required String region,
  required String host,
  required String body,
  required String accessKeyId,
  required String secretAccessKey,
  required DateTime now,
  required Map<String, String> headers,
}) {
  final amzDate = _amzDate(now);
  final dateStamp = amzDate.substring(0, 8);
  final signed = {...headers, 'host': host, 'x-amz-date': amzDate};
  final names = signed.keys.toList()..sort();
  final canonicalHeaders = names
      .map((name) => '$name:${signed[name]!.trim()}\n')
      .join();
  final signedHeaders = names.join(';');
  final payloadHash = sha256.convert(utf8.encode(body)).toString();
  // Canonical headers already end in a newline. SigV4 still requires a
  // blank line before the signed-header list, so the request joins them
  // with one more newline.
  final canonical =
      '$method\n/\n\n$canonicalHeaders\n$signedHeaders\n$payloadHash';
  final scope = '$dateStamp/$region/$service/aws4_request';
  final stringToSign = [
    'AWS4-HMAC-SHA256',
    amzDate,
    scope,
    sha256.convert(utf8.encode(canonical)).toString(),
  ].join('\n');
  final signature = _hex(
    _hmac(
      _signingKey(secretAccessKey, dateStamp, region, service),
      utf8.encode(stringToSign),
    ),
  );
  return {
    ...signed,
    'authorization':
        'AWS4-HMAC-SHA256 Credential=$accessKeyId/$scope, '
        'SignedHeaders=$signedHeaders, Signature=$signature',
  };
}

List<int> _signingKey(
  String secret,
  String dateStamp,
  String region,
  String service,
) {
  final date = _hmac(utf8.encode('AWS4$secret'), utf8.encode(dateStamp));
  final regional = _hmac(date, utf8.encode(region));
  final scoped = _hmac(regional, utf8.encode(service));
  return _hmac(scoped, utf8.encode('aws4_request'));
}

List<int> _hmac(List<int> key, List<int> data) =>
    Hmac(sha256, key).convert(data).bytes;

String _hex(List<int> bytes) =>
    bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();

String _amzDate(DateTime utc) {
  String two(int n) => n.toString().padLeft(2, '0');
  final d = utc.toUtc();
  return '${d.year}${two(d.month)}${two(d.day)}'
      'T${two(d.hour)}${two(d.minute)}${two(d.second)}Z';
}
