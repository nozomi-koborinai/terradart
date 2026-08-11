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

  GoogleOrganizationIamPolicy({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'org_id': orgId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
