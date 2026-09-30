// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleBigqueryAnalyticsHubListingIamMember({
    required super.localName,
    required TfArg<String> dataExchangeId,
    required TfArg<String> listingId,
    TfArg<String>? location,
    required TfArg<String> member,
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
           'data_exchange_id': dataExchangeId,
           'listing_id': listingId,
           'location': ?location,
           'member': member,
           'project': ?project,
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
}
