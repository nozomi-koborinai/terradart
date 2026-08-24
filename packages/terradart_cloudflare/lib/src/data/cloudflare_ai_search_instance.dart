// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_instance`.
const Set<String> _cloudflareAiSearchInstanceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class DataAiSearchInstanceFilter {
  const DataAiSearchInstanceFilter({
    this.namespace,
    this.orderBy,
    this.orderByDirection,
    this.search,
  });

  final TfArg<String>? namespace;

  final TfArg<String>? orderBy;

  final TfArg<String>? orderByDirection;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (orderBy != null) 'order_by': orderBy!.toTfJson(),
    if (orderByDirection != null)
      'order_by_direction': orderByDirection!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ai_search_instance`.
final class DataCloudflareAiSearchInstance extends Data {
  static const String tfType = 'cloudflare_ai_search_instance';

  DataCloudflareAiSearchInstance({
    required super.localName,
    TfArg<String>? accountId,
    DataAiSearchInstanceFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ai_gateway_id` attribute.
  TfRef<String> get aiGatewayId =>
      TfRef.attribute<String>(this, 'ai_gateway_id');

  /// Reference to `aisearch_model` attribute.
  TfRef<String> get aisearchModel =>
      TfRef.attribute<String>(this, 'aisearch_model');

  /// Reference to `cache` attribute.
  TfRef<bool> get cache => TfRef.attribute<bool>(this, 'cache');

  /// Reference to `cache_threshold` attribute.
  TfRef<String> get cacheThreshold =>
      TfRef.attribute<String>(this, 'cache_threshold');

  /// Reference to `cache_ttl` attribute.
  TfRef<num> get cacheTtl => TfRef.attribute<num>(this, 'cache_ttl');

  /// Reference to `chunk_overlap` attribute.
  TfRef<num> get chunkOverlap => TfRef.attribute<num>(this, 'chunk_overlap');

  /// Reference to `chunk_size` attribute.
  TfRef<num> get chunkSize => TfRef.attribute<num>(this, 'chunk_size');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `embedding_model` attribute.
  TfRef<String> get embeddingModel =>
      TfRef.attribute<String>(this, 'embedding_model');

  /// Reference to `enable` attribute.
  TfRef<bool> get enable => TfRef.attribute<bool>(this, 'enable');

  /// Reference to `engine_version` attribute.
  TfRef<num> get engineVersion => TfRef.attribute<num>(this, 'engine_version');

  /// Reference to `fusion_method` attribute.
  TfRef<String> get fusionMethod =>
      TfRef.attribute<String>(this, 'fusion_method');

  /// Reference to `hybrid_search_enabled` attribute.
  TfRef<bool> get hybridSearchEnabled =>
      TfRef.attribute<bool>(this, 'hybrid_search_enabled');

  /// Reference to `last_activity` attribute.
  TfRef<String> get lastActivity =>
      TfRef.attribute<String>(this, 'last_activity');

  /// Reference to `max_num_results` attribute.
  TfRef<num> get maxNumResults => TfRef.attribute<num>(this, 'max_num_results');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `public_endpoint_id` attribute.
  TfRef<String> get publicEndpointId =>
      TfRef.attribute<String>(this, 'public_endpoint_id');

  /// Reference to `reranking` attribute.
  TfRef<bool> get reranking => TfRef.attribute<bool>(this, 'reranking');

  /// Reference to `reranking_model` attribute.
  TfRef<String> get rerankingModel =>
      TfRef.attribute<String>(this, 'reranking_model');

  /// Reference to `rewrite_model` attribute.
  TfRef<String> get rewriteModel =>
      TfRef.attribute<String>(this, 'rewrite_model');

  /// Reference to `rewrite_query` attribute.
  TfRef<bool> get rewriteQuery => TfRef.attribute<bool>(this, 'rewrite_query');

  /// Reference to `score_threshold` attribute.
  TfRef<num> get scoreThreshold =>
      TfRef.attribute<num>(this, 'score_threshold');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `sync_interval` attribute.
  TfRef<num> get syncInterval => TfRef.attribute<num>(this, 'sync_interval');

  /// Reference to `token_id` attribute.
  TfRef<String> get tokenId => TfRef.attribute<String>(this, 'token_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
