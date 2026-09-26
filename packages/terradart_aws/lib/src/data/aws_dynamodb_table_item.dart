// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_table_item`.
const Set<String> _awsDynamodbTableItemSensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_table_item`.
final class DataAwsDynamodbTableItem extends Data {
  static const String tfType = 'aws_dynamodb_table_item';

  DataAwsDynamodbTableItem({
    required super.localName,
    TfArg<Map<String, String>>? expressionAttributeNames,
    required TfArg<String> key,
    TfArg<String>? projectionExpression,
    TfArg<String>? region,
    required TfArg<String> tableName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (expressionAttributeNames != null)
             'expression_attribute_names': expressionAttributeNames,
           'key': key,
           if (projectionExpression != null)
             'projection_expression': projectionExpression,
           if (region != null) 'region': region,
           'table_name': tableName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableItemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `item` attribute.
  TfRef<String> get item => TfRef.attribute<String>(this, 'item');
}
