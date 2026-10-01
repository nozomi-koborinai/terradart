// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_catalog_table`.
const Set<String> _awsGlueCatalogTableSensitive = <String>{};

/// Typed helper for the `open_table_format_input` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInput {
  const GlueCatalogTableOpenTableFormatInput({required this.icebergInput});

  final GlueCatalogTableIcebergInput icebergInput;

  Map<String, Object?> encode() => {'iceberg_input': icebergInput.encode()};
}

/// Typed helper for the `open_table_format_input.iceberg_input` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableIcebergInput {
  const GlueCatalogTableIcebergInput({
    required this.metadataOperation,
    this.version,
    this.icebergTableInput,
  });

  final TfArg<GlueCatalogTableMetadataOperation> metadataOperation;

  final TfArg<String>? version;

  final GlueCatalogTableIcebergTableInput? icebergTableInput;

  Map<String, Object?> encode() => {
    'metadata_operation': metadataOperation.toTfJson(),
    'version': ?version?.toTfJson(),
    'iceberg_table_input': ?icebergTableInput?.encode(),
  };
}

/// `metadata_operation` — derived from the provider schema description.
enum GlueCatalogTableMetadataOperation implements TerraformEnum {
  create('CREATE');

  const GlueCatalogTableMetadataOperation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableIcebergTableInput {
  const GlueCatalogTableIcebergTableInput({
    required this.location,
    this.properties,
    this.partitionSpec,
    required this.schema,
    this.sortOrder,
  });

  final TfArg<String> location;

  final TfArg<Map<String, String>>? properties;

  final GlueCatalogTablePartitionSpec? partitionSpec;

  final GlueCatalogTableIcebergTableInputSchema schema;

  final GlueCatalogTableSortOrder? sortOrder;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'partition_spec': ?partitionSpec?.encode(),
    'schema': schema.encode(),
    'sort_order': ?sortOrder?.encode(),
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.partition_spec` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTablePartitionSpec {
  const GlueCatalogTablePartitionSpec({this.specId, required this.fields});

  final TfArg<num>? specId;

  final List<GlueCatalogTablePartitionSpecFields> fields;

  Map<String, Object?> encode() => {
    'spec_id': ?specId?.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.partition_spec.fields` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTablePartitionSpecFields {
  const GlueCatalogTablePartitionSpecFields({
    this.fieldId,
    required this.name,
    required this.sourceId,
    required this.transform,
  });

  final TfArg<num>? fieldId;

  final TfArg<String> name;

  final TfArg<num> sourceId;

  final TfArg<String> transform;

  Map<String, Object?> encode() => {
    'field_id': ?fieldId?.toTfJson(),
    'name': name.toTfJson(),
    'source_id': sourceId.toTfJson(),
    'transform': transform.toTfJson(),
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.schema` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableIcebergTableInputSchema {
  const GlueCatalogTableIcebergTableInputSchema({
    this.identifierFieldIds,
    this.schemaId,
    this.type,
    required this.fields,
  });

  final TfArg<List<num>>? identifierFieldIds;

  final TfArg<num>? schemaId;

  final TfArg<GlueCatalogTableSchemaType>? type;

  final List<GlueCatalogTableSchemaFields> fields;

  Map<String, Object?> encode() => {
    'identifier_field_ids': ?identifierFieldIds?.toTfJson(),
    'schema_id': ?schemaId?.toTfJson(),
    'type': ?type?.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum GlueCatalogTableSchemaType implements TerraformEnum {
  struct('struct');

  const GlueCatalogTableSchemaType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.schema.fields` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSchemaFields {
  const GlueCatalogTableSchemaFields({
    this.doc,
    required this.id,
    this.initialDefault,
    required this.name,
    required this.required,
    required this.type,
    this.writeDefault,
  });

  final TfArg<String>? doc;

  final TfArg<num> id;

  final TfArg<String>? initialDefault;

  final TfArg<String> name;

  final TfArg<bool> required;

  final TfArg<String> type;

  final TfArg<String>? writeDefault;

  Map<String, Object?> encode() => {
    'doc': ?doc?.toTfJson(),
    'id': id.toTfJson(),
    'initial_default': ?initialDefault?.toTfJson(),
    'name': name.toTfJson(),
    'required': required.toTfJson(),
    'type': type.toTfJson(),
    'write_default': ?writeDefault?.toTfJson(),
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.sort_order` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSortOrder {
  const GlueCatalogTableSortOrder({
    required this.orderId,
    required this.fields,
  });

  final TfArg<num> orderId;

  final List<GlueCatalogTableSortOrderFields> fields;

  Map<String, Object?> encode() => {
    'order_id': orderId.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.sort_order.fields` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSortOrderFields {
  const GlueCatalogTableSortOrderFields({
    required this.direction,
    required this.nullOrder,
    required this.sourceId,
    required this.transform,
  });

  final TfArg<GlueCatalogTableDirection> direction;

  final TfArg<GlueCatalogTableNullOrder> nullOrder;

  final TfArg<num> sourceId;

  final TfArg<String> transform;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'null_order': nullOrder.toTfJson(),
    'source_id': sourceId.toTfJson(),
    'transform': transform.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum GlueCatalogTableDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const GlueCatalogTableDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `null_order` — derived from the provider schema description.
enum GlueCatalogTableNullOrder implements TerraformEnum {
  nullsFirst('nulls-first'),
  nullsLast('nulls-last');

  const GlueCatalogTableNullOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `partition_index` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTablePartitionIndex {
  const GlueCatalogTablePartitionIndex({
    required this.indexName,
    required this.keys,
  });

  final TfArg<String> indexName;

  final TfArg<List<String>> keys;

  Map<String, Object?> encode() => {
    'index_name': indexName.toTfJson(),
    'keys': keys.toTfJson(),
  };
}

/// Typed helper for the `partition_keys` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTablePartitionKeys {
  const GlueCatalogTablePartitionKeys({
    this.comment,
    required this.name,
    this.parameters,
    this.type,
  });

  final TfArg<String>? comment;

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableStorageDescriptor {
  const GlueCatalogTableStorageDescriptor({
    this.additionalLocations,
    this.bucketColumns,
    this.compressed,
    this.inputFormat,
    this.location,
    this.numberOfBuckets,
    this.outputFormat,
    this.parameters,
    this.storedAsSubDirectories,
    this.columns,
    this.schemaReference,
    this.serDeInfo,
    this.skewedInfo,
    this.sortColumns,
  });

  final TfArg<List<String>>? additionalLocations;

  final TfArg<List<String>>? bucketColumns;

  final TfArg<bool>? compressed;

  final TfArg<String>? inputFormat;

  final TfArg<String>? location;

  final TfArg<num>? numberOfBuckets;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<bool>? storedAsSubDirectories;

  final List<GlueCatalogTableColumns>? columns;

  final GlueCatalogTableSchemaReference? schemaReference;

  final GlueCatalogTableSerDeInfo? serDeInfo;

  final GlueCatalogTableSkewedInfo? skewedInfo;

  final List<GlueCatalogTableSortColumns>? sortColumns;

  Map<String, Object?> encode() => {
    'additional_locations': ?additionalLocations?.toTfJson(),
    'bucket_columns': ?bucketColumns?.toTfJson(),
    'compressed': ?compressed?.toTfJson(),
    'input_format': ?inputFormat?.toTfJson(),
    'location': ?location?.toTfJson(),
    'number_of_buckets': ?numberOfBuckets?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'stored_as_sub_directories': ?storedAsSubDirectories?.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
    'schema_reference': ?schemaReference?.encode(),
    'ser_de_info': ?serDeInfo?.encode(),
    'skewed_info': ?skewedInfo?.encode(),
    if (sortColumns != null)
      'sort_columns': [for (final e in sortColumns!) e.encode()],
  };
}

/// Typed helper for the `storage_descriptor.columns` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableColumns {
  const GlueCatalogTableColumns({
    this.comment,
    required this.name,
    this.parameters,
    this.type,
  });

  final TfArg<String>? comment;

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.schema_reference` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSchemaReference {
  const GlueCatalogTableSchemaReference({
    required this.schema,
    required this.schemaVersionNumber,
  });

  final GlueCatalogTableSchema schema;

  final TfArg<num> schemaVersionNumber;

  Map<String, Object?> encode() => {
    ...schema.encode(),
    'schema_version_number': schemaVersionNumber.toTfJson(),
  };
}

/// Exactly one of `schema_id`, `schema_version_id` on the `storage_descriptor.schema_reference` block of `aws_glue_catalog_table`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.schemaId(...)`.
sealed class GlueCatalogTableSchema {
  const GlueCatalogTableSchema();

  /// Sets `schema_id`.
  const factory GlueCatalogTableSchema.schemaId(
    GlueCatalogTableSchemaId schemaId,
  ) = GlueCatalogTableSchemaIdChoice;

  /// Sets `schema_version_id`.
  const factory GlueCatalogTableSchema.schemaVersionId(
    TfArg<String> schemaVersionId,
  ) = GlueCatalogTableSchemaVersionId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GlueCatalogTableSchema.schemaId] choice: sets `schema_id`.
final class GlueCatalogTableSchemaIdChoice extends GlueCatalogTableSchema {
  const GlueCatalogTableSchemaIdChoice(this.schemaId);

  final GlueCatalogTableSchemaId schemaId;

  @override
  String get blockKey => 'schema_id';

  @override
  Map<String, Object?> encode() => {'schema_id': schemaId.encode()};
}

/// The [GlueCatalogTableSchema.schemaVersionId] choice: sets `schema_version_id`.
final class GlueCatalogTableSchemaVersionId extends GlueCatalogTableSchema {
  const GlueCatalogTableSchemaVersionId(this.schemaVersionId);

  final TfArg<String> schemaVersionId;

  @override
  String get blockKey => 'schema_version_id';

  @override
  Map<String, Object?> encode() => {
    'schema_version_id': schemaVersionId.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.schema_reference.schema_id` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSchemaId {
  const GlueCatalogTableSchemaId({this.registryName, required this.schema});

  final TfArg<String>? registryName;

  final GlueCatalogTableSchemaIdSchema schema;

  Map<String, Object?> encode() => {
    'registry_name': ?registryName?.toTfJson(),
    ...schema.encode(),
  };
}

/// Exactly one of `schema_arn`, `schema_name` on the `storage_descriptor.schema_reference.schema_id` block of `aws_glue_catalog_table`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.schemaArn(...)`.
sealed class GlueCatalogTableSchemaIdSchema {
  const GlueCatalogTableSchemaIdSchema();

  /// Sets `schema_arn`.
  const factory GlueCatalogTableSchemaIdSchema.schemaArn(
    TfArg<String> schemaArn,
  ) = GlueCatalogTableSchemaIdSchemaArn;

  /// Sets `schema_name`.
  const factory GlueCatalogTableSchemaIdSchema.schemaName(
    TfArg<String> schemaName,
  ) = GlueCatalogTableSchemaIdSchemaName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GlueCatalogTableSchemaIdSchema.schemaArn] choice: sets `schema_arn`.
final class GlueCatalogTableSchemaIdSchemaArn
    extends GlueCatalogTableSchemaIdSchema {
  const GlueCatalogTableSchemaIdSchemaArn(this.schemaArn);

  final TfArg<String> schemaArn;

  @override
  String get blockKey => 'schema_arn';

  @override
  Map<String, Object?> encode() => {'schema_arn': schemaArn.toTfJson()};
}

/// The [GlueCatalogTableSchemaIdSchema.schemaName] choice: sets `schema_name`.
final class GlueCatalogTableSchemaIdSchemaName
    extends GlueCatalogTableSchemaIdSchema {
  const GlueCatalogTableSchemaIdSchemaName(this.schemaName);

  final TfArg<String> schemaName;

  @override
  String get blockKey => 'schema_name';

  @override
  Map<String, Object?> encode() => {'schema_name': schemaName.toTfJson()};
}

/// Typed helper for the `storage_descriptor.ser_de_info` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSerDeInfo {
  const GlueCatalogTableSerDeInfo({
    this.name,
    this.parameters,
    this.serializationLibrary,
  });

  final TfArg<String>? name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String>? serializationLibrary;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'serialization_library': ?serializationLibrary?.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.skewed_info` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSkewedInfo {
  const GlueCatalogTableSkewedInfo({
    this.skewedColumnNames,
    this.skewedColumnValueLocationMaps,
    this.skewedColumnValues,
  });

  final TfArg<List<String>>? skewedColumnNames;

  final TfArg<Map<String, String>>? skewedColumnValueLocationMaps;

  final TfArg<List<String>>? skewedColumnValues;

  Map<String, Object?> encode() => {
    'skewed_column_names': ?skewedColumnNames?.toTfJson(),
    'skewed_column_value_location_maps': ?skewedColumnValueLocationMaps
        ?.toTfJson(),
    'skewed_column_values': ?skewedColumnValues?.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.sort_columns` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableSortColumns {
  const GlueCatalogTableSortColumns({
    required this.column,
    required this.sortOrder,
  });

  final TfArg<String> column;

  final TfArg<num> sortOrder;

  Map<String, Object?> encode() => {
    'column': column.toTfJson(),
    'sort_order': sortOrder.toTfJson(),
  };
}

/// Typed helper for the `target_table` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableTargetTable {
  const GlueCatalogTableTargetTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    this.region,
  });

  final TfArg<String> catalogId;

  final TfArg<String> databaseName;

  final TfArg<String> name;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    'catalog_id': catalogId.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'name': name.toTfJson(),
    'region': ?region?.toTfJson(),
  };
}

/// Typed helper for the `view_definition` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableViewDefinition {
  const GlueCatalogTableViewDefinition({
    this.definer,
    this.isProtected,
    this.lastRefreshType,
    this.refreshSeconds,
    this.subObjectVersionIds,
    this.subObjects,
    this.viewVersionId,
    this.viewVersionToken,
    this.representations,
  });

  final TfArg<String>? definer;

  final TfArg<bool>? isProtected;

  final TfArg<GlueCatalogTableLastRefreshType>? lastRefreshType;

  final TfArg<num>? refreshSeconds;

  final TfArg<List<num>>? subObjectVersionIds;

  final TfArg<List<String>>? subObjects;

  final TfArg<num>? viewVersionId;

  final TfArg<String>? viewVersionToken;

  final List<GlueCatalogTableRepresentations>? representations;

  Map<String, Object?> encode() => {
    'definer': ?definer?.toTfJson(),
    'is_protected': ?isProtected?.toTfJson(),
    'last_refresh_type': ?lastRefreshType?.toTfJson(),
    'refresh_seconds': ?refreshSeconds?.toTfJson(),
    'sub_object_version_ids': ?subObjectVersionIds?.toTfJson(),
    'sub_objects': ?subObjects?.toTfJson(),
    'view_version_id': ?viewVersionId?.toTfJson(),
    'view_version_token': ?viewVersionToken?.toTfJson(),
    if (representations != null)
      'representations': [for (final e in representations!) e.encode()],
  };
}

/// `last_refresh_type` — derived from the provider schema description.
enum GlueCatalogTableLastRefreshType implements TerraformEnum {
  full('FULL'),
  incremental('INCREMENTAL');

  const GlueCatalogTableLastRefreshType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `view_definition.representations` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableRepresentations {
  const GlueCatalogTableRepresentations({
    this.dialect,
    this.dialectVersion,
    this.validationConnection,
    this.viewExpandedText,
    this.viewOriginalText,
  });

  final TfArg<GlueCatalogTableDialect>? dialect;

  final TfArg<String>? dialectVersion;

  final TfArg<String>? validationConnection;

  final TfArg<String>? viewExpandedText;

  final TfArg<String>? viewOriginalText;

  Map<String, Object?> encode() => {
    'dialect': ?dialect?.toTfJson(),
    'dialect_version': ?dialectVersion?.toTfJson(),
    'validation_connection': ?validationConnection?.toTfJson(),
    'view_expanded_text': ?viewExpandedText?.toTfJson(),
    'view_original_text': ?viewOriginalText?.toTfJson(),
  };
}

/// `dialect` — derived from the provider schema description.
enum GlueCatalogTableDialect implements TerraformEnum {
  redshift('REDSHIFT'),
  athena('ATHENA'),
  spark('SPARK');

  const GlueCatalogTableDialect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_glue_catalog_table`.
final class AwsGlueCatalogTable extends Resource {
  static const String tfType = 'aws_glue_catalog_table';

  AwsGlueCatalogTable({
    required super.localName,
    TfArg<String>? catalogId,
    required TfArg<String> databaseName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? owner,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    TfArg<num>? retention,
    TfArg<String>? tableType,
    TfArg<String>? viewExpandedText,
    TfArg<String>? viewOriginalText,
    GlueCatalogTableOpenTableFormatInput? openTableFormatInput,
    List<GlueCatalogTablePartitionIndex>? partitionIndex,
    List<GlueCatalogTablePartitionKeys>? partitionKeys,
    GlueCatalogTableStorageDescriptor? storageDescriptor,
    GlueCatalogTableTargetTable? targetTable,
    GlueCatalogTableViewDefinition? viewDefinition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'database_name': databaseName,
           'description': ?description,
           'name': name,
           'owner': ?owner,
           'parameters': ?parameters,
           'region': ?region,
           'retention': ?retention,
           'table_type': ?tableType,
           'view_expanded_text': ?viewExpandedText,
           'view_original_text': ?viewOriginalText,
           if (openTableFormatInput != null)
             'open_table_format_input': TfArg.literal(
               openTableFormatInput.encode(),
             ),
           if (partitionIndex != null)
             'partition_index': TfArg.literal([
               for (final e in partitionIndex) e.encode(),
             ]),
           if (partitionKeys != null)
             'partition_keys': TfArg.literal([
               for (final e in partitionKeys) e.encode(),
             ]),
           if (storageDescriptor != null)
             'storage_descriptor': TfArg.literal(storageDescriptor.encode()),
           if (targetTable != null)
             'target_table': TfArg.literal(targetTable.encode()),
           if (viewDefinition != null)
             'view_definition': TfArg.literal(viewDefinition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueCatalogTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueCatalogTable>`.
  RefTo<AwsGlueCatalogTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention` attribute.
  TfRef<num> get retention => TfRef.attribute<num>(this, 'retention');

  /// Reference to `table_type` attribute.
  TfRef<String> get tableType => TfRef.attribute<String>(this, 'table_type');

  /// Reference to `view_expanded_text` attribute.
  TfRef<String> get viewExpandedText =>
      TfRef.attribute<String>(this, 'view_expanded_text');

  /// Reference to `view_original_text` attribute.
  TfRef<String> get viewOriginalText =>
      TfRef.attribute<String>(this, 'view_original_text');
}
