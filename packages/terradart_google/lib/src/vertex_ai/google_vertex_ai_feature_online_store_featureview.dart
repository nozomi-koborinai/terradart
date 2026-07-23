// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store_featureview`.
const Set<String> _googleVertexAiFeatureOnlineStoreFeatureviewSensitive =
    <String>{};

// ===========================================================================
// VertexAiFeatureOnlineStoreFeatureviewSource — sealed (BQ | Registry)
// ===========================================================================

/// Data source for [GoogleVertexAiFeatureOnlineStoreFeatureview]. Sealed so
/// the MM `exactly_one_of` (`big_query_source` /
/// `feature_registry_source`) is exhaustive at the type level.
sealed class VertexAiFeatureOnlineStoreFeatureviewSource {
  const VertexAiFeatureOnlineStoreFeatureviewSource();

  String get blockKey;

  List<Map<String, Object?>> encode();
}

/// `big_query_source` — materialize a BigQuery view on each sync.
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewBigQuerySource
    extends VertexAiFeatureOnlineStoreFeatureviewSource {
  const VertexAiFeatureOnlineStoreFeatureviewBigQuerySource({
    required this.uri,
    required this.entityIdColumns,
  });

  final TfArg<String> uri;
  final TfArg<List<String>> entityIdColumns;

  @override
  String get blockKey => 'big_query_source';

  @override
  List<Map<String, Object?>> encode() => [
    {'uri': uri.toTfJson(), 'entity_id_columns': entityIdColumns.toTfJson()},
  ];
}

/// `feature_registry_source` — sync selected Feature Registry features.
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource
    extends VertexAiFeatureOnlineStoreFeatureviewSource {
  const VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource({
    required this.featureGroups,
    this.projectNumber,
  });

  final List<VertexAiFeatureOnlineStoreFeatureviewFeatureGroup> featureGroups;
  final TfArg<String>? projectNumber;

  @override
  String get blockKey => 'feature_registry_source';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'feature_groups': [for (final g in featureGroups) g.encode()],
      if (projectNumber != null) 'project_number': projectNumber!.toTfJson(),
    },
  ];
}

/// One Feature Registry group entry under
/// [VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource].
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewFeatureGroup {
  const VertexAiFeatureOnlineStoreFeatureviewFeatureGroup({
    required this.featureGroupId,
    required this.featureIds,
  });

  final TfArg<String> featureGroupId;
  final TfArg<List<String>> featureIds;

  Map<String, Object?> encode() => {
    'feature_group_id': featureGroupId.toTfJson(),
    'feature_ids': featureIds.toTfJson(),
  };
}

/// Optional `sync_config` block (`cron` and/or `continuous`).
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewSyncConfig {
  const VertexAiFeatureOnlineStoreFeatureviewSyncConfig({
    this.cron,
    this.continuous,
  });

  final TfArg<String>? cron;
  final TfArg<bool>? continuous;

  List<Map<String, Object?>> encode() => [
    {
      if (cron != null) 'cron': cron!.toTfJson(),
      if (continuous != null) 'continuous': continuous!.toTfJson(),
    },
  ];
}

/// Factory wrapper for `google_vertex_ai_feature_online_store_featureview`.
///
/// FeatureView is representation of values that the FeatureOnlineStore will
/// serve based on its syncConfig.
///
/// Vertex AI Feature Registry **FeatureView** under a
/// [GoogleVertexAiFeatureOnlineStore] — syncs features from BigQuery or a
/// Feature Registry group into online serving.
///
/// Choose exactly one [VertexAiFeatureOnlineStoreFeatureviewSource]:
/// - [VertexAiFeatureOnlineStoreFeatureviewBigQuerySource]
/// - [VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource]
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` has **no
/// FeatureView SKU** after MCP `list_skus` (online serving / storage SKUs
/// bill on the parent Feature Online Store). Deferred with the
/// never_apply Online Store Wave (no apply-smoke quickstart).
///
/// Requires [featureOnlineStore] and [source]. Enable
/// `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example (Feature Registry source):
/// ```dart
/// GoogleVertexAiFeatureOnlineStoreFeatureview(
///   localName: 'fv',
///   featureOnlineStore: TfArg.ref(store.nameRef),
///   name: TfArg.literal('customer_view'),
///   region: TfArg.literal('us-central1'),
///   source: VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource(
///     featureGroups: [
///       VertexAiFeatureOnlineStoreFeatureviewFeatureGroup(
///         featureGroupId: TfArg.literal('terradart_customer_features'),
///         featureIds: TfArg.literal(['feature_score']),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleVertexAiFeatureOnlineStoreFeatureview extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_featureview';

  GoogleVertexAiFeatureOnlineStoreFeatureview({
    required super.localName,
    required TfArg<String> featureOnlineStore,
    TfArg<String>? name,
    TfArg<String>? region,
    required VertexAiFeatureOnlineStoreFeatureviewSource source,
    VertexAiFeatureOnlineStoreFeatureviewSyncConfig? syncConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feature_online_store': featureOnlineStore,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (syncConfig != null)
             'sync_config': TfArg.literal(syncConfig.encode()),
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           source.blockKey: TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreFeatureviewSensitive;

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

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
