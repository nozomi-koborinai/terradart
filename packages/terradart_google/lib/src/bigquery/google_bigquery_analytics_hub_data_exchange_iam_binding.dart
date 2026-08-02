// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange_iam_binding`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery Analytics Hub
/// data exchange.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBigqueryAnalyticsHubDataExchangeIamMember] for additive grants.
final class GoogleBigqueryAnalyticsHubDataExchangeIamBinding extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_data_exchange_iam_binding';

  GoogleBigqueryAnalyticsHubDataExchangeIamBinding({
    required super.localName,
    required TfArg<String> dataExchangeId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           if (location != null) 'location': location,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
