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
///
/// Pick one with a dot shorthand: `.pubsubTopic(...)`.
sealed class BigqueryAnalyticsHubListingSource {
  const BigqueryAnalyticsHubListingSource();

  /// Sets `pubsub_topic`.
  const factory BigqueryAnalyticsHubListingSource.pubsubTopic(
    BigqueryAnalyticsHubListingPubsubTopic pubsubTopic,
  ) = BigqueryAnalyticsHubListingSourcePubsubTopic;

  /// Sets `bigquery_dataset`.
  const factory BigqueryAnalyticsHubListingSource.bigqueryDataset(
    BigqueryAnalyticsHubListingBigqueryDataset bigqueryDataset,
  ) = BigqueryAnalyticsHubListingSourceBigqueryDataset;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigqueryAnalyticsHubListingSource.pubsubTopic] choice: sets `pubsub_topic`.
final class BigqueryAnalyticsHubListingSourcePubsubTopic
    extends BigqueryAnalyticsHubListingSource {
  const BigqueryAnalyticsHubListingSourcePubsubTopic(this.pubsubTopic);

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

/// The [BigqueryAnalyticsHubListingSource.bigqueryDataset] choice: sets `bigquery_dataset`.
final class BigqueryAnalyticsHubListingSourceBigqueryDataset
    extends BigqueryAnalyticsHubListingSource {
  const BigqueryAnalyticsHubListingSourceBigqueryDataset(this.bigqueryDataset);

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
    required this.selectedResources,
  });

  final BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources
  selectedResources;

  Map<String, Object?> encode() => {...selectedResources.encode()};
}

/// Exactly one of `table`, `routine` on the `bigquery_dataset.selected_resources` block of `google_bigquery_analytics_hub_listing`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.table(...)`.
sealed class BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources {
  const BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources();

  /// Sets `table`.
  const factory BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources.table(
    TfArg<String> table,
  ) = BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResourcesTable;

  /// Sets `routine`.
  const factory BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources.routine(
    TfArg<String> routine,
  ) = BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResourcesRoutine;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources.table] choice: sets `table`.
final class BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResourcesTable
    extends
        BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources {
  const BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResourcesTable(
    this.table,
  );

  final TfArg<String> table;

  @override
  String get blockKey => 'table';

  @override
  Map<String, Object?> encode() => {'table': table.toTfJson()};
}

/// The [BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources.routine] choice: sets `routine`.
final class BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResourcesRoutine
    extends
        BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResources {
  const BigqueryAnalyticsHubListingBigqueryDatasetSelectedResourcesSelectedResourcesRoutine(
    this.routine,
  );

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
    required BigqueryAnalyticsHubListingSource source,
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
           ...source.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubListing>`.
  RefTo<GoogleBigqueryAnalyticsHubListing> get ref => RefTo.of(this);

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
