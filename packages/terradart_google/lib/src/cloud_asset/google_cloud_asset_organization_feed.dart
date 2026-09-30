// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_cloud_asset_organization_feed`.
const Set<String> _googleCloudAssetOrganizationFeedSensitive = <String>{};

/// Cloud Asset Organization Feed Content enum for `content_type`.
enum CloudAssetOrganizationFeedContentType implements TerraformEnum {
  contentTypeUnspecified('CONTENT_TYPE_UNSPECIFIED'),
  resource('RESOURCE'),
  iamPolicy('IAM_POLICY'),
  orgPolicy('ORG_POLICY'),
  osInventory('OS_INVENTORY'),
  accessPolicy('ACCESS_POLICY');

  const CloudAssetOrganizationFeedContentType(this.terraformValue);
  @override
  final String terraformValue;
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
final class CloudAssetOrganizationFeedFeedOutputConfig {
  const CloudAssetOrganizationFeedFeedOutputConfig({
    required this.pubsubDestination,
  });

  final CloudAssetOrganizationFeedFeedOutputConfigPubsubDestination
  pubsubDestination;

  Map<String, Object?> encode() => {
    'pubsub_destination': pubsubDestination.encode(),
  };
}

/// Typed helper for the `feed_output_config.pubsub_destination` block of
/// `google_cloud_asset_organization_feed` (derived from provider schema).
@immutable
final class CloudAssetOrganizationFeedFeedOutputConfigPubsubDestination {
  const CloudAssetOrganizationFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  final RefTo<GooglePubsubTopic> topic;

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

  GoogleCloudAssetOrganizationFeed({
    required super.localName,
    TfArg<List<String>>? assetNames,
    TfArg<List<String>>? assetTypes,
    required TfArg<String> billingProject,
    TfArg<CloudAssetOrganizationFeedContentType>? contentType,
    TfArg<String>? deletionPolicy,
    required TfArg<String> feedId,
    required TfArg<String> orgId,
    CloudAssetOrganizationFeedCondition? condition,
    required CloudAssetOrganizationFeedFeedOutputConfig feedOutputConfig,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_names` attribute.
  TfRef<List<String>> get assetNamesRef =>
      TfRef.attribute<List<String>>(this, 'asset_names');

  /// Reference to `asset_types` attribute.
  TfRef<List<String>> get assetTypesRef =>
      TfRef.attribute<List<String>>(this, 'asset_types');

  /// Reference to `billing_project` attribute.
  TfRef<String> get billingProjectRef =>
      TfRef.attribute<String>(this, 'billing_project');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentTypeRef =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `feed_id` attribute.
  TfRef<String> get feedIdRef => TfRef.attribute<String>(this, 'feed_id');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');
}
