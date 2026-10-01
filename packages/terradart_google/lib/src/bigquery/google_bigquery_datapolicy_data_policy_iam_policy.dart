// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_datapolicy_data_policy.dart'
    show GoogleBigqueryDatapolicyDataPolicy;

/// Sensitive field paths for `google_bigquery_datapolicy_data_policy_iam_policy`.
const Set<String> _googleBigqueryDatapolicyDataPolicyIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_datapolicy_data_policy_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery data policy.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigqueryDatapolicyDataPolicyIamMember] for single-principal grants.
final class GoogleBigqueryDatapolicyDataPolicyIamPolicy extends Resource {
  static const String tfType =
      'google_bigquery_datapolicy_data_policy_iam_policy';

  GoogleBigqueryDatapolicyDataPolicyIamPolicy({
    required super.localName,
    required RefTo<GoogleBigqueryDatapolicyDataPolicy> dataPolicy,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicy.encodeAs('data_policy_id'),
           'policy_data': policyData,
           'location': ?(location ?? dataPolicy.alsoAs('location')),
           'project': ?(project ?? dataPolicy.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyDataPolicyIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatapolicyDataPolicyIamPolicy>`.
  RefTo<GoogleBigqueryDatapolicyDataPolicyIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_policy_id` attribute.
  TfRef<String> get dataPolicyId =>
      TfRef.attribute<String>(this, 'data_policy_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
