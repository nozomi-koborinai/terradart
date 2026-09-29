// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
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

/// Exactly one of `pubsub_topic`, `bigquery_dataset` on `google_bigquery_analytics_hub_listing`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BigqueryAnalyticsHubListingPubsubTopicOrBigqueryDataset {
  const BigqueryAnalyticsHubListingPubsubTopicOrBigqueryDataset();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `pubsub_topic` (one of the [BigqueryAnalyticsHubListingPubsubTopicOrBigqueryDataset] choices).
final class BigqueryAnalyticsHubListingPubsubTopicOption
    extends BigqueryAnalyticsHubListingPubsubTopicOrBigqueryDataset {
  const BigqueryAnalyticsHubListingPubsubTopicOption({
    required this.pubsubTopic,
  });

  final BigqueryAnalyticsHubListingPubsubTopic pubsubTopic;

  @override
  String get blockKey => 'pubsub_topic';

  @override
  Map<String, Object?> encode() => {'pubsub_topic': pubsubTopic.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'pubsub_topic': TfArg.literal(pubsubTopic.encode()),
  };
}

/// Sets `bigquery_dataset` (one of the [BigqueryAnalyticsHubListingPubsubTopicOrBigqueryDataset] choices).
final class BigqueryAnalyticsHubListingBigqueryDatasetOption
    extends BigqueryAnalyticsHubListingPubsubTopicOrBigqueryDataset {
  const BigqueryAnalyticsHubListingBigqueryDatasetOption({
    required this.bigqueryDataset,
  });

  final BigqueryAnalyticsHubListingBigqueryDataset bigqueryDataset;

  @override
  String get blockKey => 'bigquery_dataset';

  @override
  Map<String, Object?> encode() => {
    'bigquery_dataset': bigqueryDataset.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'bigquery_dataset': TfArg.literal(bigqueryDataset.encode()),
  };
}

/// Typed helper for the `bigquery_dataset` block of
/// `google_bigquery_analytics_hub_listing` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingBigqueryDataset {
  const BigqueryAnalyticsHubListingBigqueryDataset({
    required this.dataset,
    this.replicaLocations,
    this.selectedResources,
  });

  final TfArg<String> dataset;

  final TfArg<List<Object?>>? replicaLocations;

  final List<BigqueryAnalyticsHubListingBigqueryDatasetSelectedResources>?
  selectedResources;

  Map<String, Object?> encode() => {
    'dataset': dataset.toTfJson(),
    if (replicaLocations != null)
      'replica_locations': replicaLocations!.toTfJson(),
    if (selectedResources != null)
      'selected_resources': [for (final e in selectedResources!) e.encode()],
  };
}

/// Typed helper for the `bigquery_dataset.selected_resources` block of
/// `google_bigquery_analytics_hub_listing` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingBigqueryDatasetSelectedResources {
  const BigqueryAnalyticsHubListingBigqueryDatasetSelectedResources({
    required this.tableOrRoutine,
  });

  final BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOrRoutine
  tableOrRoutine;

  Map<String, Object?> encode() => {...tableOrRoutine.encode()};
}

/// Exactly one of `table`, `routine` on the `bigquery_dataset.selected_resources` block of `google_bigquery_analytics_hub_listing`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOrRoutine {
  const BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOrRoutine();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `table` (one of the [BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOrRoutine] choices).
final class BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOption
    extends
        BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOrRoutine {
  const BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOption({
    required this.table,
  });

  final TfArg<String> table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {'table': table.toTfJson()};
}

/// Sets `routine` (one of the [BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOrRoutine] choices).
final class BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesRoutineOption
    extends
        BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesTableOrRoutine {
  const BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesRoutineOption({
    required this.routine,
  });

  final TfArg<String> routine;

  @override
  String get blockKey => 'routine';

  @override
  Map<String, Object?> encode() => {'routine': routine.toTfJson()};
}

/// Typed helper for the `data_provider` block of
/// `google_bigquery_analytics_hub_listing` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingDataProvider {
  const BigqueryAnalyticsHubListingDataProvider({
    required this.name,
    this.primaryContact,
  });

  final TfArg<String> name;

  final TfArg<String>? primaryContact;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (primaryContact != null) 'primary_contact': primaryContact!.toTfJson(),
  };
}

/// Typed helper for the `publisher` block of
/// `google_bigquery_analytics_hub_listing` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingPublisher {
  const BigqueryAnalyticsHubListingPublisher({
    required this.name,
    this.primaryContact,
  });

  final TfArg<String> name;

  final TfArg<String>? primaryContact;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (primaryContact != null) 'primary_contact': primaryContact!.toTfJson(),
  };
}

/// Typed helper for the `pubsub_topic` block of
/// `google_bigquery_analytics_hub_listing` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingPubsubTopic {
  const BigqueryAnalyticsHubListingPubsubTopic({
    this.dataAffinityRegions,
    required this.topic,
  });

  final TfArg<List<Object?>>? dataAffinityRegions;

  final TfArg<String> topic;

  Map<String, Object?> encode() => {
    if (dataAffinityRegions != null)
      'data_affinity_regions': dataAffinityRegions!.toTfJson(),
    'topic': topic.toTfJson(),
  };
}

/// Typed helper for the `restricted_export_config` block of
/// `google_bigquery_analytics_hub_listing` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubListingRestrictedExportConfig {
  const BigqueryAnalyticsHubListingRestrictedExportConfig({
    this.enabled,
    this.restrictQueryResult,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? restrictQueryResult;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (restrictQueryResult != null)
      'restrict_query_result': restrictQueryResult!.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_analytics_hub_listing`.
///
/// A Bigquery Analytics Hub data exchange listing
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
    required BigqueryAnalyticsHubListingPubsubTopicOrBigqueryDataset
    pubsubTopicOrBigqueryDataset,
    BigqueryAnalyticsHubListingDataProvider? dataProvider,
    BigqueryAnalyticsHubListingPublisher? publisher,
    BigqueryAnalyticsHubListingRestrictedExportConfig? restrictedExportConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
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
           ...pubsubTopicOrBigqueryDataset.argMap,
           if (dataProvider != null)
             'data_provider': TfArg.literal(dataProvider.encode()),
           if (publisher != null)
             'publisher': TfArg.literal(publisher.encode()),
           if (restrictedExportConfig != null)
             'restricted_export_config': TfArg.literal(
               restrictedExportConfig.encode(),
             ),
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
