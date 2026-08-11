// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_taxonomy_iam_binding`.
const Set<String> _googleDataCatalogTaxonomyIamBindingSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_taxonomy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Data Catalog taxonomy.
///
/// Replaces the entire member list for that role on the taxonomy. Prefer
/// [GoogleDataCatalogTaxonomyIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleDataCatalogTaxonomyIamBinding extends Resource {
  static const String tfType = 'google_data_catalog_taxonomy_iam_binding';

  GoogleDataCatalogTaxonomyIamBinding({
    required super.localName,
    required TfArg<String> taxonomy,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'taxonomy': taxonomy,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTaxonomyIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
