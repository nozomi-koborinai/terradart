// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_search_instance`.
const Set<String> _cloudflareAiSearchInstanceSensitive = <String>{};

/// Typed helper for the `custom_metadata` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceCustomMetadata {
  const AiSearchInstanceCustomMetadata({
    required this.dataType,
    required this.fieldName,
  });

  final TfArg<String> dataType;

  final TfArg<String> fieldName;

  Map<String, Object?> encode() => {
    'data_type': dataType.toTfJson(),
    'field_name': fieldName.toTfJson(),
  };
}

/// Typed helper for the `index_method` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceIndexMethod {
  const AiSearchInstanceIndexMethod({
    required this.keyword,
    required this.vector,
  });

  final TfArg<bool> keyword;

  final TfArg<bool> vector;

  Map<String, Object?> encode() => {
    'keyword': keyword.toTfJson(),
    'vector': vector.toTfJson(),
  };
}

/// Typed helper for the `indexing_options` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceIndexingOptions {
  const AiSearchInstanceIndexingOptions({this.keywordTokenizer});

  final TfArg<String>? keywordTokenizer;

  Map<String, Object?> encode() => {
    if (keywordTokenizer != null)
      'keyword_tokenizer': keywordTokenizer!.toTfJson(),
  };
}

/// Typed helper for the `metadata` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceMetadata {
  const AiSearchInstanceMetadata({
    this.createdFromAisearchWizard,
    this.workerDomain,
  });

  final TfArg<bool>? createdFromAisearchWizard;

  final TfArg<String>? workerDomain;

  Map<String, Object?> encode() => {
    if (createdFromAisearchWizard != null)
      'created_from_aisearch_wizard': createdFromAisearchWizard!.toTfJson(),
    if (workerDomain != null) 'worker_domain': workerDomain!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint_params` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstancePublicEndpointParams {
  const AiSearchInstancePublicEndpointParams({
    this.authorizedHosts,
    this.customDomains,
    this.defaultDomainEnabled,
    this.enabled,
    this.chatCompletionsEndpoint,
    this.mcp,
    this.rateLimit,
    this.searchEndpoint,
  });

  final TfArg<List<Object?>>? authorizedHosts;

  final TfArg<List<Object?>>? customDomains;

  final TfArg<bool>? defaultDomainEnabled;

  final TfArg<bool>? enabled;

  final AiSearchInstancePublicEndpointParamsChatCompletionsEndpoint?
  chatCompletionsEndpoint;

  final AiSearchInstancePublicEndpointParamsMcp? mcp;

  final AiSearchInstancePublicEndpointParamsRateLimit? rateLimit;

  final AiSearchInstancePublicEndpointParamsSearchEndpoint? searchEndpoint;

  Map<String, Object?> encode() => {
    if (authorizedHosts != null)
      'authorized_hosts': authorizedHosts!.toTfJson(),
    if (customDomains != null) 'custom_domains': customDomains!.toTfJson(),
    if (defaultDomainEnabled != null)
      'default_domain_enabled': defaultDomainEnabled!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (chatCompletionsEndpoint != null)
      'chat_completions_endpoint': chatCompletionsEndpoint!.encode(),
    if (mcp != null) 'mcp': mcp!.encode(),
    if (rateLimit != null) 'rate_limit': rateLimit!.encode(),
    if (searchEndpoint != null) 'search_endpoint': searchEndpoint!.encode(),
  };
}

/// Typed helper for the `public_endpoint_params.chat_completions_endpoint` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstancePublicEndpointParamsChatCompletionsEndpoint {
  const AiSearchInstancePublicEndpointParamsChatCompletionsEndpoint({
    this.disabled,
  });

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint_params.mcp` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstancePublicEndpointParamsMcp {
  const AiSearchInstancePublicEndpointParamsMcp({
    this.description,
    this.disabled,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint_params.rate_limit` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstancePublicEndpointParamsRateLimit {
  const AiSearchInstancePublicEndpointParamsRateLimit({
    this.periodMs,
    this.requests,
    this.technique,
  });

  final TfArg<num>? periodMs;

  final TfArg<num>? requests;

  final TfArg<String>? technique;

  Map<String, Object?> encode() => {
    if (periodMs != null) 'period_ms': periodMs!.toTfJson(),
    if (requests != null) 'requests': requests!.toTfJson(),
    if (technique != null) 'technique': technique!.toTfJson(),
  };
}

/// Typed helper for the `public_endpoint_params.search_endpoint` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstancePublicEndpointParamsSearchEndpoint {
  const AiSearchInstancePublicEndpointParamsSearchEndpoint({this.disabled});

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Typed helper for the `retrieval_options` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceRetrievalOptions {
  const AiSearchInstanceRetrievalOptions({this.keywordMatchMode, this.boostBy});

  final TfArg<String>? keywordMatchMode;

  final List<AiSearchInstanceRetrievalOptionsBoostBy>? boostBy;

  Map<String, Object?> encode() => {
    if (keywordMatchMode != null)
      'keyword_match_mode': keywordMatchMode!.toTfJson(),
    if (boostBy != null) 'boost_by': [for (final e in boostBy!) e.encode()],
  };
}

/// Typed helper for the `retrieval_options.boost_by` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceRetrievalOptionsBoostBy {
  const AiSearchInstanceRetrievalOptionsBoostBy({
    this.direction,
    required this.field,
  });

  final TfArg<String>? direction;

  final TfArg<String> field;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    'field': field.toTfJson(),
  };
}

/// Typed helper for the `source_params` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceSourceParams {
  const AiSearchInstanceSourceParams({
    this.excludeItems,
    this.includeItems,
    this.prefix,
    this.r2Jurisdiction,
    this.webCrawler,
  });

  final TfArg<List<Object?>>? excludeItems;

  final TfArg<List<Object?>>? includeItems;

  final TfArg<String>? prefix;

  final TfArg<String>? r2Jurisdiction;

  final AiSearchInstanceSourceParamsWebCrawler? webCrawler;

  Map<String, Object?> encode() => {
    if (excludeItems != null) 'exclude_items': excludeItems!.toTfJson(),
    if (includeItems != null) 'include_items': includeItems!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (r2Jurisdiction != null) 'r2_jurisdiction': r2Jurisdiction!.toTfJson(),
    if (webCrawler != null) 'web_crawler': webCrawler!.encode(),
  };
}

/// Typed helper for the `source_params.web_crawler` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceSourceParamsWebCrawler {
  const AiSearchInstanceSourceParamsWebCrawler({
    this.parseType,
    this.parseOptions,
    this.storeOptions,
  });

  final TfArg<String>? parseType;

  final AiSearchInstanceSourceParamsWebCrawlerParseOptions? parseOptions;

  final AiSearchInstanceSourceParamsWebCrawlerStoreOptions? storeOptions;

  Map<String, Object?> encode() => {
    if (parseType != null) 'parse_type': parseType!.toTfJson(),
    if (parseOptions != null) 'parse_options': parseOptions!.encode(),
    if (storeOptions != null) 'store_options': storeOptions!.encode(),
  };
}

/// Typed helper for the `source_params.web_crawler.parse_options` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceSourceParamsWebCrawlerParseOptions {
  const AiSearchInstanceSourceParamsWebCrawlerParseOptions({
    this.includeHeaders,
    this.includeImages,
    this.specificSitemaps,
    this.useBrowserRendering,
    this.contentSelector,
  });

  final TfArg<Map<String, String>>? includeHeaders;

  final TfArg<bool>? includeImages;

  final TfArg<List<Object?>>? specificSitemaps;

  final TfArg<bool>? useBrowserRendering;

  final List<AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>?
  contentSelector;

  Map<String, Object?> encode() => {
    if (includeHeaders != null) 'include_headers': includeHeaders!.toTfJson(),
    if (includeImages != null) 'include_images': includeImages!.toTfJson(),
    if (specificSitemaps != null)
      'specific_sitemaps': specificSitemaps!.toTfJson(),
    if (useBrowserRendering != null)
      'use_browser_rendering': useBrowserRendering!.toTfJson(),
    if (contentSelector != null)
      'content_selector': [for (final e in contentSelector!) e.encode()],
  };
}

/// Typed helper for the `source_params.web_crawler.parse_options.content_selector` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector {
  const AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector({
    required this.path,
    required this.selector,
  });

  final TfArg<String> path;

  final TfArg<String> selector;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'selector': selector.toTfJson(),
  };
}

/// Typed helper for the `source_params.web_crawler.store_options` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceSourceParamsWebCrawlerStoreOptions {
  const AiSearchInstanceSourceParamsWebCrawlerStoreOptions({
    this.r2Jurisdiction,
    required this.storageId,
    this.storageType,
  });

  final TfArg<String>? r2Jurisdiction;

  final TfArg<String> storageId;

  final TfArg<String>? storageType;

  Map<String, Object?> encode() => {
    if (r2Jurisdiction != null) 'r2_jurisdiction': r2Jurisdiction!.toTfJson(),
    'storage_id': storageId.toTfJson(),
    if (storageType != null) 'storage_type': storageType!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ai_search_instance`.
final class CloudflareAiSearchInstance extends Resource {
  static const String tfType = 'cloudflare_ai_search_instance';

  CloudflareAiSearchInstance({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? aiGatewayId,
    TfArg<String>? aisearchModel,
    TfArg<bool>? cache,
    TfArg<String>? cacheThreshold,
    TfArg<num>? cacheTtl,
    TfArg<bool>? chunk,
    TfArg<num>? chunkOverlap,
    TfArg<num>? chunkSize,
    TfArg<String>? embeddingModel,
    TfArg<String>? fusionMethod,
    TfArg<bool>? hybridSearchEnabled,
    TfArg<num>? maxNumResults,
    TfArg<bool>? paused,
    TfArg<bool>? reranking,
    TfArg<String>? rerankingModel,
    TfArg<String>? rewriteModel,
    TfArg<bool>? rewriteQuery,
    TfArg<num>? scoreThreshold,
    TfArg<String>? source,
    TfArg<bool>? summarization,
    TfArg<String>? summarizationModel,
    TfArg<num>? syncInterval,
    TfArg<String>? systemPromptAisearch,
    TfArg<String>? systemPromptIndexSummarization,
    TfArg<String>? systemPromptRewriteQuery,
    TfArg<String>? tokenId,
    TfArg<String>? type,
    List<AiSearchInstanceCustomMetadata>? customMetadata,
    AiSearchInstanceIndexMethod? indexMethod,
    AiSearchInstanceIndexingOptions? indexingOptions,
    AiSearchInstanceMetadata? metadata,
    AiSearchInstancePublicEndpointParams? publicEndpointParams,
    AiSearchInstanceRetrievalOptions? retrievalOptions,
    AiSearchInstanceSourceParams? sourceParams,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (aiGatewayId != null) 'ai_gateway_id': aiGatewayId,
           if (aisearchModel != null) 'aisearch_model': aisearchModel,
           if (cache != null) 'cache': cache,
           if (cacheThreshold != null) 'cache_threshold': cacheThreshold,
           if (cacheTtl != null) 'cache_ttl': cacheTtl,
           if (chunk != null) 'chunk': chunk,
           if (chunkOverlap != null) 'chunk_overlap': chunkOverlap,
           if (chunkSize != null) 'chunk_size': chunkSize,
           if (embeddingModel != null) 'embedding_model': embeddingModel,
           if (fusionMethod != null) 'fusion_method': fusionMethod,
           if (hybridSearchEnabled != null)
             'hybrid_search_enabled': hybridSearchEnabled,
           if (maxNumResults != null) 'max_num_results': maxNumResults,
           if (paused != null) 'paused': paused,
           if (reranking != null) 'reranking': reranking,
           if (rerankingModel != null) 'reranking_model': rerankingModel,
           if (rewriteModel != null) 'rewrite_model': rewriteModel,
           if (rewriteQuery != null) 'rewrite_query': rewriteQuery,
           if (scoreThreshold != null) 'score_threshold': scoreThreshold,
           if (source != null) 'source': source,
           if (summarization != null) 'summarization': summarization,
           if (summarizationModel != null)
             'summarization_model': summarizationModel,
           if (syncInterval != null) 'sync_interval': syncInterval,
           if (systemPromptAisearch != null)
             'system_prompt_aisearch': systemPromptAisearch,
           if (systemPromptIndexSummarization != null)
             'system_prompt_index_summarization':
                 systemPromptIndexSummarization,
           if (systemPromptRewriteQuery != null)
             'system_prompt_rewrite_query': systemPromptRewriteQuery,
           if (tokenId != null) 'token_id': tokenId,
           if (type != null) 'type': type,
           if (customMetadata != null)
             'custom_metadata': TfArg.literal([
               for (final e in customMetadata) e.encode(),
             ]),
           if (indexMethod != null)
             'index_method': TfArg.literal(indexMethod.encode()),
           if (indexingOptions != null)
             'indexing_options': TfArg.literal(indexingOptions.encode()),
           if (metadata != null) 'metadata': TfArg.literal(metadata.encode()),
           if (publicEndpointParams != null)
             'public_endpoint_params': TfArg.literal(
               publicEndpointParams.encode(),
             ),
           if (retrievalOptions != null)
             'retrieval_options': TfArg.literal(retrievalOptions.encode()),
           if (sourceParams != null)
             'source_params': TfArg.literal(sourceParams.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `enable` attribute.
  TfRef<bool> get enable => TfRef.attribute<bool>(this, 'enable');

  /// Reference to `engine_version` attribute.
  TfRef<num> get engineVersion => TfRef.attribute<num>(this, 'engine_version');

  /// Reference to `last_activity` attribute.
  TfRef<String> get lastActivity =>
      TfRef.attribute<String>(this, 'last_activity');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `public_endpoint_id` attribute.
  TfRef<String> get publicEndpointId =>
      TfRef.attribute<String>(this, 'public_endpoint_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `vectorize_name` attribute.
  TfRef<String> get vectorizeName =>
      TfRef.attribute<String>(this, 'vectorize_name');
}
