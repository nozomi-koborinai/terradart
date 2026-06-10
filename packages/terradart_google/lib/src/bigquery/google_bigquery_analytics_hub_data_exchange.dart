// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeSensitive = <String>{};

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange`.
final class GoogleBigqueryAnalyticsHubDataExchange extends Resource {
  static const String tfType = 'google_bigquery_analytics_hub_data_exchange';

  GoogleBigqueryAnalyticsHubDataExchange({
    required super.localName,
    required TfArg<String> dataExchangeId,
    TfArg<String>? description,
    TfArg<String>? discoveryType,
    required TfArg<String> displayName,
    TfArg<String>? documentation,
    TfArg<String>? icon,
    required TfArg<String> location,
    TfArg<bool>? logLinkedDatasetQueryUserEmail,
    TfArg<String>? primaryContact,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? sharingEnvironmentConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_exchange_id': dataExchangeId,
           if (description != null) 'description': description,
           if (discoveryType != null) 'discovery_type': discoveryType,
           'display_name': displayName,
           if (documentation != null) 'documentation': documentation,
           if (icon != null) 'icon': icon,
           'location': location,
           if (logLinkedDatasetQueryUserEmail != null)
             'log_linked_dataset_query_user_email':
                 logLinkedDatasetQueryUserEmail,
           if (primaryContact != null) 'primary_contact': primaryContact,
           if (project != null) 'project': project,
           if (sharingEnvironmentConfig != null)
             'sharing_environment_config': sharingEnvironmentConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `listing_count` attribute.
  TfRef<num> get listingCount => TfRef.attribute<num>(this, 'listing_count');
}
