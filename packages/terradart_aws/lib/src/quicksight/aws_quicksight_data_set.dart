// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_data_set`.
const Set<String> _awsQuicksightDataSetSensitive = <String>{};

/// Typed helper for the `column_groups` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetColumnGroups {
  const QuicksightDataSetColumnGroups({this.geoSpatialColumnGroup});

  final QuicksightDataSetColumnGroupsGeoSpatialColumnGroup?
  geoSpatialColumnGroup;

  Map<String, Object?> encode() => {
    if (geoSpatialColumnGroup != null)
      'geo_spatial_column_group': geoSpatialColumnGroup!.encode(),
  };
}

/// Typed helper for the `column_groups.geo_spatial_column_group` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetColumnGroupsGeoSpatialColumnGroup {
  const QuicksightDataSetColumnGroupsGeoSpatialColumnGroup({
    required this.columns,
    required this.countryCode,
    required this.name,
  });

  final TfArg<List<Object?>> columns;

  final TfArg<String> countryCode;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'columns': columns.toTfJson(),
    'country_code': countryCode.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `column_level_permission_rules` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetColumnLevelPermissionRules {
  const QuicksightDataSetColumnLevelPermissionRules({
    this.columnNames,
    this.principals,
  });

  final TfArg<List<Object?>>? columnNames;

  final TfArg<List<Object?>>? principals;

  Map<String, Object?> encode() => {
    if (columnNames != null) 'column_names': columnNames!.toTfJson(),
    if (principals != null) 'principals': principals!.toTfJson(),
  };
}

/// Typed helper for the `data_set_usage_configuration` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetDataSetUsageConfiguration {
  const QuicksightDataSetDataSetUsageConfiguration({
    this.disableUseAsDirectQuerySource,
    this.disableUseAsImportedSource,
  });

  final TfArg<bool>? disableUseAsDirectQuerySource;

  final TfArg<bool>? disableUseAsImportedSource;

  Map<String, Object?> encode() => {
    if (disableUseAsDirectQuerySource != null)
      'disable_use_as_direct_query_source': disableUseAsDirectQuerySource!
          .toTfJson(),
    if (disableUseAsImportedSource != null)
      'disable_use_as_imported_source': disableUseAsImportedSource!.toTfJson(),
  };
}

