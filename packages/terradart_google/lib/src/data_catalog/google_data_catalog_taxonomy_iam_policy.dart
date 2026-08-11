// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_taxonomy_iam_policy`.
const Set<String> _googleDataCatalogTaxonomyIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_taxonomy_iam_policy`.
///
/// Authoritative IAM policy for an entire Data Catalog taxonomy.
///
/// Replaces the taxonomy's whole IAM policy. Prefer
/// [GoogleDataCatalogTaxonomyIamMember] when an additive grant is enough.
final class GoogleDataCatalogTaxonomyIamPolicy extends Resource {
  static const String tfType = 'google_data_catalog_taxonomy_iam_policy';

  GoogleDataCatalogTaxonomyIamPolicy({
    required super.localName,
    required TfArg<String> taxonomy,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'taxonomy': taxonomy,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTaxonomyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
