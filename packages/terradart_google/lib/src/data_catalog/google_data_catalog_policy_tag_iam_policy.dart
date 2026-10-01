// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_policy_tag.dart'
    show GoogleDataCatalogPolicyTag;

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

  GoogleDataCatalogPolicyTagIamPolicy(
    super.localName, {
    required RefTo<GoogleDataCatalogPolicyTag> policyTag,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_tag': policyTag.encodeAs('id'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogPolicyTagIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogPolicyTagIamPolicy>`.
  RefTo<GoogleDataCatalogPolicyTagIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `policy_tag` attribute.
  TfRef<String> get policyTag => TfRef.attribute<String>(this, 'policy_tag');
}
