// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_connection_iam_policy`.
const Set<String> _googleBigqueryConnectionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_connection_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery connection.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigqueryConnectionIamMember] for single-principal grants.
final class GoogleBigqueryConnectionIamPolicy extends Resource {
  static const String tfType = 'google_bigquery_connection_iam_policy';

  GoogleBigqueryConnectionIamPolicy({
    required super.localName,
    required TfArg<String> connectionId,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryConnectionIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
