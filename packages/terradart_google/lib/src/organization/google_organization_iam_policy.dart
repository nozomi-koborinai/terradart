// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_iam_policy`.
const Set<String> _googleOrganizationIamPolicySensitive = <String>{};

/// Factory wrapper for `google_organization_iam_policy`.
///
/// Authoritative IAM policy for a GCP organization.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleOrganizationIamMember] for single-principal grants.
final class GoogleOrganizationIamPolicy extends Resource {
  static const String tfType = 'google_organization_iam_policy';

  GoogleOrganizationIamPolicy(
    super.localName, {
    required TfArg<String> orgId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'org_id': orgId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrganizationIamPolicy>`.
  RefTo<GoogleOrganizationIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
