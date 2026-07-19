// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_table`.
const Set<String> _googleBiglakeIcebergTableSensitive = <String>{};

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
    required TfArg<String> catalog,
    required TfArg<String> namespace,
    required TfArg<String> name,
    TfArg<String>? location,
    required TfArg<Map<String, dynamic>> schema,
    TfArg<Map<String, dynamic>>? partitionSpec,
    TfArg<Map<String, dynamic>>? sortOrder,
    TfArg<Map<String, String>>? properties,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace': namespace,
           'name': name,
           if (location != null) 'location': location,
           'schema': schema,
           if (partitionSpec != null) 'partition_spec': partitionSpec,
           if (sortOrder != null) 'sort_order': sortOrder,
           if (properties != null) 'properties': properties,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeIcebergTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
