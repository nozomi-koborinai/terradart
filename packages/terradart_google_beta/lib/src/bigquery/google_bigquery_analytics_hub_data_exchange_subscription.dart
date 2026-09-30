// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_analytics_hub_data_exchange_subscription`.
const Set<String> _googleBigqueryAnalyticsHubDataExchangeSubscriptionSensitive =
    <String>{};

/// Bigquery Analytics Hub Data Exchange Subscription Refresh enum for `refresh_policy`.
enum BigqueryAnalyticsHubDataExchangeSubscriptionRefreshPolicy
    implements TerraformEnum {
  onRead('ON_READ'),
  onStale('ON_STALE'),
  never('NEVER');

  const BigqueryAnalyticsHubDataExchangeSubscriptionRefreshPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_dataset` block of
/// `google_bigquery_analytics_hub_data_exchange_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeSubscriptionDestinationDataset {
  const BigqueryAnalyticsHubDataExchangeSubscriptionDestinationDataset({
    this.description,
    this.friendlyName,
    this.labels,
    required this.location,
    required this.datasetReference,
  });

  final TfArg<String>? description;

  final TfArg<String>? friendlyName;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> location;

  final BigqueryAnalyticsHubDataExchangeSubscriptionDestinationDatasetDatasetReference
  datasetReference;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'friendly_name': ?friendlyName?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'location': location.toTfJson(),
    'dataset_reference': datasetReference.encode(),
  };
}

/// Typed helper for the `destination_dataset.dataset_reference` block of
/// `google_bigquery_analytics_hub_data_exchange_subscription` (derived from provider schema).
@immutable
final class BigqueryAnalyticsHubDataExchangeSubscriptionDestinationDatasetDatasetReference {
  const BigqueryAnalyticsHubDataExchangeSubscriptionDestinationDatasetDatasetReference({
    required this.datasetId,
    required this.projectId,
  });

  final TfArg<String> datasetId;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_analytics_hub_data_exchange_subscription`.
///
/// A Bigquery Analytics Hub Data Exchange subscription
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
    TfArg<BigqueryAnalyticsHubDataExchangeSubscriptionRefreshPolicy>?
    refreshPolicy,
    TfArg<String>? subscriberContact,
    required TfArg<String> subscriptionId,
    BigqueryAnalyticsHubDataExchangeSubscriptionDestinationDataset?
    destinationDataset,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'data_exchange_id': dataExchangeId,
           'data_exchange_location': dataExchangeLocation,
           'data_exchange_project': dataExchangeProject,
           'deletion_policy': ?deletionPolicy,
           'location': location,
           'project': ?project,
           'refresh_policy': ?refreshPolicy,
           'subscriber_contact': ?subscriberContact,
           'subscription_id': subscriptionId,
           if (destinationDataset != null)
             'destination_dataset': TfArg.literal(destinationDataset.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryAnalyticsHubDataExchangeSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryAnalyticsHubDataExchangeSubscription>`.
  RefTo<GoogleBigqueryAnalyticsHubDataExchangeSubscription> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `data_exchange` attribute.
  TfRef<String> get dataExchange =>
      TfRef.attribute<String>(this, 'data_exchange');

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

  /// Reference to `data_exchange_id` attribute.
  TfRef<String> get dataExchangeIdRef =>
      TfRef.attribute<String>(this, 'data_exchange_id');

  /// Reference to `data_exchange_location` attribute.
  TfRef<String> get dataExchangeLocationRef =>
      TfRef.attribute<String>(this, 'data_exchange_location');

  /// Reference to `data_exchange_project` attribute.
  TfRef<String> get dataExchangeProjectRef =>
      TfRef.attribute<String>(this, 'data_exchange_project');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `refresh_policy` attribute.
  TfRef<String> get refreshPolicyRef =>
      TfRef.attribute<String>(this, 'refresh_policy');

  /// Reference to `subscriber_contact` attribute.
  TfRef<String> get subscriberContactRef =>
      TfRef.attribute<String>(this, 'subscriber_contact');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionIdRef =>
      TfRef.attribute<String>(this, 'subscription_id');
}
