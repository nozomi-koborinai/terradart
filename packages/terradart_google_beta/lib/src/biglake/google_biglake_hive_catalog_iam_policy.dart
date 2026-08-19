// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleBiglakeHiveCatalogIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveCatalogIamPolicySensitive;
}
