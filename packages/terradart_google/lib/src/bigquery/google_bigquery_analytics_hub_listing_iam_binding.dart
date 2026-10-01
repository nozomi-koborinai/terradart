// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_analytics_hub_listing.dart'
    show GoogleBigqueryAnalyticsHubListing;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_analytics_hub_listing_iam_binding`.
const Set<String> _googleBigqueryAnalyticsHubListingIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_analytics_hub_listing_iam_binding` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingIamBindingCondition {
  const BigqueryAnalyticsHubListingIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_analytics_hub_listing_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery Analytics Hub
/// listing.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBigqueryAnalyticsHubListingIamMember] for additive grants.
final class GoogleBigqueryAnalyticsHubListingIamBinding extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_listing_iam_binding';

  GoogleBigqueryAnalyticsHubListingIamBinding({
    required super.localName,
    TfArg<String>? dataExchangeId,
    required RefTo<GoogleBigqueryAnalyticsHubListing> listing,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    BigqueryAnalyticsHubListingIamBindingCondition? condition,
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
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? listing.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubListingIamBinding>`.
  RefTo<GoogleBigqueryAnalyticsHubListingIamBinding> get ref => RefTo.of(this);

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

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
