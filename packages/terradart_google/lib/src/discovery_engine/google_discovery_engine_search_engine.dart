// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_discovery_engine_search_engine`.
const Set<String> _googleDiscoveryEngineSearchEngineSensitive = <String>{};

/// Discovery Engine Search Engine Industry enum for `industry_vertical`.
enum DiscoveryEngineSearchEngineIndustryVertical implements TerraformEnum {
  generic('GENERIC'),
  media('MEDIA'),
  healthcareFhir('HEALTHCARE_FHIR');

  const DiscoveryEngineSearchEngineIndustryVertical(this.terraformValue);
  @override
  final String terraformValue;
}

/// `search_engine_config.search_tier`.
enum DiscoveryEngineSearchEngineSearchTier implements TerraformEnum {
  searchTierStandard('SEARCH_TIER_STANDARD'),
  searchTierEnterprise('SEARCH_TIER_ENTERPRISE');

  const DiscoveryEngineSearchEngineSearchTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `common_config` block of
/// `google_discovery_engine_search_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineSearchEngineCommonConfig {
  const DiscoveryEngineSearchEngineCommonConfig({this.companyName});

  final TfArg<String>? companyName;

  Map<String, Object?> encode() => {'company_name': ?companyName?.toTfJson()};
}

/// Typed helper for the `knowledge_graph_config` block of
/// `google_discovery_engine_search_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineSearchEngineKnowledgeGraphConfig {
  const DiscoveryEngineSearchEngineKnowledgeGraphConfig({
    this.cloudKnowledgeGraphTypes,
    this.enableCloudKnowledgeGraph,
    this.enablePrivateKnowledgeGraph,
    this.featureConfig,
  });

  final TfArg<List<String>>? cloudKnowledgeGraphTypes;

  final TfArg<bool>? enableCloudKnowledgeGraph;

  final TfArg<bool>? enablePrivateKnowledgeGraph;

  final DiscoveryEngineSearchEngineKnowledgeGraphConfigFeatureConfig?
  featureConfig;

  Map<String, Object?> encode() => {
    'cloud_knowledge_graph_types': ?cloudKnowledgeGraphTypes?.toTfJson(),
    'enable_cloud_knowledge_graph': ?enableCloudKnowledgeGraph?.toTfJson(),
    'enable_private_knowledge_graph': ?enablePrivateKnowledgeGraph?.toTfJson(),
    'feature_config': ?featureConfig?.encode(),
  };
}

/// Typed helper for the `knowledge_graph_config.feature_config` block of
/// `google_discovery_engine_search_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineSearchEngineKnowledgeGraphConfigFeatureConfig {
  const DiscoveryEngineSearchEngineKnowledgeGraphConfigFeatureConfig({
    this.disablePrivateKgAutoComplete,
    this.disablePrivateKgEnrichment,
    this.disablePrivateKgQueryUiChips,
    this.disablePrivateKgQueryUnderstanding,
  });

  final TfArg<bool>? disablePrivateKgAutoComplete;

  final TfArg<bool>? disablePrivateKgEnrichment;

  final TfArg<bool>? disablePrivateKgQueryUiChips;

  final TfArg<bool>? disablePrivateKgQueryUnderstanding;

  Map<String, Object?> encode() => {
    'disable_private_kg_auto_complete': ?disablePrivateKgAutoComplete
        ?.toTfJson(),
    'disable_private_kg_enrichment': ?disablePrivateKgEnrichment?.toTfJson(),
    'disable_private_kg_query_ui_chips': ?disablePrivateKgQueryUiChips
        ?.toTfJson(),
    'disable_private_kg_query_understanding':
        ?disablePrivateKgQueryUnderstanding?.toTfJson(),
  };
}

