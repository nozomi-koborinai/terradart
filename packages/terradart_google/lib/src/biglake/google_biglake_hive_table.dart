// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_table`.
const Set<String> _googleBiglakeHiveTableSensitive = <String>{};

/// Typed helper for the `partition_keys` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTablePartitionKeys {
  const BiglakeHiveTablePartitionKeys({
    this.comment,
    required this.name,
    required this.type,
  });

  final TfArg<String>? comment;

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (comment != null) 'comment': comment!.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableStorageDescriptor {
  const BiglakeHiveTableStorageDescriptor({
    this.bucketCols,
    this.compressed,
    this.inputFormat,
    this.locationUri,
    this.numBuckets,
    this.outputFormat,
    this.parameters,
    this.storedAsSubDirs,
    required this.columns,
    this.serdeInfo,
    this.skewedInfo,
    this.sortCols,
  });

  final TfArg<List<Object?>>? bucketCols;

  final TfArg<bool>? compressed;

  final TfArg<String>? inputFormat;

  final TfArg<String>? locationUri;

  final TfArg<num>? numBuckets;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<bool>? storedAsSubDirs;

  final List<BiglakeHiveTableStorageDescriptorColumns> columns;

  final BiglakeHiveTableStorageDescriptorSerdeInfo? serdeInfo;

  final BiglakeHiveTableStorageDescriptorSkewedInfo? skewedInfo;

  final List<BiglakeHiveTableStorageDescriptorSortCols>? sortCols;

  Map<String, Object?> encode() => {
    if (bucketCols != null) 'bucket_cols': bucketCols!.toTfJson(),
    if (compressed != null) 'compressed': compressed!.toTfJson(),
    if (inputFormat != null) 'input_format': inputFormat!.toTfJson(),
    if (locationUri != null) 'location_uri': locationUri!.toTfJson(),
    if (numBuckets != null) 'num_buckets': numBuckets!.toTfJson(),
    if (outputFormat != null) 'output_format': outputFormat!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (storedAsSubDirs != null)
      'stored_as_sub_dirs': storedAsSubDirs!.toTfJson(),
    'columns': [for (final e in columns) e.encode()],
    if (serdeInfo != null) 'serde_info': serdeInfo!.encode(),
    if (skewedInfo != null) 'skewed_info': skewedInfo!.encode(),
    if (sortCols != null) 'sort_cols': [for (final e in sortCols!) e.encode()],
  };
}

/// Typed helper for the `storage_descriptor.columns` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableStorageDescriptorColumns {
  const BiglakeHiveTableStorageDescriptorColumns({
    this.comment,
    required this.name,
    required this.type,
  });

  final TfArg<String>? comment;

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (comment != null) 'comment': comment!.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.serde_info` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableStorageDescriptorSerdeInfo {
  const BiglakeHiveTableStorageDescriptorSerdeInfo({
    this.description,
    this.deserializerClass,
    required this.name,
    this.parameters,
    this.serdeType,
    required this.serializationLib,
    this.serializerClass,
  });

  final TfArg<String>? description;

  final TfArg<String>? deserializerClass;

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<BiglakeHiveTableStorageDescriptorSerdeInfoSerdeType>? serdeType;

  final TfArg<String> serializationLib;

  final TfArg<String>? serializerClass;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (deserializerClass != null)
      'deserializer_class': deserializerClass!.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (serdeType != null) 'serde_type': serdeType!.toTfJson(),
    'serialization_lib': serializationLib.toTfJson(),
    if (serializerClass != null)
      'serializer_class': serializerClass!.toTfJson(),
  };
}

/// `serde_type` — derived from the provider schema description.
enum BiglakeHiveTableStorageDescriptorSerdeInfoSerdeType
    implements TerraformEnum {
  serdeTypeUnspecified('SERDE_TYPE_UNSPECIFIED'),
  hive('HIVE'),
  schemaRegistry('SCHEMA_REGISTRY');

  const BiglakeHiveTableStorageDescriptorSerdeInfoSerdeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `storage_descriptor.skewed_info` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableStorageDescriptorSkewedInfo {
  const BiglakeHiveTableStorageDescriptorSkewedInfo({
    required this.skewedColNames,
    required this.skewedColValues,
    required this.skewedKeyValuesLocations,
  });

  final TfArg<List<Object?>> skewedColNames;

  final List<BiglakeHiveTableStorageDescriptorSkewedInfoSkewedColValues>
  skewedColValues;

  final List<
    BiglakeHiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocations
  >
  skewedKeyValuesLocations;

  Map<String, Object?> encode() => {
    'skewed_col_names': skewedColNames.toTfJson(),
    'skewed_col_values': [for (final e in skewedColValues) e.encode()],
    'skewed_key_values_locations': [
      for (final e in skewedKeyValuesLocations) e.encode(),
    ],
  };
}

/// Typed helper for the `storage_descriptor.skewed_info.skewed_col_values` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableStorageDescriptorSkewedInfoSkewedColValues {
  const BiglakeHiveTableStorageDescriptorSkewedInfoSkewedColValues({
    required this.values,
  });

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `storage_descriptor.skewed_info.skewed_key_values_locations` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocations {
  const BiglakeHiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocations({
    required this.location,
    required this.values,
  });

  final TfArg<String> location;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.sort_cols` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableStorageDescriptorSortCols {
  const BiglakeHiveTableStorageDescriptorSortCols({
    required this.col,
    required this.order,
  });

  final TfArg<String> col;

  final TfArg<num> order;

  Map<String, Object?> encode() => {
    'col': col.toTfJson(),
    'order': order.toTfJson(),
  };
}

/// Factory wrapper for `google_biglake_hive_table`.
///
/// Hive Tables in BigLake Metastore that exist within a Hive Catalog and
/// Database.
final class GoogleBiglakeHiveTable extends Resource {
  static const String tfType = 'google_biglake_hive_table';

  GoogleBiglakeHiveTable({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> database,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? project,
    TfArg<String>? viewExpandedText,
    TfArg<String>? viewOriginalText,
    List<BiglakeHiveTablePartitionKeys>? partitionKeys,
    required BiglakeHiveTableStorageDescriptor storageDescriptor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'database': database,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (project != null) 'project': project,
           if (viewExpandedText != null) 'view_expanded_text': viewExpandedText,
           if (viewOriginalText != null) 'view_original_text': viewOriginalText,
           if (partitionKeys != null)
             'partition_keys': TfArg.literal([
               for (final e in partitionKeys) e.encode(),
             ]),
           'storage_descriptor': TfArg.literal(storageDescriptor.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableSensitive;
}
