// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store_featureview`.
const Set<String> _googleVertexAiFeatureOnlineStoreFeatureviewSensitive =
    <String>{};

/// Exactly one of `big_query_source`, `feature_registry_source` on `google_vertex_ai_feature_online_store_featureview`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.bigQuerySource(...)`.
sealed class VertexAiFeatureOnlineStoreFeatureviewSource {
  const VertexAiFeatureOnlineStoreFeatureviewSource();

  /// Sets `big_query_source`.
  const factory VertexAiFeatureOnlineStoreFeatureviewSource.bigQuerySource(
    VertexAiFeatureOnlineStoreFeatureviewBigQuerySource bigQuerySource,
  ) = VertexAiFeatureOnlineStoreFeatureviewBigQuerySourceChoice;

  /// Sets `feature_registry_source`.
  const factory VertexAiFeatureOnlineStoreFeatureviewSource.featureRegistrySource(
    VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource
    featureRegistrySource,
  ) = VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VertexAiFeatureOnlineStoreFeatureviewSource.bigQuerySource] choice: sets `big_query_source`.
final class VertexAiFeatureOnlineStoreFeatureviewBigQuerySourceChoice
    extends VertexAiFeatureOnlineStoreFeatureviewSource {
  const VertexAiFeatureOnlineStoreFeatureviewBigQuerySourceChoice(
    this.bigQuerySource,
  );

  final VertexAiFeatureOnlineStoreFeatureviewBigQuerySource bigQuerySource;

  @override
  String get blockKey => 'big_query_source';

  @override
  Map<String, Object?> encode() => {
    'big_query_source': bigQuerySource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'big_query_source': TfArg.literal(bigQuerySource.encode()),
  };
}

/// The [VertexAiFeatureOnlineStoreFeatureviewSource.featureRegistrySource] choice: sets `feature_registry_source`.
final class VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySourceChoice
    extends VertexAiFeatureOnlineStoreFeatureviewSource {
  const VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySourceChoice(
    this.featureRegistrySource,
  );

  final VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource
  featureRegistrySource;

  @override
  String get blockKey => 'feature_registry_source';

  @override
  Map<String, Object?> encode() => {
    'feature_registry_source': featureRegistrySource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'feature_registry_source': TfArg.literal(featureRegistrySource.encode()),
  };
}

/// Typed helper for the `big_query_source` block of
/// `google_vertex_ai_feature_online_store_featureview` (derived from provider schema).
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewBigQuerySource {
  const VertexAiFeatureOnlineStoreFeatureviewBigQuerySource({
    required this.entityIdColumns,
    required this.uri,
  });

  final TfArg<List<String>> entityIdColumns;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'entity_id_columns': entityIdColumns.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `feature_registry_source` block of
/// `google_vertex_ai_feature_online_store_featureview` (derived from provider schema).
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource {
  const VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource({
    this.projectNumber,
    required this.featureGroups,
  });

  final TfArg<String>? projectNumber;

  final List<VertexAiFeatureOnlineStoreFeatureviewFeatureGroups> featureGroups;

  Map<String, Object?> encode() => {
    'project_number': ?projectNumber?.toTfJson(),
    'feature_groups': [for (final e in featureGroups) e.encode()],
  };
}

/// Typed helper for the `feature_registry_source.feature_groups` block of
/// `google_vertex_ai_feature_online_store_featureview` (derived from provider schema).
@immutable
final class VertexAiFeatureOnlineStoreFeatureviewFeatureGroups {
  const VertexAiFeatureOnlineStoreFeatureviewFeatureGroups({
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

/// At most one of `cron`, `continuous` on the `sync_config` block of `google_vertex_ai_feature_online_store_featureview`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cron(...)`.
sealed class VertexAiFeatureOnlineStoreFeatureviewSyncConfig {
  const VertexAiFeatureOnlineStoreFeatureviewSyncConfig();

  /// Sets `cron`.
  const factory VertexAiFeatureOnlineStoreFeatureviewSyncConfig.cron(
    TfArg<String> cron,
  ) = VertexAiFeatureOnlineStoreFeatureviewSyncConfigCron;

  /// Sets `continuous`.
  const factory VertexAiFeatureOnlineStoreFeatureviewSyncConfig.continuous(
    TfArg<bool> continuous,
  ) = VertexAiFeatureOnlineStoreFeatureviewSyncConfigContinuous;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiFeatureOnlineStoreFeatureviewSyncConfig.cron] choice: sets `cron`.
final class VertexAiFeatureOnlineStoreFeatureviewSyncConfigCron
    extends VertexAiFeatureOnlineStoreFeatureviewSyncConfig {
  const VertexAiFeatureOnlineStoreFeatureviewSyncConfigCron(this.cron);

  final TfArg<String> cron;

  @override
  String get blockKey => 'cron';

  @override
  Map<String, Object?> encode() => {'cron': cron.toTfJson()};
}

/// The [VertexAiFeatureOnlineStoreFeatureviewSyncConfig.continuous] choice: sets `continuous`.
final class VertexAiFeatureOnlineStoreFeatureviewSyncConfigContinuous
    extends VertexAiFeatureOnlineStoreFeatureviewSyncConfig {
  const VertexAiFeatureOnlineStoreFeatureviewSyncConfigContinuous(
    this.continuous,
  );

  final TfArg<bool> continuous;

  @override
  String get blockKey => 'continuous';

  @override
  Map<String, Object?> encode() => {'continuous': continuous.toTfJson()};
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
/// `.bigQuerySource(...)` or `.featureRegistrySource(...)`.
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
/// final fv = GoogleVertexAiFeatureOnlineStoreFeatureview(
///   localName: 'fv',
///   featureOnlineStore: .ref(fos.nameRef),
///   name: .literal('customer_view'),
///   region: .literal('us-central1'),
///   source: .featureRegistrySource(
///     VertexAiFeatureOnlineStoreFeatureviewFeatureRegistrySource(
///       featureGroups: [
///         VertexAiFeatureOnlineStoreFeatureviewFeatureGroups(
///           featureGroupId: .literal('terradart_customer_features'),
///           featureIds: .literal(['feature_score']),
///         ),
///       ],
///     ),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feature_online_store': featureOnlineStore,
           'name': ?name,
           'region': ?region,
           if (syncConfig != null)
             'sync_config': TfArg.literal(syncConfig.encode()),
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           ...source.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreFeatureviewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureOnlineStoreFeatureview>`.
  RefTo<GoogleVertexAiFeatureOnlineStoreFeatureview> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `feature_online_store` attribute.
  TfRef<String> get featureOnlineStoreRef =>
      TfRef.attribute<String>(this, 'feature_online_store');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
