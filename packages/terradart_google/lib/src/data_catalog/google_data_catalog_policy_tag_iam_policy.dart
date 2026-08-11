// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_policy_tag_iam_policy`.
const Set<String> _googleDataCatalogPolicyTagIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_policy_tag_iam_policy`.
///
/// Authoritative IAM policy for a Data Catalog policy tag.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataCatalogPolicyTagIamMember] for single-principal grants.
final class GoogleDataCatalogPolicyTagIamPolicy extends Resource {
  static const String tfType = 'google_data_catalog_policy_tag_iam_policy';

  GoogleDataCatalogPolicyTagIamPolicy({
    required super.localName,
    required TfArg<String> policyTag,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_tag': policyTag, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogPolicyTagIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
