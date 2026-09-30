// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_search_instance`.
const Set<String> _cloudflareAiSearchInstanceSensitive = <String>{};

/// Ai Search Instance Cache enum for `cache_threshold`.
enum AiSearchInstanceCacheThreshold implements TerraformEnum {
  superStrictMatch('super_strict_match'),
  closeEnough('close_enough'),
  flexibleFriend('flexible_friend'),
  anythingGoes('anything_goes');

  const AiSearchInstanceCacheThreshold(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ai Search Instance Fusion enum for `fusion_method`.
enum AiSearchInstanceFusionMethod implements TerraformEnum {
  max('max'),
  rrf('rrf');

  const AiSearchInstanceFusionMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ai Search Instance enum for `type`.
enum AiSearchInstanceType implements TerraformEnum {
  r2('r2'),
  webCrawler('web-crawler');

  const AiSearchInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_metadata` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceCustomMetadata {
  const AiSearchInstanceCustomMetadata({
    required this.dataType,
    required this.fieldName,
  });

  final TfArg<AiSearchInstanceCustomMetadataDataType> dataType;

  final TfArg<String> fieldName;

  Map<String, Object?> encode() => {
    'data_type': dataType.toTfJson(),
    'field_name': fieldName.toTfJson(),
  };
}

/// `data_type` — derived from the provider schema description.
enum AiSearchInstanceCustomMetadataDataType implements TerraformEnum {
  text('text'),
  number('number'),
  boolean('boolean'),
  datetime('datetime');

  const AiSearchInstanceCustomMetadataDataType(this.terraformValue);
  @override
  final String terraformValue;
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
  const AiSearchInstanceIndexingOptions({this.keywordTokenizer, this.useOcr});

  final TfArg<AiSearchInstanceIndexingOptionsKeywordTokenizer>?
  keywordTokenizer;

  final TfArg<bool>? useOcr;

  Map<String, Object?> encode() => {
    'keyword_tokenizer': ?keywordTokenizer?.toTfJson(),
    'use_ocr': ?useOcr?.toTfJson(),
  };
}

/// `keyword_tokenizer` — derived from the provider schema description.
enum AiSearchInstanceIndexingOptionsKeywordTokenizer implements TerraformEnum {
  porter('porter'),
  trigram('trigram');

  const AiSearchInstanceIndexingOptionsKeywordTokenizer(this.terraformValue);
  @override
  final String terraformValue;
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
    'created_from_aisearch_wizard': ?createdFromAisearchWizard?.toTfJson(),
    'worker_domain': ?workerDomain?.toTfJson(),
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

  final TfArg<List<String>>? authorizedHosts;

  final TfArg<List<String>>? customDomains;

  final TfArg<bool>? defaultDomainEnabled;

  final TfArg<bool>? enabled;

  final AiSearchInstancePublicEndpointParamsChatCompletionsEndpoint?
  chatCompletionsEndpoint;

  final AiSearchInstancePublicEndpointParamsMcp? mcp;

  final AiSearchInstancePublicEndpointParamsRateLimit? rateLimit;

  final AiSearchInstancePublicEndpointParamsSearchEndpoint? searchEndpoint;

  Map<String, Object?> encode() => {
    'authorized_hosts': ?authorizedHosts?.toTfJson(),
    'custom_domains': ?customDomains?.toTfJson(),
    'default_domain_enabled': ?defaultDomainEnabled?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'chat_completions_endpoint': ?chatCompletionsEndpoint?.encode(),
    'mcp': ?mcp?.encode(),
    'rate_limit': ?rateLimit?.encode(),
    'search_endpoint': ?searchEndpoint?.encode(),
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

  Map<String, Object?> encode() => {'disabled': ?disabled?.toTfJson()};
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
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
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

  final TfArg<AiSearchInstancePublicEndpointParamsRateLimitTechnique>?
  technique;

  Map<String, Object?> encode() => {
    'period_ms': ?periodMs?.toTfJson(),
    'requests': ?requests?.toTfJson(),
    'technique': ?technique?.toTfJson(),
  };
}

/// `technique` — derived from the provider schema description.
enum AiSearchInstancePublicEndpointParamsRateLimitTechnique
    implements TerraformEnum {
  fixed('fixed'),
  sliding('sliding');

  const AiSearchInstancePublicEndpointParamsRateLimitTechnique(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `public_endpoint_params.search_endpoint` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstancePublicEndpointParamsSearchEndpoint {
  const AiSearchInstancePublicEndpointParamsSearchEndpoint({this.disabled});

  final TfArg<bool>? disabled;

  Map<String, Object?> encode() => {'disabled': ?disabled?.toTfJson()};
}

/// Typed helper for the `retrieval_options` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceRetrievalOptions {
  const AiSearchInstanceRetrievalOptions({this.keywordMatchMode, this.boostBy});

  final TfArg<AiSearchInstanceRetrievalOptionsKeywordMatchMode>?
  keywordMatchMode;

  final List<AiSearchInstanceRetrievalOptionsBoostBy>? boostBy;

  Map<String, Object?> encode() => {
    'keyword_match_mode': ?keywordMatchMode?.toTfJson(),
    if (boostBy != null) 'boost_by': [for (final e in boostBy!) e.encode()],
  };
}

/// `keyword_match_mode` — derived from the provider schema description.
enum AiSearchInstanceRetrievalOptionsKeywordMatchMode implements TerraformEnum {
  and('and'),
  or('or');

  const AiSearchInstanceRetrievalOptionsKeywordMatchMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `retrieval_options.boost_by` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceRetrievalOptionsBoostBy {
  const AiSearchInstanceRetrievalOptionsBoostBy({
    this.direction,
    required this.field,
  });

  final TfArg<AiSearchInstanceRetrievalOptionsBoostByDirection>? direction;

  final TfArg<String> field;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'field': field.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum AiSearchInstanceRetrievalOptionsBoostByDirection implements TerraformEnum {
  asc('asc'),
  desc('desc'),
  exists('exists'),
  notExists('not_exists');

  const AiSearchInstanceRetrievalOptionsBoostByDirection(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<List<String>>? excludeItems;

  final TfArg<List<String>>? includeItems;

  final TfArg<String>? prefix;

  final TfArg<String>? r2Jurisdiction;

  final AiSearchInstanceSourceParamsWebCrawler? webCrawler;

  Map<String, Object?> encode() => {
    'exclude_items': ?excludeItems?.toTfJson(),
    'include_items': ?includeItems?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'r2_jurisdiction': ?r2Jurisdiction?.toTfJson(),
    'web_crawler': ?webCrawler?.encode(),
  };
}

/// Typed helper for the `source_params.web_crawler` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceSourceParamsWebCrawler {
  const AiSearchInstanceSourceParamsWebCrawler({
    this.parseType,
    this.discoverOptions,
    this.parseOptions,
  });

  final TfArg<AiSearchInstanceSourceParamsWebCrawlerParseType>? parseType;

  final AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions? discoverOptions;

  final AiSearchInstanceSourceParamsWebCrawlerParseOptions? parseOptions;

  Map<String, Object?> encode() => {
    'parse_type': ?parseType?.toTfJson(),
    'discover_options': ?discoverOptions?.encode(),
    'parse_options': ?parseOptions?.encode(),
  };
}

/// `parse_type` — derived from the provider schema description.
enum AiSearchInstanceSourceParamsWebCrawlerParseType implements TerraformEnum {
  sitemap('sitemap'),
  discover('discover');

  const AiSearchInstanceSourceParamsWebCrawlerParseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source_params.web_crawler.discover_options` block of
/// `cloudflare_ai_search_instance` (derived from provider schema).
@immutable
final class AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions {
  const AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions({
    this.depth,
    this.includeExternalLinks,
    this.includeSubdomains,
    this.limit,
    this.maxAge,
    this.source,
  });

  final TfArg<num>? depth;

  final TfArg<bool>? includeExternalLinks;

  final TfArg<bool>? includeSubdomains;

  final TfArg<num>? limit;

  final TfArg<num>? maxAge;

  final TfArg<AiSearchInstanceSourceParamsWebCrawlerDiscoverOptionsSource>?
  source;

  Map<String, Object?> encode() => {
    'depth': ?depth?.toTfJson(),
    'include_external_links': ?includeExternalLinks?.toTfJson(),
    'include_subdomains': ?includeSubdomains?.toTfJson(),
    'limit': ?limit?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
    'source': ?source?.toTfJson(),
  };
}

/// `source` — derived from the provider schema description.
enum AiSearchInstanceSourceParamsWebCrawlerDiscoverOptionsSource
    implements TerraformEnum {
  all('all'),
  sitemaps('sitemaps'),
  links('links');

  const AiSearchInstanceSourceParamsWebCrawlerDiscoverOptionsSource(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<List<String>>? specificSitemaps;

  final TfArg<bool>? useBrowserRendering;

  final List<AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>?
  contentSelector;

  Map<String, Object?> encode() => {
    'include_headers': ?includeHeaders?.toTfJson(),
    'include_images': ?includeImages?.toTfJson(),
    'specific_sitemaps': ?specificSitemaps?.toTfJson(),
    'use_browser_rendering': ?useBrowserRendering?.toTfJson(),
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

/// Factory wrapper for `cloudflare_ai_search_instance`.
final class CloudflareAiSearchInstance extends Resource {
  static const String tfType = 'cloudflare_ai_search_instance';

  CloudflareAiSearchInstance({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? aiGatewayId,
    TfArg<String>? aisearchModel,
    TfArg<bool>? cache,
    TfArg<AiSearchInstanceCacheThreshold>? cacheThreshold,
    TfArg<num>? cacheTtl,
    TfArg<bool>? chunk,
    TfArg<num>? chunkOverlap,
    TfArg<num>? chunkSize,
    TfArg<String>? embeddingModel,
    TfArg<AiSearchInstanceFusionMethod>? fusionMethod,
    TfArg<bool>? hybridSearchEnabled,
    required TfArg<String> id,
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
    TfArg<AiSearchInstanceType>? type,
    List<AiSearchInstanceCustomMetadata>? customMetadata,
    AiSearchInstanceIndexMethod? indexMethod,
    AiSearchInstanceIndexingOptions? indexingOptions,
    AiSearchInstanceMetadata? metadata,
    AiSearchInstancePublicEndpointParams? publicEndpointParams,
    AiSearchInstanceRetrievalOptions? retrievalOptions,
    AiSearchInstanceSourceParams? sourceParams,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ai_gateway_id': ?aiGatewayId,
           'aisearch_model': ?aisearchModel,
           'cache': ?cache,
           'cache_threshold': ?cacheThreshold,
           'cache_ttl': ?cacheTtl,
           'chunk': ?chunk,
           'chunk_overlap': ?chunkOverlap,
           'chunk_size': ?chunkSize,
           'embedding_model': ?embeddingModel,
           'fusion_method': ?fusionMethod,
           'hybrid_search_enabled': ?hybridSearchEnabled,
           'id': id,
           'max_num_results': ?maxNumResults,
           'paused': ?paused,
           'reranking': ?reranking,
           'reranking_model': ?rerankingModel,
           'rewrite_model': ?rewriteModel,
           'rewrite_query': ?rewriteQuery,
           'score_threshold': ?scoreThreshold,
           'source': ?source,
           'summarization': ?summarization,
           'summarization_model': ?summarizationModel,
           'sync_interval': ?syncInterval,
           'system_prompt_aisearch': ?systemPromptAisearch,
           'system_prompt_index_summarization': ?systemPromptIndexSummarization,
           'system_prompt_rewrite_query': ?systemPromptRewriteQuery,
           'token_id': ?tokenId,
           'type': ?type,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAiSearchInstance>`.
  RefTo<CloudflareAiSearchInstance> get ref => RefTo.of(this);

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
}
