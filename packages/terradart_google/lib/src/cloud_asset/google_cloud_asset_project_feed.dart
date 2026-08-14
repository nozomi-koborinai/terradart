// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_asset_project_feed`.
const Set<String> _googleCloudAssetProjectFeedSensitive = <String>{};

/// Cloud Asset Project Feed Content enum for `content_type`.
enum CloudAssetProjectFeedContentType implements TerraformEnum {
  contentTypeUnspecified('CONTENT_TYPE_UNSPECIFIED'),
  resource('RESOURCE'),
  iamPolicy('IAM_POLICY'),
  orgPolicy('ORG_POLICY'),
  osInventory('OS_INVENTORY'),
  accessPolicy('ACCESS_POLICY');

  const CloudAssetProjectFeedContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `condition` block of
/// `google_cloud_asset_project_feed` (derived from provider schema).
@immutable
final class CloudAssetProjectFeedCondition {
  const CloudAssetProjectFeedCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `feed_output_config` block of
/// `google_cloud_asset_project_feed` (derived from provider schema).
@immutable
final class CloudAssetProjectFeedFeedOutputConfig {
  const CloudAssetProjectFeedFeedOutputConfig({
    required this.pubsubDestination,
  });

  final CloudAssetProjectFeedFeedOutputConfigPubsubDestination
  pubsubDestination;

  Map<String, Object?> encode() => {
    'pubsub_destination': pubsubDestination.encode(),
  };
}

/// Typed helper for the `feed_output_config.pubsub_destination` block of
/// `google_cloud_asset_project_feed` (derived from provider schema).
@immutable
final class CloudAssetProjectFeedFeedOutputConfigPubsubDestination {
  const CloudAssetProjectFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  final TfArg<String> topic;

  Map<String, Object?> encode() => {'topic': topic.toTfJson()};
}

/// Factory wrapper for `google_cloud_asset_project_feed`.
///
/// Describes a Cloud Asset Inventory feed used to to listen to asset updates.
///
/// Cloud Asset Inventory **project feed** — publishes matching asset
/// updates to a Pub/Sub topic.
///
/// Creating a feed does not scan or export existing resources. Messages
/// fire only when matching assets change. Specify [assetTypes] and/or
/// [assetNames].
///
/// [feedOutputConfig] `pubsub_destination.topic` must be the **full**
/// topic path (`projects/{project}/topics/{name}`). Pass
/// `TfArg.ref(topic.id)` against a sibling [GooglePubsubTopic].
///
/// Grant `roles/pubsub.publisher` on that topic to
/// `service-{PROJECT_NUMBER}@gcp-sa-cloudasset.iam.gserviceaccount.com`
/// (created when `cloudasset.googleapis.com` is enabled) and
/// `dependsOn` the IAM member.
///
/// Enable `cloudasset.googleapis.com` and `pubsub.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleCloudAssetProjectFeed(
///   localName: 'project_feed',
///   feedId: TfArg.literal('terradart-project-feed'),
///   assetTypes: TfArg.literal(const [
///     'cloudresourcemanager.googleapis.com/Project',
///   ]),
///   contentType: TfArg.literal(CloudAssetProjectFeedContentType.resource),
///   feedOutputConfig: CloudAssetProjectFeedFeedOutputConfig(
///     pubsubDestination: CloudAssetProjectFeedFeedOutputConfigPubsubDestination(
///       topic: TfArg.ref(topic.id),
///     ),
///   ),
/// );
/// ```
final class GoogleCloudAssetProjectFeed extends Resource {
  static const String tfType = 'google_cloud_asset_project_feed';

  GoogleCloudAssetProjectFeed({
    required super.localName,
    required TfArg<String> feedId,
    TfArg<List<String>>? assetTypes,
    TfArg<List<String>>? assetNames,
    TfArg<CloudAssetProjectFeedContentType>? contentType,
    required CloudAssetProjectFeedFeedOutputConfig feedOutputConfig,
    CloudAssetProjectFeedCondition? condition,
    TfArg<String>? billingProject,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feed_id': feedId,
           if (assetTypes != null) 'asset_types': assetTypes,
           if (assetNames != null) 'asset_names': assetNames,
           if (contentType != null) 'content_type': contentType,
           'feed_output_config': TfArg.literal(feedOutputConfig.encode()),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           if (billingProject != null) 'billing_project': billingProject,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudAssetProjectFeedSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
