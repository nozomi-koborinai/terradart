// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_data_set`.
const Set<String> _awsQuicksightDataSetSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_data_set`.
final class DataAwsQuicksightDataSet extends Data {
  static const String tfType = 'aws_quicksight_data_set';

  DataAwsQuicksightDataSet({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSetId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'data_set_id': dataSetId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightDataSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `column_groups` attribute.
  TfRef<List<Map<String, Object?>>> get columnGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'column_groups');

  /// Reference to `column_level_permission_rules` attribute.
  TfRef<List<Map<String, Object?>>> get columnLevelPermissionRules =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'column_level_permission_rules',
      );

  /// Reference to `data_set_usage_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get dataSetUsageConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_set_usage_configuration',
      );

  /// Reference to `field_folders` attribute.
  TfRef<List<Map<String, Object?>>> get fieldFolders =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'field_folders');

  /// Reference to `import_mode` attribute.
  TfRef<String> get importMode => TfRef.attribute<String>(this, 'import_mode');

  /// Reference to `logical_table_map` attribute.
  TfRef<List<Map<String, Object?>>> get logicalTableMap =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logical_table_map');

  /// Reference to `permissions` attribute.
  TfRef<List<Map<String, Object?>>> get permissions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permissions');

  /// Reference to `physical_table_map` attribute.
  TfRef<List<Map<String, Object?>>> get physicalTableMap =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'physical_table_map');

  /// Reference to `row_level_permission_data_set` attribute.
  TfRef<List<Map<String, Object?>>> get rowLevelPermissionDataSet =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'row_level_permission_data_set',
      );

  /// Reference to `row_level_permission_tag_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get rowLevelPermissionTagConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'row_level_permission_tag_configuration',
      );
}
