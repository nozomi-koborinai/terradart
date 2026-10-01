// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../scc/google_scc_v2_organization_source.dart'
    show GoogleSccV2OrganizationSource;

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
    required RefTo<GoogleSccV2OrganizationSource> source,
    TfArg<String>? organization,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source.encodeAs('name'),
           'organization': ?(organization ?? source.alsoAs('organization')),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2OrganizationSourceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2OrganizationSourceIamPolicy>`.
  RefTo<GoogleSccV2OrganizationSourceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
