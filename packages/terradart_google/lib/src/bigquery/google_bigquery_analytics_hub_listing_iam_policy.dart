// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_analytics_hub_listing.dart'
    show GoogleBigqueryAnalyticsHubListing;

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
    TfArg<String>? dataExchangeId,
    required RefTo<GoogleBigqueryAnalyticsHubListing> listing,
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
           'data_exchange_id':
               ?(dataExchangeId ?? listing.alsoAs('data_exchange_id')),
           'listing_id': listing.encodeAs('listing_id'),
           'location': ?(location ?? listing.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? listing.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubListingIamPolicy>`.
  RefTo<GoogleBigqueryAnalyticsHubListingIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeIdRef =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `listing_id` attribute.
  TfRef<String> get listingIdRef => TfRef.attribute<String>(this, 'listing_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
