/// HTTP API for one DynamoDB item, addressed by `id`.
///
/// `handleItem` speaks API Gateway payload format 2.0. The store is the
/// table; tests pass an in-memory one.
library;

import 'dart:convert';

/// One item in the table, keyed by [id].
abstract interface class ItemStore {
  Future<String?> get(String id);

  Future<void> put(String id, String body);

  Future<void> delete(String id);
}

/// What the function returns to API Gateway.
final class ItemResponse {
  const ItemResponse(this.statusCode, this.body);

  final int statusCode;
  final String body;

  /// Payload format 2.0 response.
  Map<String, Object?> toGateway() => {
    'statusCode': statusCode,
    'headers': {'content-type': 'application/json'},
    'body': body,
  };
}

/// Handles `GET`, `PUT` and `DELETE` of `/items/{id}`.
Future<ItemResponse> handleItem(Object? event, ItemStore items) async {
  final root = _asMap(event);
  final method = _method(root);
  final id = _pathId(root);
  if (id == null || id.isEmpty) {
    return const ItemResponse(400, '{"error":"missing id"}');
  }
  try {
    switch (method) {
      case 'GET':
        final body = await items.get(id);
        if (body == null) {
          return const ItemResponse(404, '{"error":"not found"}');
        }
        return ItemResponse(200, body);
      case 'PUT':
        final body = _body(root);
        if (body == null || body.isEmpty) {
          return const ItemResponse(400, '{"error":"missing body"}');
        }
        await items.put(id, body);
        return ItemResponse(200, jsonEncode({'id': id}));
      case 'DELETE':
        await items.delete(id);
        return ItemResponse(200, jsonEncode({'deleted': id}));
      default:
        return const ItemResponse(405, '{"error":"method not allowed"}');
    }
  } on ItemStoreException catch (e) {
    return ItemResponse(502, jsonEncode({'error': e.message}));
  }
}

/// A store call failed. The message is safe to return to the caller.
final class ItemStoreException implements Exception {
  ItemStoreException(this.message);

  final String message;

  @override
  String toString() => 'ItemStoreException: $message';
}

Map<String, Object?> _asMap(Object? value) {
  if (value is! Map) return const {};
  return {for (final e in value.entries) e.key.toString(): e.value as Object?};
}

String? _method(Map<String, Object?> event) {
  final http = _asMap(_asMap(event['requestContext'])['http']);
  final method = http['method'];
  return method is String ? method : null;
}

String? _pathId(Map<String, Object?> event) {
  final id = _asMap(event['pathParameters'])['id'];
  return id is String ? id : null;
}

String? _body(Map<String, Object?> event) {
  final raw = event['body'];
  if (raw is! String || raw.isEmpty) return null;
  if (event['isBase64Encoded'] == true) {
    return utf8.decode(base64Decode(raw));
  }
  return raw;
}
