// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange_iam_policy`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery Analytics Hub data exchange.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigqueryAnalyticsHubDataExchangeIamMember] for single-principal grants.
final class GoogleBigqueryAnalyticsHubDataExchangeIamPolicy extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_data_exchange_iam_policy';

  GoogleBigqueryAnalyticsHubDataExchangeIamPolicy({
    required super.localName,
    required TfArg<String> dataExchangeId,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