/// Typed helper for the `field_folders` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetFieldFolders {
  const QuicksightDataSetFieldFolders({
    this.columns,
    this.description,
    required this.fieldFoldersId,
  });

  final TfArg<List<Object?>>? columns;

  final TfArg<String>? description;

  final TfArg<String> fieldFoldersId;

  Map<String, Object?> encode() => {
    if (columns != null) 'columns': columns!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'field_folders_id': fieldFoldersId.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMap {
  const QuicksightDataSetLogicalTableMap({
    required this.alias,
    required this.logicalTableMapId,
    this.dataTransforms,
    required this.source,
  });

  final TfArg<String> alias;

  final TfArg<String> logicalTableMapId;

  final List<QuicksightDataSetLogicalTableMapDataTransforms>? dataTransforms;

  final QuicksightDataSetLogicalTableMapSource source;

  Map<String, Object?> encode() => {
    'alias': alias.toTfJson(),
    'logical_table_map_id': logicalTableMapId.toTfJson(),
    if (dataTransforms != null)
      'data_transforms': [for (final e in dataTransforms!) e.encode()],
    'source': source.encode(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransforms {
  const QuicksightDataSetLogicalTableMapDataTransforms({
    this.castColumnTypeOperation,
    this.createColumnsOperation,
    this.filterOperation,
    this.projectOperation,
    this.renameColumnOperation,
    this.tagColumnOperation,
    this.untagColumnOperation,
  });

  final QuicksightDataSetLogicalTableMapDataTransformsCastColumnTypeOperation?
  castColumnTypeOperation;

  final QuicksightDataSetLogicalTableMapDataTransformsCreateColumnsOperation?
  createColumnsOperation;

  final QuicksightDataSetLogicalTableMapDataTransformsFilterOperation?
  filterOperation;

  final QuicksightDataSetLogicalTableMapDataTransformsProjectOperation?
  projectOperation;

  final QuicksightDataSetLogicalTableMapDataTransformsRenameColumnOperation?
  renameColumnOperation;

  final QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperation?
  tagColumnOperation;

  final QuicksightDataSetLogicalTableMapDataTransformsUntagColumnOperation?
  untagColumnOperation;

  Map<String, Object?> encode() => {
    if (castColumnTypeOperation != null)
      'cast_column_type_operation': castColumnTypeOperation!.encode(),
    if (createColumnsOperation != null)
      'create_columns_operation': createColumnsOperation!.encode(),
    if (filterOperation != null) 'filter_operation': filterOperation!.encode(),
    if (projectOperation != null)
      'project_operation': projectOperation!.encode(),
    if (renameColumnOperation != null)
      'rename_column_operation': renameColumnOperation!.encode(),
    if (tagColumnOperation != null)
      'tag_column_operation': tagColumnOperation!.encode(),
    if (untagColumnOperation != null)
      'untag_column_operation': untagColumnOperation!.encode(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms.cast_column_type_operation` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsCastColumnTypeOperation {
  const QuicksightDataSetLogicalTableMapDataTransformsCastColumnTypeOperation({
    required this.columnName,
    this.format,
    required this.newColumnType,
  });

  final TfArg<String> columnName;

  final TfArg<String>? format;

  final TfArg<String> newColumnType;

  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    if (format != null) 'format': format!.toTfJson(),
    'new_column_type': newColumnType.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms.create_columns_operation` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsCreateColumnsOperation {
  const QuicksightDataSetLogicalTableMapDataTransformsCreateColumnsOperation({
    required this.columns,
  });

  final List<
    QuicksightDataSetLogicalTableMapDataTransformsCreateColumnsOperationColumns
  >
  columns;

  Map<String, Object?> encode() => {
    'columns': [for (final e in columns) e.encode()],
  };
}

/// Typed helper for the `logical_table_map.data_transforms.create_columns_operation.columns` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsCreateColumnsOperationColumns {
  const QuicksightDataSetLogicalTableMapDataTransformsCreateColumnsOperationColumns({
    required this.columnId,
    required this.columnName,
    required this.expression,
  });

  final TfArg<String> columnId;

  final TfArg<String> columnName;

  final TfArg<String> expression;

  Map<String, Object?> encode() => {
    'column_id': columnId.toTfJson(),
    'column_name': columnName.toTfJson(),
    'expression': expression.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms.filter_operation` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsFilterOperation {
  const QuicksightDataSetLogicalTableMapDataTransformsFilterOperation({
    required this.conditionExpression,
  });

  final TfArg<String> conditionExpression;

  Map<String, Object?> encode() => {
    'condition_expression': conditionExpression.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms.project_operation` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsProjectOperation {
  const QuicksightDataSetLogicalTableMapDataTransformsProjectOperation({
    required this.projectedColumns,
  });

  final TfArg<List<Object?>> projectedColumns;

  Map<String, Object?> encode() => {
    'projected_columns': projectedColumns.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms.rename_column_operation` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsRenameColumnOperation {
  const QuicksightDataSetLogicalTableMapDataTransformsRenameColumnOperation({
    required this.columnName,
    required this.newColumnName,
  });

  final TfArg<String> columnName;

  final TfArg<String> newColumnName;

  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    'new_column_name': newColumnName.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms.tag_column_operation` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperation {
  const QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperation({
    required this.columnName,
    required this.tags,
  });

  final TfArg<String> columnName;

  final List<
    QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperationTags
  >
  tags;

  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    'tags': [for (final e in tags) e.encode()],
  };
}

/// Typed helper for the `logical_table_map.data_transforms.tag_column_operation.tags` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperationTags {
  const QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperationTags({
    this.columnGeographicRole,
    this.columnDescription,
  });

  final TfArg<String>? columnGeographicRole;

  final QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperationTagsColumnDescription?
  columnDescription;

  Map<String, Object?> encode() => {
    if (columnGeographicRole != null)
      'column_geographic_role': columnGeographicRole!.toTfJson(),
    if (columnDescription != null)
      'column_description': columnDescription!.encode(),
  };
}

/// Typed helper for the `logical_table_map.data_transforms.tag_column_operation.tags.column_description` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperationTagsColumnDescription {
  const QuicksightDataSetLogicalTableMapDataTransformsTagColumnOperationTagsColumnDescription({
    this.text,
  });

  final TfArg<String>? text;

  Map<String, Object?> encode() => {if (text != null) 'text': text!.toTfJson()};
}

/// Typed helper for the `logical_table_map.data_transforms.untag_column_operation` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapDataTransformsUntagColumnOperation {
  const QuicksightDataSetLogicalTableMapDataTransformsUntagColumnOperation({
    required this.columnName,
    required this.tagNames,
  });

  final TfArg<String> columnName;

  final TfArg<List<Object?>> tagNames;

  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    'tag_names': tagNames.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map.source` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapSource {
  const QuicksightDataSetLogicalTableMapSource({
    this.dataSetArn,
    this.physicalTableId,
    this.joinInstruction,
  });

  final TfArg<String>? dataSetArn;

  final TfArg<String>? physicalTableId;

  final QuicksightDataSetLogicalTableMapSourceJoinInstruction? joinInstruction;

  Map<String, Object?> encode() => {
    if (dataSetArn != null) 'data_set_arn': dataSetArn!.toTfJson(),
    if (physicalTableId != null)
      'physical_table_id': physicalTableId!.toTfJson(),
    if (joinInstruction != null) 'join_instruction': joinInstruction!.encode(),
  };
}

/// Typed helper for the `logical_table_map.source.join_instruction` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapSourceJoinInstruction {
  const QuicksightDataSetLogicalTableMapSourceJoinInstruction({
    required this.leftOperand,
    required this.onClause,
    required this.rightOperand,
    required this.type,
    this.leftJoinKeyProperties,
    this.rightJoinKeyProperties,
  });

  final TfArg<String> leftOperand;

  final TfArg<String> onClause;

  final TfArg<String> rightOperand;

  final TfArg<String> type;

  final QuicksightDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties?
  leftJoinKeyProperties;

  final QuicksightDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties?
  rightJoinKeyProperties;

  Map<String, Object?> encode() => {
    'left_operand': leftOperand.toTfJson(),
    'on_clause': onClause.toTfJson(),
    'right_operand': rightOperand.toTfJson(),
    'type': type.toTfJson(),
    if (leftJoinKeyProperties != null)
      'left_join_key_properties': leftJoinKeyProperties!.encode(),
    if (rightJoinKeyProperties != null)
      'right_join_key_properties': rightJoinKeyProperties!.encode(),
  };
}

/// Typed helper for the `logical_table_map.source.join_instruction.left_join_key_properties` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties {
  const QuicksightDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties({
    this.uniqueKey,
  });

  final TfArg<bool>? uniqueKey;

  Map<String, Object?> encode() => {
    if (uniqueKey != null) 'unique_key': uniqueKey!.toTfJson(),
  };
}

/// Typed helper for the `logical_table_map.source.join_instruction.right_join_key_properties` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties {
  const QuicksightDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties({
    this.uniqueKey,
  });

  final TfArg<bool>? uniqueKey;

  Map<String, Object?> encode() => {
    if (uniqueKey != null) 'unique_key': uniqueKey!.toTfJson(),
  };
}

/// Typed helper for the `permissions` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPermissions {
  const QuicksightDataSetPermissions({
    required this.actions,
    required this.principal,
  });

  final TfArg<List<Object?>> actions;

  final TfArg<String> principal;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Typed helper for the `physical_table_map` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMap {
  const QuicksightDataSetPhysicalTableMap({
    required this.physicalTableMapId,
    this.customSql,
    this.relationalTable,
    this.s3Source,
  });

  final TfArg<String> physicalTableMapId;

  final QuicksightDataSetPhysicalTableMapCustomSql? customSql;

  final QuicksightDataSetPhysicalTableMapRelationalTable? relationalTable;

  final QuicksightDataSetPhysicalTableMapS3Source? s3Source;

  Map<String, Object?> encode() => {
    'physical_table_map_id': physicalTableMapId.toTfJson(),
    if (customSql != null) 'custom_sql': customSql!.encode(),
    if (relationalTable != null) 'relational_table': relationalTable!.encode(),
    if (s3Source != null) 's3_source': s3Source!.encode(),
  };
}

/// Typed helper for the `physical_table_map.custom_sql` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMapCustomSql {
  const QuicksightDataSetPhysicalTableMapCustomSql({
    required this.dataSourceArn,
    required this.name,
    required this.sqlQuery,
    this.columns,
  });

  final TfArg<String> dataSourceArn;

  final TfArg<String> name;

  final TfArg<String> sqlQuery;

  final List<QuicksightDataSetPhysicalTableMapCustomSqlColumns>? columns;

  Map<String, Object?> encode() => {
    'data_source_arn': dataSourceArn.toTfJson(),
    'name': name.toTfJson(),
    'sql_query': sqlQuery.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `physical_table_map.custom_sql.columns` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMapCustomSqlColumns {
  const QuicksightDataSetPhysicalTableMapCustomSqlColumns({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `physical_table_map.relational_table` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMapRelationalTable {
  const QuicksightDataSetPhysicalTableMapRelationalTable({
    this.catalog,
    required this.dataSourceArn,
    required this.name,
    this.schema,
    required this.inputColumns,
  });

  final TfArg<String>? catalog;

  final TfArg<String> dataSourceArn;

  final TfArg<String> name;

  final TfArg<String>? schema;

  final List<QuicksightDataSetPhysicalTableMapRelationalTableInputColumns>
  inputColumns;

  Map<String, Object?> encode() => {
    if (catalog != null) 'catalog': catalog!.toTfJson(),
    'data_source_arn': dataSourceArn.toTfJson(),
    'name': name.toTfJson(),
    if (schema != null) 'schema': schema!.toTfJson(),
    'input_columns': [for (final e in inputColumns) e.encode()],
  };
}

/// Typed helper for the `physical_table_map.relational_table.input_columns` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMapRelationalTableInputColumns {
  const QuicksightDataSetPhysicalTableMapRelationalTableInputColumns({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `physical_table_map.s3_source` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMapS3Source {
  const QuicksightDataSetPhysicalTableMapS3Source({
    required this.dataSourceArn,
    required this.inputColumns,
    required this.uploadSettings,
  });

  final TfArg<String> dataSourceArn;

  final List<QuicksightDataSetPhysicalTableMapS3SourceInputColumns>
  inputColumns;

  final QuicksightDataSetPhysicalTableMapS3SourceUploadSettings uploadSettings;

  Map<String, Object?> encode() => {
    'data_source_arn': dataSourceArn.toTfJson(),
    'input_columns': [for (final e in inputColumns) e.encode()],
    'upload_settings': uploadSettings.encode(),
  };
}

/// Typed helper for the `physical_table_map.s3_source.input_columns` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMapS3SourceInputColumns {
  const QuicksightDataSetPhysicalTableMapS3SourceInputColumns({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `physical_table_map.s3_source.upload_settings` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetPhysicalTableMapS3SourceUploadSettings {
  const QuicksightDataSetPhysicalTableMapS3SourceUploadSettings({
    this.containsHeader,
    this.delimiter,
    this.format,
    this.startFromRow,
    this.textQualifier,
  });

  final TfArg<bool>? containsHeader;

  final TfArg<String>? delimiter;

  final TfArg<String>? format;

  final TfArg<num>? startFromRow;

  final TfArg<String>? textQualifier;

  Map<String, Object?> encode() => {
    if (containsHeader != null) 'contains_header': containsHeader!.toTfJson(),
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    if (format != null) 'format': format!.toTfJson(),
    if (startFromRow != null) 'start_from_row': startFromRow!.toTfJson(),
    if (textQualifier != null) 'text_qualifier': textQualifier!.toTfJson(),
  };
}

/// Typed helper for the `refresh_properties` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetRefreshProperties {
  const QuicksightDataSetRefreshProperties({
    required this.refreshConfiguration,
  });

  final QuicksightDataSetRefreshPropertiesRefreshConfiguration
  refreshConfiguration;

  Map<String, Object?> encode() => {
    'refresh_configuration': refreshConfiguration.encode(),
  };
}

/// Typed helper for the `refresh_properties.refresh_configuration` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetRefreshPropertiesRefreshConfiguration {
  const QuicksightDataSetRefreshPropertiesRefreshConfiguration({
    required this.incrementalRefresh,
  });

  final QuicksightDataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh
  incrementalRefresh;

  Map<String, Object?> encode() => {
    'incremental_refresh': incrementalRefresh.encode(),
  };
}

/// Typed helper for the `refresh_properties.refresh_configuration.incremental_refresh` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh {
  const QuicksightDataSetRefreshPropertiesRefreshConfigurationIncrementalRefresh({
    required this.lookbackWindow,
  });

  final QuicksightDataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow
  lookbackWindow;

  Map<String, Object?> encode() => {'lookback_window': lookbackWindow.encode()};
}

/// Typed helper for the `refresh_properties.refresh_configuration.incremental_refresh.lookback_window` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow {
  const QuicksightDataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow({
    required this.columnName,
    required this.size,
    required this.sizeUnit,
  });

  final TfArg<String> columnName;

  final TfArg<num> size;

  final TfArg<String> sizeUnit;

  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    'size': size.toTfJson(),
    'size_unit': sizeUnit.toTfJson(),
  };
}

/// Typed helper for the `row_level_permission_data_set` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetRowLevelPermissionDataSet {
  const QuicksightDataSetRowLevelPermissionDataSet({
    required this.arn,
    this.formatVersion,
    this.namespace,
    required this.permissionPolicy,
    this.status,
  });

  final TfArg<String> arn;

  final TfArg<String>? formatVersion;

  final TfArg<String>? namespace;

  final TfArg<String> permissionPolicy;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (formatVersion != null) 'format_version': formatVersion!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    'permission_policy': permissionPolicy.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Typed helper for the `row_level_permission_tag_configuration` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetRowLevelPermissionTagConfiguration {
  const QuicksightDataSetRowLevelPermissionTagConfiguration({
    this.status,
    required this.tagRules,
  });

  final TfArg<String>? status;

  final List<QuicksightDataSetRowLevelPermissionTagConfigurationTagRules>
  tagRules;

  Map<String, Object?> encode() => {
    if (status != null) 'status': status!.toTfJson(),
    'tag_rules': [for (final e in tagRules) e.encode()],
  };
}

/// Typed helper for the `row_level_permission_tag_configuration.tag_rules` block of
/// `aws_quicksight_data_set` (derived from provider schema).
@immutable
final class QuicksightDataSetRowLevelPermissionTagConfigurationTagRules {
  const QuicksightDataSetRowLevelPermissionTagConfigurationTagRules({
    required this.columnName,
    this.matchAllValue,
    required this.tagKey,
    this.tagMultiValueDelimiter,
  });

  final TfArg<String> columnName;

  final TfArg<String>? matchAllValue;

  final TfArg<String> tagKey;

  final TfArg<String>? tagMultiValueDelimiter;

  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    if (matchAllValue != null) 'match_all_value': matchAllValue!.toTfJson(),
    'tag_key': tagKey.toTfJson(),
    if (tagMultiValueDelimiter != null)
      'tag_multi_value_delimiter': tagMultiValueDelimiter!.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_data_set`.
final class AwsQuicksightDataSet extends Resource {
  static const String tfType = 'aws_quicksight_data_set';

  AwsQuicksightDataSet({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSetId,
    required TfArg<String> importMode,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? useAs,
    List<QuicksightDataSetColumnGroups>? columnGroups,
    List<QuicksightDataSetColumnLevelPermissionRules>?
    columnLevelPermissionRules,
    QuicksightDataSetDataSetUsageConfiguration? dataSetUsageConfiguration,
    List<QuicksightDataSetFieldFolders>? fieldFolders,
    List<QuicksightDataSetLogicalTableMap>? logicalTableMap,
    List<QuicksightDataSetPermissions>? permissions,
    List<QuicksightDataSetPhysicalTableMap>? physicalTableMap,
    QuicksightDataSetRefreshProperties? refreshProperties,
    QuicksightDataSetRowLevelPermissionDataSet? rowLevelPermissionDataSet,
    QuicksightDataSetRowLevelPermissionTagConfiguration?
    rowLevelPermissionTagConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'data_set_id': dataSetId,
           'import_mode': importMode,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (useAs != null) 'use_as': useAs,
           if (columnGroups != null)
             'column_groups': TfArg.literal([
               for (final e in columnGroups) e.encode(),
             ]),
           if (columnLevelPermissionRules != null)
             'column_level_permission_rules': TfArg.literal([
               for (final e in columnLevelPermissionRules) e.encode(),
             ]),
           if (dataSetUsageConfiguration != null)
             'data_set_usage_configuration': TfArg.literal(
               dataSetUsageConfiguration.encode(),
             ),
           if (fieldFolders != null)
             'field_folders': TfArg.literal([
               for (final e in fieldFolders) e.encode(),
             ]),
           if (logicalTableMap != null)
             'logical_table_map': TfArg.literal([
               for (final e in logicalTableMap) e.encode(),
             ]),
           if (permissions != null)
             'permissions': TfArg.literal([
               for (final e in permissions) e.encode(),
             ]),
           if (physicalTableMap != null)
             'physical_table_map': TfArg.literal([
               for (final e in physicalTableMap) e.encode(),
             ]),
           if (refreshProperties != null)
             'refresh_properties': TfArg.literal(refreshProperties.encode()),
           if (rowLevelPermissionDataSet != null)
             'row_level_permission_data_set': TfArg.literal(
               rowLevelPermissionDataSet.encode(),
             ),
           if (rowLevelPermissionTagConfiguration != null)
             'row_level_permission_tag_configuration': TfArg.literal(
               rowLevelPermissionTagConfiguration.encode(),
             ),
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

  /// Reference to `output_columns` attribute.
  TfRef<List<Map<String, Object?>>> get outputColumns =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'output_columns');
}
