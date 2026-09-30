// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../organization/google_organization_iam_policy.dart';

/// Sensitive field paths for `google_organization_iam_policy`.
const Set<String> _googleOrganizationIamPolicySensitive = <String>{};

/// Factory wrapper for `google_organization_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOrganizationIamPolicy extends Data {
  static const String tfType = 'google_organization_iam_policy';

  DataGoogleOrganizationIamPolicy({
    required super.localName,
    required TfArg<String> orgId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'org_id': orgId});

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamPolicySensitive;

  /// A reference to the `google_organization_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleOrganizationIamPolicy>`.
  RefTo<GoogleOrganizationIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');
}
