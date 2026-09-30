// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> dataExchangeId,
    required TfArg<String> listingId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    BigqueryAnalyticsHubListingIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'listing_id': listingId,
           'location': ?location,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
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
}
