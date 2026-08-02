// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_datapolicy_data_policy_iam_binding`.
const Set<String> _googleBigqueryDatapolicyDataPolicyIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_datapolicy_data_policy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery data policy.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBigqueryDatapolicyDataPolicyIamMember] for additive grants.
final class GoogleBigqueryDatapolicyDataPolicyIamBinding extends Resource {
  static const String tfType =
      'google_bigquery_datapolicy_data_policy_iam_binding';

  GoogleBigqueryDatapolicyDataPolicyIamBinding({
    required super.localName,
    required TfArg<String> dataPolicyId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_policy_id': dataPolicyId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDatapolicyDataPolicyIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
