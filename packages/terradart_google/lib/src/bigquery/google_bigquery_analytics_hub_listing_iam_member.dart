// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_analytics_hub_listing.dart'
    show GoogleBigqueryAnalyticsHubListing;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_analytics_hub_listing_iam_member`.
const Set<String> _googleBigqueryAnalyticsHubListingIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_analytics_hub_listing_iam_member` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingIamMemberCondition {
  const BigqueryAnalyticsHubListingIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_analytics_hub_listing_iam_member`.
final class GoogleBigqueryAnalyticsHubListingIamMember extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_listing_iam_member';

  GoogleBigqueryAnalyticsHubListingIamMember(
    super.localName, {
    TfArg<String>? dataExchangeId,
    required RefTo<GoogleBigqueryAnalyticsHubListing> listing,
    TfArg<String>? location,
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    BigqueryAnalyticsHubListingIamMemberCondition? condition,
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
           'member': member,
           'project': ?(project ?? listing.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubListingIamMember>`.
  RefTo<GoogleBigqueryAnalyticsHubListingIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeId =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `listing_id` attribute.
  TfRef<String> get listingId => TfRef.attribute<String>(this, 'listing_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
