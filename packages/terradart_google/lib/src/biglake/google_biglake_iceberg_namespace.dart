// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_catalog.dart'
    show GoogleBiglakeIcebergCatalog;

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
    required RefTo<GoogleBiglakeIcebergCatalog> catalog,
    required TfArg<String> namespaceId,
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
           'namespace_id': namespaceId,
           'properties': ?properties,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeIcebergNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergNamespace>`.
  RefTo<GoogleBiglakeIcebergNamespace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalogRef => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get propertiesRef =>
      TfRef.attribute<Map<String, String>>(this, 'properties');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceIdRef =>
      TfRef.attribute<String>(this, 'namespace_id');
}
