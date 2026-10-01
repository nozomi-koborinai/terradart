// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_cloud_asset_folder_feed`.
const Set<String> _googleCloudAssetFolderFeedSensitive = <String>{};

/// Cloud Asset Folder Feed Content enum for `content_type`.
extension type const CloudAssetFolderFeedContentType._(TfArg<String> _)
    implements TfArg<String> {
  CloudAssetFolderFeedContentType.variable(String name)
    : this._(TfArg.variable(name));
  CloudAssetFolderFeedContentType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudAssetFolderFeedContentType.arg(TfArg<String> arg) : this._(arg);

  static const contentTypeUnspecified = CloudAssetFolderFeedContentType._(
    TfArgLiteral('CONTENT_TYPE_UNSPECIFIED'),
  );
  static const resource = CloudAssetFolderFeedContentType._(
    TfArgLiteral('RESOURCE'),
  );
  static const iamPolicy = CloudAssetFolderFeedContentType._(
    TfArgLiteral('IAM_POLICY'),
  );
  static const orgPolicy = CloudAssetFolderFeedContentType._(
    TfArgLiteral('ORG_POLICY'),
  );
  static const osInventory = CloudAssetFolderFeedContentType._(
    TfArgLiteral('OS_INVENTORY'),
  );
  static const accessPolicy = CloudAssetFolderFeedContentType._(
    TfArgLiteral('ACCESS_POLICY'),
  );

  static const List<CloudAssetFolderFeedContentType> values = [
    contentTypeUnspecified,
    resource,
    iamPolicy,
    orgPolicy,
    osInventory,
    accessPolicy,
  ];
}

/// Typed helper for the `condition` block of
/// `google_cloud_asset_folder_feed` (derived from provider schema).
@immutable
final class CloudAssetFolderFeedCondition {
  const CloudAssetFolderFeedCondition({
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `feed_output_config` block of
/// `google_cloud_asset_folder_feed` (derived from provider schema).
@immutable
final class CloudAssetFolderFeedOutputConfig {
  const CloudAssetFolderFeedOutputConfig({required this.pubsubDestination});

  final CloudAssetFolderFeedPubsubDestination pubsubDestination;

  Map<String, Object?> encode() => {
    'pubsub_destination': pubsubDestination.encode(),
  };
}

/// Typed helper for the `feed_output_config.pubsub_destination` block of
/// `google_cloud_asset_folder_feed` (derived from provider schema).
@immutable
final class CloudAssetFolderFeedPubsubDestination {
  const CloudAssetFolderFeedPubsubDestination({required this.topic});

  final RefTo<GooglePubsubTopic> topic;

  Map<String, Object?> encode() => {'topic': topic.encodeAs('id').toTfJson()};
}

/// Factory wrapper for `google_cloud_asset_folder_feed`.
///
/// Describes a Cloud Asset Inventory feed used to to listen to asset updates.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudAssetFolderFeed extends Resource {
  static const String tfType = 'google_cloud_asset_folder_feed';

  GoogleCloudAssetFolderFeed(
    super.localName, {
    TfArg<List<String>>? assetNames,
    TfArg<List<String>>? assetTypes,
    required TfArg<String> billingProject,
    CloudAssetFolderFeedContentType? contentType,
    TfArg<String>? deletionPolicy,
    required TfArg<String> feedId,
    required TfArg<String> folder,
    CloudAssetFolderFeedCondition? condition,
    required CloudAssetFolderFeedOutputConfig feedOutputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'asset_names': ?assetNames,
           'asset_types': ?assetTypes,
           'billing_project': billingProject,
           'content_type': ?contentType,
           'deletion_policy': ?deletionPolicy,
           'feed_id': feedId,
           'folder': folder,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'feed_output_config': TfArg.literal(feedOutputConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudAssetFolderFeedSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudAssetFolderFeed>`.
  RefTo<GoogleCloudAssetFolderFeed> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `asset_names` attribute.
  TfRef<List<String>> get assetNames =>
      TfRef.attribute<List<String>>(this, 'asset_names');

  /// Reference to `asset_types` attribute.
  TfRef<List<String>> get assetTypes =>
      TfRef.attribute<List<String>>(this, 'asset_types');

  /// Reference to `billing_project` attribute.
  TfRef<String> get billingProject =>
      TfRef.attribute<String>(this, 'billing_project');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `feed_id` attribute.
  TfRef<String> get feedId => TfRef.attribute<String>(this, 'feed_id');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');
}
