// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_catalog_table`.
const Set<String> _awsGlueCatalogTableSensitive = <String>{};

/// Factory wrapper for `aws_glue_catalog_table`.
final class DataAwsGlueCatalogTable extends Data {
  static const String tfType = 'aws_glue_catalog_table';

  DataAwsGlueCatalogTable({
    required super.localName,
    TfArg<String>? catalogId,
    required TfArg<String> databaseName,
    required TfArg<String> name,
    TfArg<String>? queryAsOfTime,
    TfArg<String>? region,
    TfArg<num>? transactionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           'database_name': databaseName,
           'name': name,
           if (queryAsOfTime != null) 'query_as_of_time': queryAsOfTime,
           if (region != null) 'region': region,
           if (transactionId != null) 'transaction_id': transactionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueCatalogTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `partition_index` attribute.
  TfRef<List<Map<String, Object?>>> get partitionIndex =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'partition_index');

  /// Reference to `partition_keys` attribute.
  TfRef<List<Map<String, Object?>>> get partitionKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'partition_keys');

  /// Reference to `retention` attribute.
  TfRef<num> get retention => TfRef.attribute<num>(this, 'retention');

  /// Reference to `storage_descriptor` attribute.
  TfRef<List<Map<String, Object?>>> get storageDescriptor =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'storage_descriptor');

  /// Reference to `table_type` attribute.
  TfRef<String> get tableType => TfRef.attribute<String>(this, 'table_type');

  /// Reference to `target_table` attribute.
  TfRef<List<Map<String, Object?>>> get targetTable =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'target_table');

  /// Reference to `view_expanded_text` attribute.
  TfRef<String> get viewExpandedText =>
      TfRef.attribute<String>(this, 'view_expanded_text');

  /// Reference to `view_original_text` attribute.
  TfRef<String> get viewOriginalText =>
      TfRef.attribute<String>(this, 'view_original_text');
}
