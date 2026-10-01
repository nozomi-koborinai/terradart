// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_dataplex_metadata_feed`.
const Set<String> _googleDataplexMetadataFeedSensitive = <String>{};

/// Typed helper for the `filters` block of
/// `google_dataplex_metadata_feed` (derived from provider schema).
@immutable
final class DataplexMetadataFeedFilters {
  const DataplexMetadataFeedFilters({
    this.aspectTypes,
    this.changeTypes,
    this.entryTypes,
  });

  final TfArg<List<String>>? aspectTypes;

  final TfArg<List<String>>? changeTypes;

  final TfArg<List<String>>? entryTypes;

  Map<String, Object?> encode() => {
    'aspect_types': ?aspectTypes?.toTfJson(),
    'change_types': ?changeTypes?.toTfJson(),
    'entry_types': ?entryTypes?.toTfJson(),
  };
}

/// Typed helper for the `scope` block of
/// `google_dataplex_metadata_feed` (derived from provider schema).
@immutable
final class DataplexMetadataFeedScope {
  const DataplexMetadataFeedScope({
    this.entryGroups,
    this.organizationLevel,
    this.projects,
  });

  final TfArg<List<String>>? entryGroups;

  final TfArg<bool>? organizationLevel;

  final TfArg<List<String>>? projects;

  Map<String, Object?> encode() => {
    'entry_groups': ?entryGroups?.toTfJson(),
    'organization_level': ?organizationLevel?.toTfJson(),
    'projects': ?projects?.toTfJson(),
  };
}

/// Factory wrapper for `google_dataplex_metadata_feed`.
///
/// A Dataplex Metadata Feed monitors Dataplex metadata entries in a specified
/// scope and publishes notifications of changes to a Cloud Pub/Sub topic.
final class GoogleDataplexMetadataFeed extends Resource {
  static const String tfType = 'google_dataplex_metadata_feed';

  GoogleDataplexMetadataFeed(
    super.localName, {
    required TfArg<String> metadataFeedId,
    required TfArg<String> location,
    required DataplexMetadataFeedScope scope,
    DataplexMetadataFeedFilters? filters,
    RefTo<GooglePubsubTopic>? pubsubTopic,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata_feed_id': metadataFeedId,
           'location': location,
           'scope': TfArg.literal(scope.encode()),
           if (filters != null) 'filters': TfArg.literal(filters.encode()),
           'pubsub_topic': ?pubsubTopic?.encodeAs('id'),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexMetadataFeedSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexMetadataFeed>`.
  RefTo<GoogleDataplexMetadataFeed> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `metadata_feed_id` attribute.
  TfRef<String> get metadataFeedId =>
      TfRef.attribute<String>(this, 'metadata_feed_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `pubsub_topic` attribute.
  TfRef<String> get pubsubTopic =>
      TfRef.attribute<String>(this, 'pubsub_topic');
}
