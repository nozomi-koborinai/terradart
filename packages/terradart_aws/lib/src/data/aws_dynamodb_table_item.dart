// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dynamodb/aws_dynamodb_table_item.dart';

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
           'expression_attribute_names': ?expressionAttributeNames,
           'key': key,
           'projection_expression': ?projectionExpression,
           'region': ?region,
           'table_name': tableName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableItemSensitive;

  /// A reference to the `aws_dynamodb_table_item` this data source reads, for
  /// arguments typed `RefTo<AwsDynamodbTableItem>`.
  RefTo<AwsDynamodbTableItem> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `item` attribute.
  TfRef<String> get item => TfRef.attribute<String>(this, 'item');

  /// Reference to `expression_attribute_names` attribute.
  TfRef<Map<String, String>> get expressionAttributeNamesRef =>
      TfRef.attribute<Map<String, String>>(this, 'expression_attribute_names');

  /// Reference to `key` attribute.
  TfRef<String> get keyRef => TfRef.attribute<String>(this, 'key');

  /// Reference to `projection_expression` attribute.
  TfRef<String> get projectionExpressionRef =>
      TfRef.attribute<String>(this, 'projection_expression');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableNameRef => TfRef.attribute<String>(this, 'table_name');
}
