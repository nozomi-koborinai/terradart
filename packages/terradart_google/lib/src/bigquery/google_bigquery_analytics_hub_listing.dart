// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_listing`.
const Set<String> _googleBigqueryAnalyticsHubListingSensitive = <String>{};

enum BigqueryAnalyticsHubListingDiscoveryType implements TerraformEnum {
  privateDiscovery('DISCOVERY_TYPE_PRIVATE'),
  publicDiscovery('DISCOVERY_TYPE_PUBLIC');

  const BigqueryAnalyticsHubListingDiscoveryType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_bigquery_analytics_hub_listing`.
final class GoogleBigqueryAnalyticsHubListing extends Resource {
  static const String tfType = 'google_bigquery_analytics_hub_listing';

  GoogleBigqueryAnalyticsHubListing({
    required super.localName,
    TfArg<bool>? allowOnlyMetadataSharing,
    TfArg<List<String>>? categories,
    required TfArg<String> dataExchangeId,
    TfArg<bool>? deleteCommercial,
    TfArg<String>? description,
    TfArg<BigqueryAnalyticsHubListingDiscoveryType>? discoveryType,
    required TfArg<String> displayName,
    TfArg<String>? documentation,
    TfArg<String>? icon,
    required TfArg<String> listingId,
    required TfArg<String> location,
    TfArg<bool>? logLinkedDatasetQueryUserEmail,
    TfArg<String>? primaryContact,
    TfArg<String>? project,
    TfArg<String>? requestAccess,
    TfArg<Map<String, dynamic>>? bigqueryDataset,
    TfArg<Map<String, dynamic>>? dataProvider,
    TfArg<Map<String, dynamic>>? publisher,
    TfArg<Map<String, dynamic>>? pubsubTopic,
    TfArg<Map<String, dynamic>>? restrictedExportConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowOnlyMetadataSharing != null)
             'allow_only_metadata_sharing': allowOnlyMetadataSharing,
           if (categories != null) 'categories': categories,
           'data_exchange_id': dataExchangeId,
           if (deleteCommercial != null) 'delete_commercial': deleteCommercial,
           if (description != null) 'description': description,
           if (discoveryType != null) 'discovery_type': discoveryType,
           'display_name': displayName,
           if (documentation != null) 'documentation': documentation,
           if (icon != null) 'icon': icon,
           'listing_id': listingId,
           'location': location,
           if (logLinkedDatasetQueryUserEmail != null)
             'log_linked_dataset_query_user_email':
                 logLinkedDatasetQueryUserEmail,
           if (primaryContact != null) 'primary_contact': primaryContact,
           if (project != null) 'project': project,
           if (requestAccess != null) 'request_access': requestAccess,
           if (bigqueryDataset != null) 'bigquery_dataset': bigqueryDataset,
           if (dataProvider != null) 'data_provider': dataProvider,
           if (publisher != null) 'publisher': publisher,
           if (pubsubTopic != null) 'pubsub_topic': pubsubTopic,
           if (restrictedExportConfig != null)
             'restricted_export_config': restrictedExportConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubListingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `commercial_info` attribute.
  TfRef<List<Map<String, Object?>>> get commercialInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'commercial_info');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
