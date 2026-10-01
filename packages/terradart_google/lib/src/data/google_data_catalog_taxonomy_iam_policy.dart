// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_catalog/google_data_catalog_taxonomy_iam_policy.dart';

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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'project': ?project, 'region': ?region, 'taxonomy': taxonomy},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTaxonomyIamPolicySensitive;

  /// A reference to the `google_data_catalog_taxonomy_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataCatalogTaxonomyIamPolicy>`.
  RefTo<GoogleDataCatalogTaxonomyIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
