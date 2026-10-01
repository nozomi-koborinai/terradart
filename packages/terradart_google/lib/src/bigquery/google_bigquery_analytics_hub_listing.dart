// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_bigquery_analytics_hub_listing`.
const Set<String> _googleBigqueryAnalyticsHubListingSensitive = <String>{};

extension type const BigqueryAnalyticsHubListingDiscoveryType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryAnalyticsHubListingDiscoveryType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryAnalyticsHubListingDiscoveryType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryAnalyticsHubListingDiscoveryType.arg(TfArg<String> arg)
    : this._(arg);

  static const privateDiscovery = BigqueryAnalyticsHubListingDiscoveryType._(
    TfArgLiteral('DISCOVERY_TYPE_PRIVATE'),
  );
  static const publicDiscovery = BigqueryAnalyticsHubListingDiscoveryType._(
    TfArgLiteral('DISCOVERY_TYPE_PUBLIC'),
  );

  static const List<BigqueryAnalyticsHubListingDiscoveryType> values = [
    privateDiscovery,
    publicDiscovery,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigqueryAnalyticsHubListingSource.pubsubTopic] choice: sets `pubsub_topic`.
final class BigqueryAnalyticsHubListingSourcePubsubTopic
    extends BigqueryAnalyticsHubListingSource {
  const BigqueryAnalyticsHubListingSourcePubsubTopic(this.pubsubTopic);

  final BigqueryAnalyticsHubListingPubsubTopic pubsubTopic;

  @internal
  @override
  String get blockKey => 'pubsub_topic';

  @internal
  @override
  Map<String, Object?> encode() => {'pubsub_topic': pubsubTopic.encode()};

  @internal
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

  @internal
  @override
  String get blockKey => 'bigquery_dataset';

  @internal
  @override
  Map<String, Object?> encode() => {
    'bigquery_dataset': bigqueryDataset.encode(),
  };

  @internal
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

  final TfArg<List<String>>? replicaLocations;

  final List<BigqueryAnalyticsHubListingSelectedResources>? selectedResources;

  @internal
  Map<String, Object?> encode() => {
    'dataset': dataset.toTfJson(),
    'replica_locations': ?replicaLocations?.toTfJson(),
    if (selectedResources != null)
      'selected_resources': [for (final e in selectedResources!) e.encode()],
  };
}

/// Exactly one of `table`, `routine` on the `bigquery_dataset.selected_resources` block of `google_bigquery_analytics_hub_listing`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.table(...)`.
sealed class BigqueryAnalyticsHubListingSelectedResources {
  const BigqueryAnalyticsHubListingSelectedResources();

  /// Sets `table`.
  const factory BigqueryAnalyticsHubListingSelectedResources.table(
    TfArg<String> table,
  ) = BigqueryAnalyticsHubListingSelectedResourcesTable;

  /// Sets `routine`.
  const factory BigqueryAnalyticsHubListingSelectedResources.routine(
    TfArg<String> routine,
  ) = BigqueryAnalyticsHubListingSelectedResourcesRoutine;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BigqueryAnalyticsHubListingSelectedResources.table] choice: sets `table`.
final class BigqueryAnalyticsHubListingSelectedResourcesTable
    extends BigqueryAnalyticsHubListingSelectedResources {
  const BigqueryAnalyticsHubListingSelectedResourcesTable(this.table);

  final TfArg<String> table;

  @internal
  @override
  String get blockKey => 'table';

  @internal
  @override
  Map<String, Object?> encode() => {'table': table.toTfJson()};
}

/// The [BigqueryAnalyticsHubListingSelectedResources.routine] choice: sets `routine`.
final class BigqueryAnalyticsHubListingSelectedResourcesRoutine
    extends BigqueryAnalyticsHubListingSelectedResources {
  const BigqueryAnalyticsHubListingSelectedResourcesRoutine(this.routine);

  final TfArg<String> routine;

  @internal
  @override
  String get blockKey => 'routine';

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'primary_contact': ?primaryContact?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'primary_contact': ?primaryContact?.toTfJson(),
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

  final TfArg<List<String>>? dataAffinityRegions;

  final RefTo<GooglePubsubTopic> topic;

  @internal
  Map<String, Object?> encode() => {
    'data_affinity_regions': ?dataAffinityRegions?.toTfJson(),
    'topic': topic.encodeAs('id').toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'restrict_query_result': ?restrictQueryResult?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_analytics_hub_listing`.
///
/// A Bigquery Analytics Hub data exchange listing
final class GoogleBigqueryAnalyticsHubListing extends Resource {
  static const String tfType = 'google_bigquery_analytics_hub_listing';

  GoogleBigqueryAnalyticsHubListing(
    super.localName, {
    TfArg<bool>? allowOnlyMetadataSharing,
    TfArg<List<String>>? categories,
    required TfArg<String> dataExchangeId,
    TfArg<bool>? deleteCommercial,
    TfArg<String>? description,
    BigqueryAnalyticsHubListingDiscoveryType? discoveryType,
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
           'allow_only_metadata_sharing': ?allowOnlyMetadataSharing,
           'categories': ?categories,
           'data_exchange_id': dataExchangeId,
           'delete_commercial': ?deleteCommercial,
           'description': ?description,
           'discovery_type': ?discoveryType,
           'display_name': displayName,
           'documentation': ?documentation,
           'icon': ?icon,
           'listing_id': listingId,
           'location': location,
           'log_linked_dataset_query_user_email':
               ?logLinkedDatasetQueryUserEmail,
           'primary_contact': ?primaryContact,
           'project': ?project,
           'request_access': ?requestAccess,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `commercial_info` attribute.
  TfRef<List<Map<String, Object?>>> get commercialInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'commercial_info');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `allow_only_metadata_sharing` attribute.
  TfRef<bool> get allowOnlyMetadataSharing =>
      TfRef.attribute<bool>(this, 'allow_only_metadata_sharing');

  /// Reference to `categories` attribute.
  TfRef<List<String>> get categories =>
      TfRef.attribute<List<String>>(this, 'categories');

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeId =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `delete_commercial` attribute.
  TfRef<bool> get deleteCommercial =>
      TfRef.attribute<bool>(this, 'delete_commercial');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `discovery_type` attribute.
  TfRef<String> get discoveryType =>
      TfRef.attribute<String>(this, 'discovery_type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `documentation` attribute.
  TfRef<String> get documentation =>
      TfRef.attribute<String>(this, 'documentation');

  /// Reference to `icon` attribute.
  TfRef<String> get icon => TfRef.attribute<String>(this, 'icon');

  /// Reference to `listing_id` attribute.
  TfRef<String> get listingId => TfRef.attribute<String>(this, 'listing_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_linked_dataset_query_user_email` attribute.
  TfRef<bool> get logLinkedDatasetQueryUserEmail =>
      TfRef.attribute<bool>(this, 'log_linked_dataset_query_user_email');

  /// Reference to `primary_contact` attribute.
  TfRef<String> get primaryContact =>
      TfRef.attribute<String>(this, 'primary_contact');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `request_access` attribute.
  TfRef<String> get requestAccess =>
      TfRef.attribute<String>(this, 'request_access');
}
