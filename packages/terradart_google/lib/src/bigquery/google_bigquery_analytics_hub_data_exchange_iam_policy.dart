// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_analytics_hub_data_exchange.dart'
    show GoogleBigqueryAnalyticsHubDataExchange;

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
    required RefTo<GoogleBigqueryAnalyticsHubDataExchange> dataExchange,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchange.encodeAs('data_exchange_id'),
           'location': ?(location ?? dataExchange.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? dataExchange.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubDataExchangeIamPolicy>`.
  RefTo<GoogleBigqueryAnalyticsHubDataExchangeIamPolicy> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeIdRef =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
