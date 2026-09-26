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
           if (rangeKey != null) 'range_key': rangeKey,
           if (region != null) 'region': region,
           'table_name': tableName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableItemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hash_key_value` attribute.
  TfRef<String> get hashKeyValue =>
      TfRef.attribute<String>(this, 'hash_key_value');

  /// Reference to `range_key_value` attribute.
  TfRef<String> get rangeKeyValue =>
      TfRef.attribute<String>(this, 'range_key_value');
}
