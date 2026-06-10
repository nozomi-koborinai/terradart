// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_listing_subscription`.
const Set<String> _googleBigqueryAnalyticsHubListingSubscriptionSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_listing_subscription`.
final class GoogleBigqueryAnalyticsHubListingSubscription extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_listing_subscription';

  GoogleBigqueryAnalyticsHubListingSubscription({
    required super.localName,
    required TfArg<String> dataExchangeId,
    required TfArg<String> listingId,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<Map<String, dynamic>> destinationDataset,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           'listing_id': listingId,
           'location': location,
           if (project != null) 'project': project,
           'destination_dataset': destinationDataset,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingSubscriptionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `commercial_info` attribute.
  TfRef<List<Map<String, Object?>>> get commercialInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'commercial_info');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modify_time` attribute.
  TfRef<String> get lastModifyTime =>
      TfRef.attribute<String>(this, 'last_modify_time');

  /// Reference to `linked_dataset_map` attribute.
  TfRef<List<Map<String, Object?>>> get linkedDatasetMap =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'linked_dataset_map');

  /// Reference to `linked_resources` attribute.
  TfRef<List<Map<String, Object?>>> get linkedResources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'linked_resources');

  /// Reference to `log_linked_dataset_query_user_email` attribute.
  TfRef<bool> get logLinkedDatasetQueryUserEmail =>
      TfRef.attribute<bool>(this, 'log_linked_dataset_query_user_email');

  /// Reference to `organization_display_name` attribute.
  TfRef<String> get organizationDisplayName =>
      TfRef.attribute<String>(this, 'organization_display_name');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subscriber_contact` attribute.
  TfRef<String> get subscriberContact =>
      TfRef.attribute<String>(this, 'subscriber_contact');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
