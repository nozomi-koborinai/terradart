// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_table_item`.
const Set<String> _awsDynamodbTableItemSensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_table_item`.
final class AwsDynamodbTableItem extends Resource {
  static const String tfType = 'aws_dynamodb_table_item';

  AwsDynamodbTableItem({
    required super.localName,
    required TfArg<String> hashKey,
    required TfArg<String> item,
    TfArg<String>? rangeKey,
    TfArg<String>? region,
    required TfArg<String> tableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hash_key': hashKey,
           'item': item,
           'range_key': ?rangeKey,
           'region': ?region,
           'table_name': tableName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableItemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbTableItem>`.
  RefTo<AwsDynamodbTableItem> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hash_key_value` attribute.
  TfRef<String> get hashKeyValue =>
      TfRef.attribute<String>(this, 'hash_key_value');

  /// Reference to `range_key_value` attribute.
  TfRef<String> get rangeKeyValue =>
      TfRef.attribute<String>(this, 'range_key_value');

  /// Reference to `hash_key` attribute.
  TfRef<String> get hashKey => TfRef.attribute<String>(this, 'hash_key');

  /// Reference to `item` attribute.
  TfRef<String> get item => TfRef.attribute<String>(this, 'item');

  /// Reference to `range_key` attribute.
  TfRef<String> get rangeKey => TfRef.attribute<String>(this, 'range_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
