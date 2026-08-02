// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_listing_iam_policy`.
const Set<String> _googleBigqueryAnalyticsHubListingIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_listing_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery Analytics Hub listing.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigqueryAnalyticsHubListingIamMember] for single-principal grants.
final class GoogleBigqueryAnalyticsHubListingIamPolicy extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_listing_iam_policy';

  GoogleBigqueryAnalyticsHubListingIamPolicy({
    required super.localName,
    required TfArg<String> dataExchangeId,
    required TfArg<String> listingId,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'listing_id': listingId,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
