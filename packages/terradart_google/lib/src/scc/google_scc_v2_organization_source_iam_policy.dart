// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_organization_source_iam_policy`.
const Set<String> _googleSccV2OrganizationSourceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_scc_v2_organization_source_iam_policy`.
///
/// Authoritative IAM policy for a Security Command Center v2 organization source.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleSccV2OrganizationSourceIamMember] for single-principal grants.
final class GoogleSccV2OrganizationSourceIamPolicy extends Resource {
  static const String tfType = 'google_scc_v2_organization_source_iam_policy';

  GoogleSccV2OrganizationSourceIamPolicy({
    required super.localName,
    required TfArg<String> source,
    required TfArg<String> organization,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source,
           'organization': organization,
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2OrganizationSourceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
