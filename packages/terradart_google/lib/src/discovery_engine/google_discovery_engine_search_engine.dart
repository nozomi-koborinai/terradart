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
enum DiscoveryEngineSearchEngineTier implements TerraformEnum {
  searchTierStandard('SEARCH_TIER_STANDARD'),
  searchTierEnterprise('SEARCH_TIER_ENTERPRISE');

  const DiscoveryEngineSearchEngineTier(this.terraformValue);
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

  final DiscoveryEngineSearchEngineFeatureConfig? featureConfig;

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
final class DiscoveryEngineSearchEngineFeatureConfig {
  const DiscoveryEngineSearchEngineFeatureConfig({
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
final class DiscoveryEngineSearchEngineConfig {
  const DiscoveryEngineSearchEngineConfig({
    this.requiredSubscriptionTier,
    this.searchAddOns,
    this.searchTier,
  });

  final TfArg<DiscoveryEngineSearchEngineRequiredSubscriptionTier>?
  requiredSubscriptionTier;

  final TfArg<List<String>>? searchAddOns;

  final TfArg<DiscoveryEngineSearchEngineTier>? searchTier;

  Map<String, Object?> encode() => {
    'required_subscription_tier': ?requiredSubscriptionTier?.toTfJson(),
    'search_add_ons': ?searchAddOns?.toTfJson(),
    'search_tier': ?searchTier?.toTfJson(),
  };
}

/// `required_subscription_tier` — derived from the provider schema description.
enum DiscoveryEngineSearchEngineRequiredSubscriptionTier
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

  const DiscoveryEngineSearchEngineRequiredSubscriptionTier(
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
    required DiscoveryEngineSearchEngineConfig searchEngineConfig,
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

  /// Reference to `app_type` attribute.
  TfRef<String> get appTypeRef => TfRef.attribute<String>(this, 'app_type');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionIdRef =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `data_store_ids` attribute.
  TfRef<List<String>> get dataStoreIdsRef =>
      TfRef.attribute<List<String>>(this, 'data_store_ids');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_analytics` attribute.
  TfRef<bool> get disableAnalyticsRef =>
      TfRef.attribute<bool>(this, 'disable_analytics');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `features` attribute.
  TfRef<Map<String, String>> get featuresRef =>
      TfRef.attribute<Map<String, String>>(this, 'features');

  /// Reference to `industry_vertical` attribute.
  TfRef<String> get industryVerticalRef =>
      TfRef.attribute<String>(this, 'industry_vertical');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyNameRef =>
      TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineIdRef => TfRef.attribute<String>(this, 'engine_id');
}
