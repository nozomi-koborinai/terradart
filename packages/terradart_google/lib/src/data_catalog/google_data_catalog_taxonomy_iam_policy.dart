// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_taxonomy.dart'
    show GoogleDataCatalogTaxonomy;

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
    required RefTo<GoogleDataCatalogTaxonomy> taxonomy,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'taxonomy': taxonomy.encodeAs('id'),
           'policy_data': policyData,
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTaxonomyIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTaxonomyIamPolicy>`.
  RefTo<GoogleDataCatalogTaxonomyIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `taxonomy` attribute.
  TfRef<String> get taxonomy => TfRef.attribute<String>(this, 'taxonomy');
}
