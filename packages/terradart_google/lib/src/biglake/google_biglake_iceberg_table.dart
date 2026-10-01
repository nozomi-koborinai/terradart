// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_catalog.dart'
    show GoogleBiglakeIcebergCatalog;
import '../biglake/google_biglake_iceberg_namespace.dart'
    show GoogleBiglakeIcebergNamespace;

/// Sensitive field paths for `google_biglake_iceberg_table`.
const Set<String> _googleBiglakeIcebergTableSensitive = <String>{};

/// Typed helper for the `partition_spec` block of
/// `google_biglake_iceberg_table` (derived from provider schema).
@immutable
final class BiglakeIcebergTablePartitionSpec {
  const BiglakeIcebergTablePartitionSpec({required this.fields});

  final List<BiglakeIcebergTablePartitionSpecFields> fields;

  Map<String, Object?> encode() => {
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `partition_spec.fields` block of
/// `google_biglake_iceberg_table` (derived from provider schema).
@immutable
final class BiglakeIcebergTablePartitionSpecFields {
  const BiglakeIcebergTablePartitionSpecFields({
    required this.name,
    required this.sourceId,
    required this.transform,
  });

  final TfArg<String> name;

  final TfArg<num> sourceId;

  final TfArg<String> transform;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'source_id': sourceId.toTfJson(),
    'transform': transform.toTfJson(),
  };
}

/// Typed helper for the `schema` block of
/// `google_biglake_iceberg_table` (derived from provider schema).
@immutable
final class BiglakeIcebergTableSchema {
  const BiglakeIcebergTableSchema({
    this.identifierFieldIds,
    this.type,
    required this.fields,
  });

  final TfArg<List<num>>? identifierFieldIds;

  final TfArg<String>? type;

  final List<BiglakeIcebergTableSchemaFields> fields;

  Map<String, Object?> encode() => {
    'identifier_field_ids': ?identifierFieldIds?.toTfJson(),
    'type': ?type?.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `schema.fields` block of
/// `google_biglake_iceberg_table` (derived from provider schema).
@immutable
final class BiglakeIcebergTableSchemaFields {
  const BiglakeIcebergTableSchemaFields({
    this.doc,
    required this.id,
    required this.name,
    required this.required,
    required this.type,
  });

  final TfArg<String>? doc;

  final TfArg<num> id;

  final TfArg<String> name;

  final TfArg<bool> required;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'doc': ?doc?.toTfJson(),
    'id': id.toTfJson(),
    'name': name.toTfJson(),
    'required': required.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `sort_order` block of
/// `google_biglake_iceberg_table` (derived from provider schema).
@immutable
final class BiglakeIcebergTableSortOrder {
  const BiglakeIcebergTableSortOrder({required this.fields});

  final List<BiglakeIcebergTableSortOrderFields> fields;

  Map<String, Object?> encode() => {
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `sort_order.fields` block of
/// `google_biglake_iceberg_table` (derived from provider schema).
@immutable
final class BiglakeIcebergTableSortOrderFields {
  const BiglakeIcebergTableSortOrderFields({
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

/// Factory wrapper for `google_biglake_iceberg_table`.
///
/// IcebergTables are the primary objects in an IcebergCatalog.
///
/// Iceberg table under a [GoogleBiglakeIcebergNamespace].
///
/// Pass [schema] as a nested-block Map (`type` / `fields` / optional
/// `identifier_field_ids`). [location] is the table's GCS path
/// (`gs://bucket/namespace/table`). Enable `biglake.googleapis.com`
/// before apply.
final class GoogleBiglakeIcebergTable extends Resource {
  static const String tfType = 'google_biglake_iceberg_table';

  GoogleBiglakeIcebergTable({
    required super.localName,
    required RefTo<GoogleBiglakeIcebergCatalog> catalog,
    required RefTo<GoogleBiglakeIcebergNamespace> namespace,
    required TfArg<String> name,
    TfArg<String>? location,
    required BiglakeIcebergTableSchema schema,
    BiglakeIcebergTablePartitionSpec? partitionSpec,
    BiglakeIcebergTableSortOrder? sortOrder,
    TfArg<Map<String, String>>? properties,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog.encodeAs('name'),
           'namespace': namespace.encodeAs('namespace_id'),
           'name': name,
           'location': ?location,
           'schema': TfArg.literal(schema.encode()),
           if (partitionSpec != null)
             'partition_spec': TfArg.literal(partitionSpec.encode()),
           if (sortOrder != null)
             'sort_order': TfArg.literal(sortOrder.encode()),
           'properties': ?properties,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeIcebergTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergTable>`.
  RefTo<GoogleBiglakeIcebergTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalogRef => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespaceRef => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get propertiesRef =>
      TfRef.attribute<Map<String, String>>(this, 'properties');
}
