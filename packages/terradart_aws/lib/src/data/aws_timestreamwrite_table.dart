// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_timestreamwrite_table`.
const Set<String> _awsTimestreamwriteTableSensitive = <String>{};

/// Factory wrapper for `aws_timestreamwrite_table`.
final class DataAwsTimestreamwriteTable extends Data {
  static const String tfType = 'aws_timestreamwrite_table';

  DataAwsTimestreamwriteTable({
    required super.localName,
    required TfArg<String> databaseName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_name': databaseName,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTimestreamwriteTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `magnetic_store_write_properties` attribute.
  TfRef<List<Map<String, Object?>>> get magneticStoreWriteProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'magnetic_store_write_properties',
      );

  /// Reference to `retention_properties` attribute.
  TfRef<List<Map<String, Object?>>> get retentionProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'retention_properties');

  /// Reference to `schema` attribute.
  TfRef<List<Map<String, Object?>>> get schema =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'schema');

  /// Reference to `table_status` attribute.
  TfRef<String> get tableStatus =>
      TfRef.attribute<String>(this, 'table_status');
}
