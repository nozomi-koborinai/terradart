// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicyv2_data_policy_iam_policy`.
const Set<String> _googleBigqueryDatapolicyv2DataPolicyIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_datapolicyv2_data_policy_iam_policy`.
///
/// Authoritative IAM policy for an entire BigQuery Data Policy V2 resource.
///
/// Replaces the data policy's whole IAM policy. Prefer
/// [GoogleBigqueryDatapolicyv2DataPolicyIamMember] when an additive grant is
/// enough.
final class GoogleBigqueryDatapolicyv2DataPolicyIamPolicy extends Resource {
  static const String tfType =
      'google_bigquery_datapolicyv2_data_policy_iam_policy';

  GoogleBigqueryDatapolicyv2DataPolicyIamPolicy({
    required super.localName,
    required TfArg<String> dataPolicyId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicyId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyv2DataPolicyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
