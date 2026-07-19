// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_namespace`.
const Set<String> _googleBiglakeIcebergNamespaceSensitive = <String>{};

/// Factory wrapper for `google_biglake_iceberg_namespace`.
///
/// IcebergNamespaces are containers for Apache Iceberg Tables within an
/// IcebergCatalog.
///
/// Iceberg namespace inside a [GoogleBiglakeIcebergCatalog].
///
/// [catalog] is the catalog name (GCS bucket name for
/// `CATALOG_TYPE_GCS_BUCKET`). Enable `biglake.googleapis.com` before apply.
final class GoogleBiglakeIcebergNamespace extends Resource {
  static const String tfType = 'google_biglake_iceberg_namespace';

  GoogleBiglakeIcebergNamespace({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> namespaceId,
    TfArg<Map<String, String>>? properties,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace_id': namespaceId,
           if (properties != null) 'properties': properties,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeIcebergNamespaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceIdRef =>
      TfRef.attribute<String>(this, 'namespace_id');
}
