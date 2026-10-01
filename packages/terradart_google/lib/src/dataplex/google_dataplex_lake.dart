// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_lake`.
const Set<String> _googleDataplexLakeSensitive = <String>{};

/// Typed helper for the `metastore` block of
/// `google_dataplex_lake` (derived from provider schema).
@immutable
final class DataplexLakeMetastore {
  const DataplexLakeMetastore({this.service});

  final TfArg<String>? service;

  @internal
  Map<String, Object?> encode() => {'service': ?service?.toTfJson()};
}

/// Factory wrapper for `google_dataplex_lake`.
///
/// Only used to generate IAM resources
final class GoogleDataplexLake extends Resource {
  static const String tfType = 'google_dataplex_lake';

  GoogleDataplexLake(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    DataplexLakeMetastore? metastore,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'display_name': ?displayName,
           'description': ?description,
           'labels': ?labels,
           if (metastore != null)
             'metastore': TfArg.literal(metastore.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexLakeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexLake>`.
  RefTo<GoogleDataplexLake> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_status` attribute.
  TfRef<List<Map<String, Object?>>> get assetStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'asset_status');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `metastore_status` attribute.
  TfRef<List<Map<String, Object?>>> get metastoreStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metastore_status');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
