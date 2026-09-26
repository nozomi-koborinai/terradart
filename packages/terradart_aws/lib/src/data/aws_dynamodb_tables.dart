// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_tables`.
const Set<String> _awsDynamodbTablesSensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_tables`.
final class DataAwsDynamodbTables extends Data {
  static const String tfType = 'aws_dynamodb_tables';

  DataAwsDynamodbTables({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTablesSensitive;

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
