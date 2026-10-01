// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_cloud_asset_organization_feed`.
const Set<String> _googleCloudAssetOrganizationFeedSensitive = <String>{};

/// Cloud Asset Organization Feed Content enum for `content_type`.
extension type const CloudAssetOrganizationFeedContentType._(TfArg<String> _)
    implements TfArg<String> {
  CloudAssetOrganizationFeedContentType.variable(String name)
    : this._(TfArg.variable(name));
  CloudAssetOrganizationFeedContentType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudAssetOrganizationFeedContentType.arg(TfArg<String> arg)
    : this._(arg);

  static const contentTypeUnspecified = CloudAssetOrganizationFeedContentType._(
    TfArgLiteral('CONTENT_TYPE_UNSPECIFIED'),
  );
  static const resource = CloudAssetOrganizationFeedContentType._(
    TfArgLiteral('RESOURCE'),
  );
  static const iamPolicy = CloudAssetOrganizationFeedContentType._(
    TfArgLiteral('IAM_POLICY'),
  );
  static const orgPolicy = CloudAssetOrganizationFeedContentType._(
    TfArgLiteral('ORG_POLICY'),
  );
  static const osInventory = CloudAssetOrganizationFeedContentType._(
    TfArgLiteral('OS_INVENTORY'),
  );
  static const accessPolicy = CloudAssetOrganizationFeedContentType._(
    TfArgLiteral('ACCESS_POLICY'),
  );

  static const List<CloudAssetOrganizationFeedContentType> values = [
    contentTypeUnspecified,
    resource,
    iamPolicy,
    orgPolicy,
    osInventory,
    accessPolicy,
  ];
}

/// Typed helper for the `condition` block of
/// `google_cloud_asset_organization_feed` (derived from provider schema).
@immutable
final class CloudAssetOrganizationFeedCondition {
  const CloudAssetOrganizationFeedCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `feed_output_config` block of
/// `google_cloud_asset_organization_feed` (derived from provider schema).
@immutable
final class CloudAssetOrganizationFeedOutputConfig {
  const CloudAssetOrganizationFeedOutputConfig({
    required this.pubsubDestination,
  });

  final CloudAssetOrganizationFeedPubsubDestination pubsubDestination;

  @internal
  Map<String, Object?> encode() => {
    'pubsub_destination': pubsubDestination.encode(),
  };
}

/// Typed helper for the `feed_output_config.pubsub_destination` block of
/// `google_cloud_asset_organization_feed` (derived from provider schema).
@immutable
final class CloudAssetOrganizationFeedPubsubDestination {
  const CloudAssetOrganizationFeedPubsubDestination({required this.topic});

  final RefTo<GooglePubsubTopic> topic;

  @internal
  Map<String, Object?> encode() => {'topic': topic.encodeAs('id').toTfJson()};
}

/// Factory wrapper for `google_cloud_asset_organization_feed`.
///
/// Describes a Cloud Asset Inventory feed used to to listen to asset updates.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudAssetOrganizationFeed extends Resource {
  static const String tfType = 'google_cloud_asset_organization_feed';

  GoogleCloudAssetOrganizationFeed(
    super.localName, {
    TfArg<List<String>>? assetNames,
    TfArg<List<String>>? assetTypes,
    required TfArg<String> billingProject,
    CloudAssetOrganizationFeedContentType? contentType,
    TfArg<String>? deletionPolicy,
    required TfArg<String> feedId,
    required TfArg<String> orgId,
    CloudAssetOrganizationFeedCondition? condition,
    required CloudAssetOrganizationFeedOutputConfig feedOutputConfig,
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
           'org_id': orgId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'feed_output_config': TfArg.literal(feedOutputConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudAssetOrganizationFeedSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudAssetOrganizationFeed>`.
  RefTo<GoogleCloudAssetOrganizationFeed> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');
}
