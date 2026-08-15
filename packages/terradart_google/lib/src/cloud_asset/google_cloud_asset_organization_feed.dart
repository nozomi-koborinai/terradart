// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
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

  final TfArg<String> topic;

  Map<String, Object?> encode() => {'topic': topic.toTfJson()};
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (assetNames != null) 'asset_names': assetNames,
           if (assetTypes != null) 'asset_types': assetTypes,
           'billing_project': billingProject,
           if (contentType != null) 'content_type': contentType,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'feed_id': feedId,
           'org_id': orgId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'feed_output_config': TfArg.literal(feedOutputConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudAssetOrganizationFeedSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
