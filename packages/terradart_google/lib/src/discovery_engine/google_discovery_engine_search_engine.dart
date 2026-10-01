// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_discovery_engine_search_engine`.
const Set<String> _googleDiscoveryEngineSearchEngineSensitive = <String>{};

/// Discovery Engine Search Engine Industry enum for `industry_vertical`.
extension type const DiscoveryEngineSearchEngineIndustryVertical._(
  TfArg<String> _
) implements TfArg<String> {
  DiscoveryEngineSearchEngineIndustryVertical.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineSearchEngineIndustryVertical.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineSearchEngineIndustryVertical.arg(TfArg<String> arg)
    : this._(arg);

  static const generic = DiscoveryEngineSearchEngineIndustryVertical._(
    TfArgLiteral('GENERIC'),
  );
  static const media = DiscoveryEngineSearchEngineIndustryVertical._(
    TfArgLiteral('MEDIA'),
  );
  static const healthcareFhir = DiscoveryEngineSearchEngineIndustryVertical._(
    TfArgLiteral('HEALTHCARE_FHIR'),
  );

  static const List<DiscoveryEngineSearchEngineIndustryVertical> values = [
    generic,
    media,
    healthcareFhir,
  ];
}

/// `search_engine_config.search_tier`.
extension type const DiscoveryEngineSearchEngineTier._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineSearchEngineTier.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineSearchEngineTier.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineSearchEngineTier.arg(TfArg<String> arg) : this._(arg);

  static const searchTierStandard = DiscoveryEngineSearchEngineTier._(
    TfArgLiteral('SEARCH_TIER_STANDARD'),
  );
  static const searchTierEnterprise = DiscoveryEngineSearchEngineTier._(
    TfArgLiteral('SEARCH_TIER_ENTERPRISE'),
  );

  static const List<DiscoveryEngineSearchEngineTier> values = [
    searchTierStandard,
    searchTierEnterprise,
  ];
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

  final DiscoveryEngineSearchEngineRequiredSubscriptionTier?
  requiredSubscriptionTier;

  final TfArg<List<String>>? searchAddOns;

  final DiscoveryEngineSearchEngineTier? searchTier;

  Map<String, Object?> encode() => {
    'required_subscription_tier': ?requiredSubscriptionTier?.toTfJson(),
    'search_add_ons': ?searchAddOns?.toTfJson(),
    'search_tier': ?searchTier?.toTfJson(),
  };
}

/// `required_subscription_tier` — derived from the provider schema description.
extension type const DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
  TfArg<String> _
) implements TfArg<String> {
  DiscoveryEngineSearchEngineRequiredSubscriptionTier.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineSearchEngineRequiredSubscriptionTier.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DiscoveryEngineSearchEngineRequiredSubscriptionTier.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const subscriptionTierUnspecified =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_UNSPECIFIED'),
      );
  static const subscriptionTierSearch =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_SEARCH'),
      );
  static const subscriptionTierSearchAndAssistant =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT'),
      );
  static const subscriptionTierFrontlineWorker =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_FRONTLINE_WORKER'),
      );
  static const subscriptionTierAgentspaceStarter =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_AGENTSPACE_STARTER'),
      );
  static const subscriptionTierAgentspaceBusiness =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS'),
      );
  static const subscriptionTierEnterprise =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_ENTERPRISE'),
      );
  static const subscriptionTierEnterpriseEmerging =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_ENTERPRISE_EMERGING'),
      );
  static const subscriptionTierEdu =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_EDU'),
      );
  static const subscriptionTierEduPro =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_EDU_PRO'),
      );
  static const subscriptionTierEduEmerging =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_EDU_EMERGING'),
      );
  static const subscriptionTierEduProEmerging =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_EDU_PRO_EMERGING'),
      );
  static const subscriptionTierFrontlineStarter =
      DiscoveryEngineSearchEngineRequiredSubscriptionTier._(
        TfArgLiteral('SUBSCRIPTION_TIER_FRONTLINE_STARTER'),
      );

  static const List<DiscoveryEngineSearchEngineRequiredSubscriptionTier>
  values = [
    subscriptionTierUnspecified,
    subscriptionTierSearch,
    subscriptionTierSearchAndAssistant,
    subscriptionTierFrontlineWorker,
    subscriptionTierAgentspaceStarter,
    subscriptionTierAgentspaceBusiness,
    subscriptionTierEnterprise,
    subscriptionTierEnterpriseEmerging,
    subscriptionTierEdu,
    subscriptionTierEduPro,
    subscriptionTierEduEmerging,
    subscriptionTierEduProEmerging,
    subscriptionTierFrontlineStarter,
  ];
}

/// Factory wrapper for `google_discovery_engine_search_engine`.
///
/// Vertex AI Search and Conversation can be used to create a search engine or a
/// chat application by connecting it with a datastore
final class GoogleDiscoveryEngineSearchEngine extends Resource {
  static const String tfType = 'google_discovery_engine_search_engine';

  GoogleDiscoveryEngineSearchEngine(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> displayName,
    required TfArg<List<String>> dataStoreIds,
    required DiscoveryEngineSearchEngineConfig searchEngineConfig,
    DiscoveryEngineSearchEngineIndustryVertical? industryVertical,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `app_type` attribute.
  TfRef<String> get appType => TfRef.attribute<String>(this, 'app_type');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `data_store_ids` attribute.
  TfRef<List<String>> get dataStoreIds =>
      TfRef.attribute<List<String>>(this, 'data_store_ids');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_analytics` attribute.
  TfRef<bool> get disableAnalytics =>
      TfRef.attribute<bool>(this, 'disable_analytics');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `features` attribute.
  TfRef<Map<String, String>> get features =>
      TfRef.attribute<Map<String, String>>(this, 'features');

  /// Reference to `industry_vertical` attribute.
  TfRef<String> get industryVertical =>
      TfRef.attribute<String>(this, 'industry_vertical');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
