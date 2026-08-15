// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_taxonomy_iam_policy`.
const Set<String> _googleDataCatalogTaxonomyIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_taxonomy_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataCatalogTaxonomyIamPolicy extends Data {
  static const String tfType = 'google_data_catalog_taxonomy_iam_policy';

  DataGoogleDataCatalogTaxonomyIamPolicy({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> taxonomy,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'taxonomy': taxonomy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTaxonomyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
