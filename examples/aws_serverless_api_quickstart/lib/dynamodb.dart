/// Items table through the `aws_client` document client.
///
/// Lambda injects `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`,
/// `AWS_SESSION_TOKEN` and `AWS_REGION`. The client reads that chain
/// itself. The role's policy is what allows the calls.
library;

import 'dart:io';

import 'package:aws_client/dynamo_document.dart';

import 'items_api.dart';

/// GetItem, PutItem and DeleteItem against one table.
final class DynamoDbItems implements ItemStore {
  DynamoDbItems({required this.tableName, required String region})
    : _table = DocumentClient(region: region);

  /// Region from `AWS_REGION`. Credentials come from the same environment.
  factory DynamoDbItems.fromEnvironment(String tableName) {
    final region = Platform.environment['AWS_REGION'];
    if (region == null || region.isEmpty) {
      throw StateError('AWS_REGION must be set.');
    }
    return DynamoDbItems(tableName: tableName, region: region);
  }

  final String tableName;
  final DocumentClient _table;

  @override
  Future<String?> get(String id) async {
    final result = await _call(
      'GetItem',
      () => _table.get(
        tableName: tableName,
        key: {'id': id},
        consistentRead: true,
      ),
    );
    final body = result.item['body'];
    return body is String ? body : null;
  }

  @override
  Future<void> put(String id, String body) {
    return _call(
      'PutItem',
      () => _table.put(tableName: tableName, item: {'id': id, 'body': body}),
    );
  }

  @override
  Future<void> delete(String id) {
    return _call(
      'DeleteItem',
      () => _table.delete(tableName: tableName, key: {'id': id}),
    );
  }

  Future<T> _call<T>(String action, Future<T> Function() request) async {
    try {
      return await request();
    } catch (error) {
      throw ItemStoreException('dynamodb $action failed: $error');
    }
  }
}
