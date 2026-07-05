// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>>? aspectTypes;

  final TfArg<List<Object?>>? changeTypes;

  final TfArg<List<Object?>>? entryTypes;

  Map<String, Object?> encode() => {
    if (aspectTypes != null) 'aspect_types': aspectTypes!.toTfJson(),
    if (changeTypes != null) 'change_types': changeTypes!.toTfJson(),
    if (entryTypes != null) 'entry_types': entryTypes!.toTfJson(),
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

  final TfArg<List<Object?>>? entryGroups;

  final TfArg<bool>? organizationLevel;

  final TfArg<List<Object?>>? projects;

  Map<String, Object?> encode() => {
    if (entryGroups != null) 'entry_groups': entryGroups!.toTfJson(),
    if (organizationLevel != null)
      'organization_level': organizationLevel!.toTfJson(),
    if (projects != null) 'projects': projects!.toTfJson(),
  };
}

/// Factory wrapper for `google_dataplex_metadata_feed`.
///
/// A Dataplex Metadata Feed monitors Dataplex metadata entries in a specified
/// scope and publishes notifications of changes to a Cloud Pub/Sub topic.
final class GoogleDataplexMetadataFeed extends Resource {
  static const String tfType = 'google_dataplex_metadata_feed';

  GoogleDataplexMetadataFeed({
    required super.localName,
    required TfArg<String> metadataFeedId,
    required TfArg<String> location,
    required DataplexMetadataFeedScope scope,
    DataplexMetadataFeedFilters? filters,
    TfArg<String>? pubsubTopic,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metadata_feed_id': metadataFeedId,
           'location': location,
           'scope': TfArg.literal(scope.encode()),
           if (filters != null) 'filters': TfArg.literal(filters.encode()),
           if (pubsubTopic != null) 'pubsub_topic': pubsubTopic,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexMetadataFeedSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `metadata_feed_id` for cross-stack refs.
  TfRef<String> get metadataFeedIdRef =>
      TfRef.attribute<String>(this, 'metadata_feed_id');
}
