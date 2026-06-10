// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_listing_iam_member`.
const Set<String> _googleBigqueryAnalyticsHubListingIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_listing_iam_member`.
final class GoogleBigqueryAnalyticsHubListingIamMember extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_listing_iam_member';

  GoogleBigqueryAnalyticsHubListingIamMember({
    required super.localName,
    required TfArg<String> dataExchangeId,
    required TfArg<String> listingId,
    TfArg<String>? location,
    required TfArg<String> member,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'listing_id': listingId,
           if (location != null) 'location': location,
           'member': member,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
