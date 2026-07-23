// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_index`.
const Set<String> _googleVertexAiIndexSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexEncryptionSpec {
  const VertexAiIndexEncryptionSpec({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
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

  final VertexAiIndexMetadataConfig config;

  Map<String, Object?> encode() => {
    if (contentsDeltaUri != null)
      'contents_delta_uri': contentsDeltaUri!.toTfJson(),
    if (isCompleteOverwrite != null)
      'is_complete_overwrite': isCompleteOverwrite!.toTfJson(),
    'config': config.encode(),
  };
}

/// Typed helper for the `metadata.config` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexMetadataConfig {
  const VertexAiIndexMetadataConfig({
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

  final VertexAiIndexMetadataConfigAlgorithmConfig? algorithmConfig;

  Map<String, Object?> encode() => {
    if (approximateNeighborsCount != null)
      'approximate_neighbors_count': approximateNeighborsCount!.toTfJson(),
    'dimensions': dimensions.toTfJson(),
    if (distanceMeasureType != null)
      'distance_measure_type': distanceMeasureType!.toTfJson(),
    if (featureNormType != null)
      'feature_norm_type': featureNormType!.toTfJson(),
    if (shardSize != null) 'shard_size': shardSize!.toTfJson(),
    if (algorithmConfig != null) 'algorithm_config': algorithmConfig!.encode(),
  };
}

/// Typed helper for the `metadata.config.algorithm_config` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexMetadataConfigAlgorithmConfig {
  const VertexAiIndexMetadataConfigAlgorithmConfig({
    this.bruteForceConfig,
    this.treeAhConfig,
  });

  final VertexAiIndexMetadataConfigAlgorithmConfigBruteForceConfig?
  bruteForceConfig;

  final VertexAiIndexMetadataConfigAlgorithmConfigTreeAhConfig? treeAhConfig;

  Map<String, Object?> encode() => {
    if (bruteForceConfig != null)
      'brute_force_config': bruteForceConfig!.encode(),
    if (treeAhConfig != null) 'tree_ah_config': treeAhConfig!.encode(),
  };
}

/// Typed helper for the `metadata.config.algorithm_config.brute_force_config` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexMetadataConfigAlgorithmConfigBruteForceConfig {
  const VertexAiIndexMetadataConfigAlgorithmConfigBruteForceConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `metadata.config.algorithm_config.tree_ah_config` block of
/// `google_vertex_ai_index` (derived from provider schema).
@immutable
final class VertexAiIndexMetadataConfigAlgorithmConfigTreeAhConfig {
  const VertexAiIndexMetadataConfigAlgorithmConfigTreeAhConfig({
    this.leafNodeEmbeddingCount,
    this.leafNodesToSearchPercent,
  });

  final TfArg<num>? leafNodeEmbeddingCount;

  final TfArg<num>? leafNodesToSearchPercent;

  Map<String, Object?> encode() => {
    if (leafNodeEmbeddingCount != null)
      'leaf_node_embedding_count': leafNodeEmbeddingCount!.toTfJson(),
    if (leafNodesToSearchPercent != null)
      'leaf_nodes_to_search_percent': leafNodesToSearchPercent!.toTfJson(),
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
///   localName: 'idx',
///   displayName: TfArg.literal('terradart-idx'),
///   region: TfArg.literal('us-central1'),
///   indexUpdateMethod: TfArg.literal('STREAM_UPDATE'),
///   metadata: VertexAiIndexMetadata(
///     config: VertexAiIndexMetadataConfig(
///       dimensions: TfArg.literal(128),
///       approximateNeighborsCount: TfArg.literal(10),
///       distanceMeasureType: TfArg.literal('DOT_PRODUCT_DISTANCE'),
///       algorithmConfig: VertexAiIndexMetadataConfigAlgorithmConfig(
///         treeAhConfig: VertexAiIndexMetadataConfigAlgorithmConfigTreeAhConfig(
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

  GoogleVertexAiIndex({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           'metadata': TfArg.literal(metadata.encode()),
           if (indexUpdateMethod != null)
             'index_update_method': indexUpdateMethod,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiIndexSensitive;

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
