// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_index`.
const Set<String> _googleVertexAiIndexSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexEncryptionSpec {
  const VertexAiIndexEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `metadata` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexMetadata {
  const VertexAiIndexMetadata({
    this.contentsDeltaUri,
    this.isCompleteOverwrite,
    required this.config,
  });

  final TfArg<String>? contentsDeltaUri;

  final TfArg<bool>? isCompleteOverwrite;

  final VertexAiIndexConfig config;

  @internal
  Map<String, Object?> encode() => {
    'contents_delta_uri': ?contentsDeltaUri?.toTfJson(),
    'is_complete_overwrite': ?isCompleteOverwrite?.toTfJson(),
    'config': config.encode(),
  };
}

/// Typed helper for the `metadata.config` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexConfig {
  const VertexAiIndexConfig({
    this.approximateNeighborsCount,
    required this.dimensions,
    this.distanceMeasureType,
    this.featureNormType,
    this.shardSize,
    this.algorithmConfig,
  });

  final TfArg<num>? approximateNeighborsCount;

  final TfArg<num> dimensions;

  final TfArg<String>? distanceMeasureType;

  final TfArg<String>? featureNormType;

  final TfArg<String>? shardSize;

  final VertexAiIndexAlgorithmConfig? algorithmConfig;

  @internal
  Map<String, Object?> encode() => {
    'approximate_neighbors_count': ?approximateNeighborsCount?.toTfJson(),
    'dimensions': dimensions.toTfJson(),
    'distance_measure_type': ?distanceMeasureType?.toTfJson(),
    'feature_norm_type': ?featureNormType?.toTfJson(),
    'shard_size': ?shardSize?.toTfJson(),
    'algorithm_config': ?algorithmConfig?.encode(),
  };
}

/// Exactly one of `tree_ah_config`, `brute_force_config` on the `metadata.config.algorithm_config` block of `google_vertex_ai_index`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.treeAhConfig(...)`.
sealed class VertexAiIndexAlgorithmConfig {
  const VertexAiIndexAlgorithmConfig();

  /// Sets `tree_ah_config`.
  const factory VertexAiIndexAlgorithmConfig.treeAhConfig(
    VertexAiIndexTreeAhConfig treeAhConfig,
  ) = VertexAiIndexAlgorithmConfigTreeAhConfig;

  /// Sets `brute_force_config`.
  const factory VertexAiIndexAlgorithmConfig.bruteForceConfig([
    VertexAiIndexBruteForceConfig bruteForceConfig,
  ]) = VertexAiIndexAlgorithmConfigBruteForceConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiIndexAlgorithmConfig.treeAhConfig] choice: sets `tree_ah_config`.
final class VertexAiIndexAlgorithmConfigTreeAhConfig
    extends VertexAiIndexAlgorithmConfig {
  const VertexAiIndexAlgorithmConfigTreeAhConfig(this.treeAhConfig);

  final VertexAiIndexTreeAhConfig treeAhConfig;

  @internal
  @override
  String get blockKey => 'tree_ah_config';

  @internal
  @override
  Map<String, Object?> encode() => {'tree_ah_config': treeAhConfig.encode()};
}

/// The [VertexAiIndexAlgorithmConfig.bruteForceConfig] choice: sets `brute_force_config`.
final class VertexAiIndexAlgorithmConfigBruteForceConfig
    extends VertexAiIndexAlgorithmConfig {
  const VertexAiIndexAlgorithmConfigBruteForceConfig([
    this.bruteForceConfig = const VertexAiIndexBruteForceConfig(),
  ]);

  final VertexAiIndexBruteForceConfig bruteForceConfig;

  @internal
  @override
  String get blockKey => 'brute_force_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'brute_force_config': bruteForceConfig.encode(),
  };
}

/// Typed helper for the `metadata.config.algorithm_config.brute_force_config` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexBruteForceConfig {
  const VertexAiIndexBruteForceConfig();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `metadata.config.algorithm_config.tree_ah_config` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexTreeAhConfig {
  const VertexAiIndexTreeAhConfig({
    this.leafNodeEmbeddingCount,
    this.leafNodesToSearchPercent,
  });

  final TfArg<num>? leafNodeEmbeddingCount;

  final TfArg<num>? leafNodesToSearchPercent;

  @internal
  Map<String, Object?> encode() => {
    'leaf_node_embedding_count': ?leafNodeEmbeddingCount?.toTfJson(),
    'leaf_nodes_to_search_percent': ?leafNodesToSearchPercent?.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_index`.
///
/// A representation of a collection of database items organized in a way that
/// allows for approximate nearest neighbor (a.k.a ANN) algorithms search.
///
/// Vertex AI **index** — Matching Engine / Vector Search ANN index
/// (batch or streaming update).
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` bills
/// **Vector Search Index Building** when content is ingested (SKU
/// `8724-DA51-DA95` **$3/GiBy**). Deploying the index onto an endpoint
/// adds separate **Index Serving** node-hours (see
/// [GoogleVertexAiIndexEndpointDeployedIndex]). Too expensive for
/// apply-smoke — factories ship without a quickstart.
///
/// Requires [displayName] and [metadata] (with `config.dimensions`).
/// Set [indexUpdateMethod] to `STREAM_UPDATE` for near-real-time upserts,
/// or leave the default `BATCH_UPDATE` and point
/// `metadata.contents_delta_uri` at a GCS directory of datapoints.
/// Enable `aiplatform.googleapis.com` via [GoogleProjectService] before
/// apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiIndex(
///   'idx',
///   displayName: TfArg.literal('terradart-idx'),
///   region: TfArg.literal('us-central1'),
///   indexUpdateMethod: TfArg.literal('STREAM_UPDATE'),
///   metadata: VertexAiIndexMetadata(
///     config: .new(
///       dimensions: TfArg.literal(128),
///       approximateNeighborsCount: TfArg.literal(10),
///       distanceMeasureType: TfArg.literal('DOT_PRODUCT_DISTANCE'),
///       algorithmConfig: .treeAhConfig(
///         .new(
///           leafNodeEmbeddingCount: TfArg.literal(1000),
///           leafNodesToSearchPercent: TfArg.literal(10),
///         ),
///       ),
///     ),
///   ),
/// );
/// ```
final class GoogleVertexAiIndex extends Resource {
  static const String tfType = 'google_vertex_ai_index';

  GoogleVertexAiIndex(
    super.localName, {
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<String>? description,
    required VertexAiIndexMetadata metadata,
    TfArg<String>? indexUpdateMethod,
    VertexAiIndexEncryptionSpec? encryptionSpec,
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
           'display_name': displayName,
           'region': ?region,
           'description': ?description,
           'metadata': TfArg.literal(metadata.encode()),
           'index_update_method': ?indexUpdateMethod,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiIndex>`.
  RefTo<GoogleVertexAiIndex> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deployed_indexes` attribute.
  TfRef<List<Map<String, Object?>>> get deployedIndexes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'deployed_indexes');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `index_stats` attribute.
  TfRef<List<Map<String, Object?>>> get indexStats =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'index_stats');

  /// Reference to `metadata_schema_uri` attribute.
  TfRef<String> get metadataSchemaUri =>
      TfRef.attribute<String>(this, 'metadata_schema_uri');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

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

  /// Reference to `index_update_method` attribute.
  TfRef<String> get indexUpdateMethod =>
      TfRef.attribute<String>(this, 'index_update_method');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
