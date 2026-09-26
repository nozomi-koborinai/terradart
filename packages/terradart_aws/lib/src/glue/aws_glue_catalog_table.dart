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

  final GlueCatalogTableOpenTableFormatInputIcebergInput icebergInput;

  Map<String, Object?> encode() => {'iceberg_input': icebergInput.encode()};
}

/// Typed helper for the `open_table_format_input.iceberg_input` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInput {
  const GlueCatalogTableOpenTableFormatInputIcebergInput({
    required this.metadataOperation,
    this.version,
    this.icebergTableInput,
  });

  final TfArg<String> metadataOperation;

  final TfArg<String>? version;

  final GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInput?
  icebergTableInput;

  Map<String, Object?> encode() => {
    'metadata_operation': metadataOperation.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (icebergTableInput != null)
      'iceberg_table_input': icebergTableInput!.encode(),
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInput {
  const GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInput({
    required this.location,
    this.properties,
    this.partitionSpec,
    required this.schema,
    this.sortOrder,
  });

  final TfArg<String> location;

  final TfArg<Map<String, String>>? properties;

  final GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec?
  partitionSpec;

  final GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema
  schema;

  final GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder?
  sortOrder;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (partitionSpec != null) 'partition_spec': partitionSpec!.encode(),
    'schema': schema.encode(),
    if (sortOrder != null) 'sort_order': sortOrder!.encode(),
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.partition_spec` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec {
  const GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpec({
    this.specId,
    required this.fields,
  });

  final TfArg<num>? specId;

  final List<
    GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFields
  >
  fields;

  Map<String, Object?> encode() => {
    if (specId != null) 'spec_id': specId!.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.partition_spec.fields` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFields {
  const GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFields({
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
    if (fieldId != null) 'field_id': fieldId!.toTfJson(),
    'name': name.toTfJson(),
    'source_id': sourceId.toTfJson(),
    'transform': transform.toTfJson(),
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.schema` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema {
  const GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchema({
    this.identifierFieldIds,
    this.schemaId,
    this.type,
    required this.fields,
  });

  final TfArg<List<Object?>>? identifierFieldIds;

  final TfArg<num>? schemaId;

  final TfArg<String>? type;

  final List<
    GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFields
  >
  fields;

  Map<String, Object?> encode() => {
    if (identifierFieldIds != null)
      'identifier_field_ids': identifierFieldIds!.toTfJson(),
    if (schemaId != null) 'schema_id': schemaId!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.schema.fields` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFields {
  const GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFields({
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
    if (doc != null) 'doc': doc!.toTfJson(),
    'id': id.toTfJson(),
    if (initialDefault != null) 'initial_default': initialDefault!.toTfJson(),
    'name': name.toTfJson(),
    'required': required.toTfJson(),
    'type': type.toTfJson(),
    if (writeDefault != null) 'write_default': writeDefault!.toTfJson(),
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.sort_order` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder {
  const GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrder({
    required this.orderId,
    required this.fields,
  });

  final TfArg<num> orderId;

  final List<
    GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFields
  >
  fields;

  Map<String, Object?> encode() => {
    'order_id': orderId.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `open_table_format_input.iceberg_input.iceberg_table_input.sort_order.fields` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFields {
  const GlueCatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFields({
    required this.direction,
    required this.nullOrder,
    required this.sourceId,
    required this.transform,
  });

  final TfArg<String> direction;

  final TfArg<String> nullOrder;

  final TfArg<num> sourceId;

  final TfArg<String> transform;

  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'null_order': nullOrder.toTfJson(),
    'source_id': sourceId.toTfJson(),
    'transform': transform.toTfJson(),
  };
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

  final TfArg<List<Object?>> keys;

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
    if (comment != null) 'comment': comment!.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
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

  final TfArg<List<Object?>>? additionalLocations;

  final TfArg<List<Object?>>? bucketColumns;

  final TfArg<bool>? compressed;

  final TfArg<String>? inputFormat;

  final TfArg<String>? location;

  final TfArg<num>? numberOfBuckets;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<bool>? storedAsSubDirectories;

  final List<GlueCatalogTableStorageDescriptorColumns>? columns;

  final GlueCatalogTableStorageDescriptorSchemaReference? schemaReference;

  final GlueCatalogTableStorageDescriptorSerDeInfo? serDeInfo;

  final GlueCatalogTableStorageDescriptorSkewedInfo? skewedInfo;

  final List<GlueCatalogTableStorageDescriptorSortColumns>? sortColumns;

  Map<String, Object?> encode() => {
    if (additionalLocations != null)
      'additional_locations': additionalLocations!.toTfJson(),
    if (bucketColumns != null) 'bucket_columns': bucketColumns!.toTfJson(),
    if (compressed != null) 'compressed': compressed!.toTfJson(),
    if (inputFormat != null) 'input_format': inputFormat!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (numberOfBuckets != null)
      'number_of_buckets': numberOfBuckets!.toTfJson(),
    if (outputFormat != null) 'output_format': outputFormat!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (storedAsSubDirectories != null)
      'stored_as_sub_directories': storedAsSubDirectories!.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
    if (schemaReference != null) 'schema_reference': schemaReference!.encode(),
    if (serDeInfo != null) 'ser_de_info': serDeInfo!.encode(),
    if (skewedInfo != null) 'skewed_info': skewedInfo!.encode(),
    if (sortColumns != null)
      'sort_columns': [for (final e in sortColumns!) e.encode()],
  };
}

/// Typed helper for the `storage_descriptor.columns` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableStorageDescriptorColumns {
  const GlueCatalogTableStorageDescriptorColumns({
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
    if (comment != null) 'comment': comment!.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.schema_reference` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableStorageDescriptorSchemaReference {
  const GlueCatalogTableStorageDescriptorSchemaReference({
    this.schemaVersionId,
    required this.schemaVersionNumber,
    this.schemaId,
  });

  final TfArg<String>? schemaVersionId;

  final TfArg<num> schemaVersionNumber;

  final GlueCatalogTableStorageDescriptorSchemaReferenceSchemaId? schemaId;

  Map<String, Object?> encode() => {
    if (schemaVersionId != null)
      'schema_version_id': schemaVersionId!.toTfJson(),
    'schema_version_number': schemaVersionNumber.toTfJson(),
    if (schemaId != null) 'schema_id': schemaId!.encode(),
  };
}

/// Typed helper for the `storage_descriptor.schema_reference.schema_id` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableStorageDescriptorSchemaReferenceSchemaId {
  const GlueCatalogTableStorageDescriptorSchemaReferenceSchemaId({
    this.registryName,
    this.schemaArn,
    this.schemaName,
  });

  final TfArg<String>? registryName;

  final TfArg<String>? schemaArn;

  final TfArg<String>? schemaName;

  Map<String, Object?> encode() => {
    if (registryName != null) 'registry_name': registryName!.toTfJson(),
    if (schemaArn != null) 'schema_arn': schemaArn!.toTfJson(),
    if (schemaName != null) 'schema_name': schemaName!.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.ser_de_info` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableStorageDescriptorSerDeInfo {
  const GlueCatalogTableStorageDescriptorSerDeInfo({
    this.name,
    this.parameters,
    this.serializationLibrary,
  });

  final TfArg<String>? name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String>? serializationLibrary;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (serializationLibrary != null)
      'serialization_library': serializationLibrary!.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.skewed_info` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableStorageDescriptorSkewedInfo {
  const GlueCatalogTableStorageDescriptorSkewedInfo({
    this.skewedColumnNames,
    this.skewedColumnValueLocationMaps,
    this.skewedColumnValues,
  });

  final TfArg<List<Object?>>? skewedColumnNames;

  final TfArg<Map<String, String>>? skewedColumnValueLocationMaps;

  final TfArg<List<Object?>>? skewedColumnValues;

  Map<String, Object?> encode() => {
    if (skewedColumnNames != null)
      'skewed_column_names': skewedColumnNames!.toTfJson(),
    if (skewedColumnValueLocationMaps != null)
      'skewed_column_value_location_maps': skewedColumnValueLocationMaps!
          .toTfJson(),
    if (skewedColumnValues != null)
      'skewed_column_values': skewedColumnValues!.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.sort_columns` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableStorageDescriptorSortColumns {
  const GlueCatalogTableStorageDescriptorSortColumns({
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
    if (region != null) 'region': region!.toTfJson(),
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

  final TfArg<String>? lastRefreshType;

  final TfArg<num>? refreshSeconds;

  final TfArg<List<Object?>>? subObjectVersionIds;

  final TfArg<List<Object?>>? subObjects;

  final TfArg<num>? viewVersionId;

  final TfArg<String>? viewVersionToken;

  final List<GlueCatalogTableViewDefinitionRepresentations>? representations;

  Map<String, Object?> encode() => {
    if (definer != null) 'definer': definer!.toTfJson(),
    if (isProtected != null) 'is_protected': isProtected!.toTfJson(),
    if (lastRefreshType != null)
      'last_refresh_type': lastRefreshType!.toTfJson(),
    if (refreshSeconds != null) 'refresh_seconds': refreshSeconds!.toTfJson(),
    if (subObjectVersionIds != null)
      'sub_object_version_ids': subObjectVersionIds!.toTfJson(),
    if (subObjects != null) 'sub_objects': subObjects!.toTfJson(),
    if (viewVersionId != null) 'view_version_id': viewVersionId!.toTfJson(),
    if (viewVersionToken != null)
      'view_version_token': viewVersionToken!.toTfJson(),
    if (representations != null)
      'representations': [for (final e in representations!) e.encode()],
  };
}

/// Typed helper for the `view_definition.representations` block of
/// `aws_glue_catalog_table` (derived from provider schema).
@immutable
final class GlueCatalogTableViewDefinitionRepresentations {
  const GlueCatalogTableViewDefinitionRepresentations({
    this.dialect,
    this.dialectVersion,
    this.validationConnection,
    this.viewExpandedText,
    this.viewOriginalText,
  });

  final TfArg<String>? dialect;

  final TfArg<String>? dialectVersion;

  final TfArg<String>? validationConnection;

  final TfArg<String>? viewExpandedText;

  final TfArg<String>? viewOriginalText;

  Map<String, Object?> encode() => {
    if (dialect != null) 'dialect': dialect!.toTfJson(),
    if (dialectVersion != null) 'dialect_version': dialectVersion!.toTfJson(),
    if (validationConnection != null)
      'validation_connection': validationConnection!.toTfJson(),
    if (viewExpandedText != null)
      'view_expanded_text': viewExpandedText!.toTfJson(),
    if (viewOriginalText != null)
      'view_original_text': viewOriginalText!.toTfJson(),
  };
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
           if (catalogId != null) 'catalog_id': catalogId,
           'database_name': databaseName,
           if (description != null) 'description': description,
           'name': name,
           if (owner != null) 'owner': owner,
           if (parameters != null) 'parameters': parameters,
           if (region != null) 'region': region,
           if (retention != null) 'retention': retention,
           if (tableType != null) 'table_type': tableType,
           if (viewExpandedText != null) 'view_expanded_text': viewExpandedText,
           if (viewOriginalText != null) 'view_original_text': viewOriginalText,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
