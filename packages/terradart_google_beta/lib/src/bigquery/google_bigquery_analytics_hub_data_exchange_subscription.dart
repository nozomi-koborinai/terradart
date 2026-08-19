// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange_subscription`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeSubscriptionSensitive =
    <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange_subscription`.
final class GoogleBigqueryAnalyticsHubDataExchangeSubscription
    extends Resource {
  static const String tfType =
      'google_bigquery_analytics_hub_data_exchange_subscription';

  GoogleBigqueryAnalyticsHubDataExchangeSubscription({
    required super.localName,
    required TfArg<String> dataExchangeId,
    required TfArg<String> dataExchangeLocation,
    required TfArg<String> dataExchangeProject,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<String>? refreshPolicy,
    TfArg<String>? subscriberContact,
    required TfArg<String> subscriptionId,
    TfArg<Map<String, dynamic>>? destinationDataset,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'data_exchange_id': dataExchangeId,
           'data_exchange_location': dataExchangeLocation,
           'data_exchange_project': dataExchangeProject,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'location': location,
           if (project != null) 'project': project,
           if (refreshPolicy != null) 'refresh_policy': refreshPolicy,
           if (subscriberContact != null)
             'subscriber_contact': subscriberContact,
           'subscription_id': subscriptionId,
           if (destinationDataset != null)
             'destination_dataset': destinationDataset,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeSubscriptionSensitive;
}
