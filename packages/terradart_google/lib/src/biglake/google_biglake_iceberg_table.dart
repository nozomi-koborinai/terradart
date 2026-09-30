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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace': namespace,
           'name': name,
           'location': ?location,
           'schema': schema,
           'partition_spec': ?partitionSpec,
           'sort_order': ?sortOrder,
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
