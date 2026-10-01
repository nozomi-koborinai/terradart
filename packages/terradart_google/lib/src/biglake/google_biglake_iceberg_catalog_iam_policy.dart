// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_catalog.dart'
    show GoogleBiglakeIcebergCatalog;

/// Sensitive field paths for `google_biglake_iceberg_catalog_iam_policy`.
const Set<String> _googleBiglakeIcebergCatalogIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_iceberg_catalog_iam_policy`.
///
/// Authoritative IAM policy for a BigLake Iceberg REST catalog.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergCatalogIamMember] for
/// single-principal grants.
final class GoogleBiglakeIcebergCatalogIamPolicy extends Resource {
  static const String tfType = 'google_biglake_iceberg_catalog_iam_policy';

  GoogleBiglakeIcebergCatalogIamPolicy({
    required super.localName,
    required RefTo<GoogleBiglakeIcebergCatalog> catalog,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': catalog.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? catalog.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergCatalogIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergCatalogIamPolicy>`.
  RefTo<GoogleBiglakeIcebergCatalogIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
