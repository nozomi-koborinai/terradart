// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_catalog.dart'
    show GoogleBiglakeHiveCatalog;

/// Sensitive field paths for `google_biglake_hive_catalog_iam_policy`.
const Set<String> _googleBiglakeHiveCatalogIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_catalog_iam_policy`.
///
/// Authoritative IAM policy for a Biglake Hive Catalog.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleBiglakeHiveCatalogIamMember] for additive grants.
final class GoogleBiglakeHiveCatalogIamPolicy extends Resource {
  static const String tfType = 'google_biglake_hive_catalog_iam_policy';

  GoogleBiglakeHiveCatalogIamPolicy(
    super.localName, {
    required RefTo<GoogleBiglakeHiveCatalog> catalog,
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
      _googleBiglakeHiveCatalogIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveCatalogIamPolicy>`.
  RefTo<GoogleBiglakeHiveCatalogIamPolicy> get ref => RefTo.of(this);

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
