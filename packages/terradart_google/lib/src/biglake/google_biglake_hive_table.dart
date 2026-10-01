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
    'comment': ?comment?.toTfJson(),
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

  final TfArg<List<String>>? bucketCols;

  final TfArg<bool>? compressed;

  final TfArg<String>? inputFormat;

  final TfArg<String>? locationUri;

  final TfArg<num>? numBuckets;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<bool>? storedAsSubDirs;

  final List<BiglakeHiveTableColumns> columns;

  final BiglakeHiveTableSerdeInfo? serdeInfo;

  final BiglakeHiveTableSkewedInfo? skewedInfo;

  final List<BiglakeHiveTableSortCols>? sortCols;

  Map<String, Object?> encode() => {
    'bucket_cols': ?bucketCols?.toTfJson(),
    'compressed': ?compressed?.toTfJson(),
    'input_format': ?inputFormat?.toTfJson(),
    'location_uri': ?locationUri?.toTfJson(),
    'num_buckets': ?numBuckets?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'stored_as_sub_dirs': ?storedAsSubDirs?.toTfJson(),
    'columns': [for (final e in columns) e.encode()],
    'serde_info': ?serdeInfo?.encode(),
    'skewed_info': ?skewedInfo?.encode(),
    if (sortCols != null) 'sort_cols': [for (final e in sortCols!) e.encode()],
  };
}

/// Typed helper for the `storage_descriptor.columns` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableColumns {
  const BiglakeHiveTableColumns({
    this.comment,
    required this.name,
    required this.type,
  });

  final TfArg<String>? comment;

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.serde_info` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableSerdeInfo {
  const BiglakeHiveTableSerdeInfo({
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

  final BiglakeHiveTableSerdeType? serdeType;

  final TfArg<String> serializationLib;

  final TfArg<String>? serializerClass;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'deserializer_class': ?deserializerClass?.toTfJson(),
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'serde_type': ?serdeType?.toTfJson(),
    'serialization_lib': serializationLib.toTfJson(),
    'serializer_class': ?serializerClass?.toTfJson(),
  };
}

/// `serde_type` — derived from the provider schema description.
extension type const BiglakeHiveTableSerdeType._(TfArg<String> _)
    implements TfArg<String> {
  BiglakeHiveTableSerdeType.variable(String name)
    : this._(TfArg.variable(name));
  BiglakeHiveTableSerdeType.expression(String template)
    : this._(TfArg.expression(template));
  const BiglakeHiveTableSerdeType.arg(TfArg<String> arg) : this._(arg);

  static const serdeTypeUnspecified = BiglakeHiveTableSerdeType._(
    TfArgLiteral('SERDE_TYPE_UNSPECIFIED'),
  );
  static const hive = BiglakeHiveTableSerdeType._(TfArgLiteral('HIVE'));
  static const schemaRegistry = BiglakeHiveTableSerdeType._(
    TfArgLiteral('SCHEMA_REGISTRY'),
  );

  static const List<BiglakeHiveTableSerdeType> values = [
    serdeTypeUnspecified,
    hive,
    schemaRegistry,
  ];
}

/// Typed helper for the `storage_descriptor.skewed_info` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableSkewedInfo {
  const BiglakeHiveTableSkewedInfo({
    required this.skewedColNames,
    required this.skewedColValues,
    required this.skewedKeyValuesLocations,
  });

  final TfArg<List<String>> skewedColNames;

  final List<BiglakeHiveTableSkewedColValues> skewedColValues;

  final List<BiglakeHiveTableSkewedKeyValuesLocations> skewedKeyValuesLocations;

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
final class BiglakeHiveTableSkewedColValues {
  const BiglakeHiveTableSkewedColValues({required this.values});

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `storage_descriptor.skewed_info.skewed_key_values_locations` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableSkewedKeyValuesLocations {
  const BiglakeHiveTableSkewedKeyValuesLocations({
    required this.location,
    required this.values,
  });

  final TfArg<String> location;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.sort_cols` block of
/// `google_biglake_hive_table` (derived from provider schema).
@immutable
final class BiglakeHiveTableSortCols {
  const BiglakeHiveTableSortCols({required this.col, required this.order});

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

  GoogleBiglakeHiveTable(
    super.localName, {
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
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'name': name,
           'parameters': ?parameters,
           'project': ?project,
           'view_expanded_text': ?viewExpandedText,
           'view_original_text': ?viewOriginalText,
           if (partitionKeys != null)
             'partition_keys': TfArg.literal([
               for (final e in partitionKeys) e.encode(),
             ]),
           'storage_descriptor': TfArg.literal(storageDescriptor.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveTable>`.
  RefTo<GoogleBiglakeHiveTable> get ref => RefTo.of(this);
}