/// Typed helper for the `search_engine_config` block of
/// `google_discovery_engine_search_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineSearchEngineSearchEngineConfig {
  const DiscoveryEngineSearchEngineSearchEngineConfig({
    this.requiredSubscriptionTier,
    this.searchAddOns,
    this.searchTier,
  });

  final TfArg<
    DiscoveryEngineSearchEngineSearchEngineConfigRequiredSubscriptionTier
  >?
  requiredSubscriptionTier;

  final TfArg<List<String>>? searchAddOns;

  final TfArg<DiscoveryEngineSearchEngineSearchTier>? searchTier;

  Map<String, Object?> encode() => {
    'required_subscription_tier': ?requiredSubscriptionTier?.toTfJson(),
    'search_add_ons': ?searchAddOns?.toTfJson(),
    'search_tier': ?searchTier?.toTfJson(),
  };
}

/// `required_subscription_tier` — derived from the provider schema description.
enum DiscoveryEngineSearchEngineSearchEngineConfigRequiredSubscriptionTier
    implements TerraformEnum {
  subscriptionTierUnspecified('SUBSCRIPTION_TIER_UNSPECIFIED'),
  subscriptionTierSearch('SUBSCRIPTION_TIER_SEARCH'),
  subscriptionTierSearchAndAssistant('SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT'),
  subscriptionTierFrontlineWorker('SUBSCRIPTION_TIER_FRONTLINE_WORKER'),
  subscriptionTierAgentspaceStarter('SUBSCRIPTION_TIER_AGENTSPACE_STARTER'),
  subscriptionTierAgentspaceBusiness('SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS'),
  subscriptionTierEnterprise('SUBSCRIPTION_TIER_ENTERPRISE'),
  subscriptionTierEnterpriseEmerging('SUBSCRIPTION_TIER_ENTERPRISE_EMERGING'),
  subscriptionTierEdu('SUBSCRIPTION_TIER_EDU'),
  subscriptionTierEduPro('SUBSCRIPTION_TIER_EDU_PRO'),
  subscriptionTierEduEmerging('SUBSCRIPTION_TIER_EDU_EMERGING'),
  subscriptionTierEduProEmerging('SUBSCRIPTION_TIER_EDU_PRO_EMERGING'),
  subscriptionTierFrontlineStarter('SUBSCRIPTION_TIER_FRONTLINE_STARTER');

  const DiscoveryEngineSearchEngineSearchEngineConfigRequiredSubscriptionTier(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_discovery_engine_search_engine`.
///
/// Vertex AI Search and Conversation can be used to create a search engine or a
/// chat application by connecting it with a datastore
final class GoogleDiscoveryEngineSearchEngine extends Resource {
  static const String tfType = 'google_discovery_engine_search_engine';

  GoogleDiscoveryEngineSearchEngine({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> displayName,
    required TfArg<List<String>> dataStoreIds,
    required DiscoveryEngineSearchEngineSearchEngineConfig searchEngineConfig,
    TfArg<DiscoveryEngineSearchEngineIndustryVertical>? industryVertical,
    TfArg<String>? project,
    TfArg<String>? appType,
    TfArg<bool>? disableAnalytics,
    TfArg<Map<String, String>>? features,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    DiscoveryEngineSearchEngineCommonConfig? commonConfig,
    DiscoveryEngineSearchEngineKnowledgeGraphConfig? knowledgeGraphConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'collection_id': collectionId,
           'engine_id': engineId,
           'display_name': displayName,
           'data_store_ids': dataStoreIds,
           'search_engine_config': TfArg.literal(searchEngineConfig.encode()),
           'industry_vertical': ?industryVertical,
           'project': ?project,
           'app_type': ?appType,
           'disable_analytics': ?disableAnalytics,
           'features': ?features,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           if (commonConfig != null)
             'common_config': TfArg.literal(commonConfig.encode()),
           if (knowledgeGraphConfig != null)
             'knowledge_graph_config': TfArg.literal(
               knowledgeGraphConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineSearchEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineSearchEngine>`.
  RefTo<GoogleDiscoveryEngineSearchEngine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineIdRef => TfRef.attribute<String>(this, 'engine_id');
}
