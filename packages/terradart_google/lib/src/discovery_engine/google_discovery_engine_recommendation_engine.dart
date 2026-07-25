// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_recommendation_engine`.
const Set<String> _googleDiscoveryEngineRecommendationEngineSensitive =
    <String>{};

/// Discovery Engine Recommendation Engine Industry enum for `industry_vertical`.
enum DiscoveryEngineRecommendationEngineIndustryVertical
    implements TerraformEnum {
  generic('GENERIC'),
  media('MEDIA');

  const DiscoveryEngineRecommendationEngineIndustryVertical(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `common_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineCommonConfig {
  const DiscoveryEngineRecommendationEngineCommonConfig({this.companyName});

  final TfArg<String>? companyName;

  Map<String, Object?> encode() => {
    if (companyName != null) 'company_name': companyName!.toTfJson(),
  };
}

/// Typed helper for the `media_recommendation_engine_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfig {
  const DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfig({
    this.optimizationObjective,
    this.trainingState,
    this.type,
    this.engineFeaturesConfig,
    this.optimizationObjectiveConfig,
  });

  final TfArg<String>? optimizationObjective;

  final TfArg<
    DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigTrainingState
  >?
  trainingState;

  final TfArg<String>? type;

  final DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig?
  engineFeaturesConfig;

  final DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig?
  optimizationObjectiveConfig;

  Map<String, Object?> encode() => {
    if (optimizationObjective != null)
      'optimization_objective': optimizationObjective!.toTfJson(),
    if (trainingState != null) 'training_state': trainingState!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (engineFeaturesConfig != null)
      'engine_features_config': engineFeaturesConfig!.encode(),
    if (optimizationObjectiveConfig != null)
      'optimization_objective_config': optimizationObjectiveConfig!.encode(),
  };
}

/// `training_state` — derived from the provider schema description.
enum DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigTrainingState
    implements TerraformEnum {
  paused('PAUSED'),
  training('TRAINING');

  const DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigTrainingState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `media_recommendation_engine_config.engine_features_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig {
  const DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfig({
    this.mostPopularConfig,
    this.recommendedForYouConfig,
  });

  final DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig?
  mostPopularConfig;

  final DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig?
  recommendedForYouConfig;

  Map<String, Object?> encode() => {
    if (mostPopularConfig != null)
      'most_popular_config': mostPopularConfig!.encode(),
    if (recommendedForYouConfig != null)
      'recommended_for_you_config': recommendedForYouConfig!.encode(),
  };
}

/// Typed helper for the `media_recommendation_engine_config.engine_features_config.most_popular_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig {
  const DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig({
    this.timeWindowDays,
  });

  final TfArg<num>? timeWindowDays;

  Map<String, Object?> encode() => {
    if (timeWindowDays != null) 'time_window_days': timeWindowDays!.toTfJson(),
  };
}

/// Typed helper for the `media_recommendation_engine_config.engine_features_config.recommended_for_you_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig {
  const DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig({
    this.contextEventType,
  });

  final TfArg<String>? contextEventType;

  Map<String, Object?> encode() => {
    if (contextEventType != null)
      'context_event_type': contextEventType!.toTfJson(),
  };
}

/// Typed helper for the `media_recommendation_engine_config.optimization_objective_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig {
  const DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig({
    this.targetField,
    this.targetFieldValueFloat,
  });

  final TfArg<String>? targetField;

  final TfArg<num>? targetFieldValueFloat;

  Map<String, Object?> encode() => {
    if (targetField != null) 'target_field': targetField!.toTfJson(),
    if (targetFieldValueFloat != null)
      'target_field_value_float': targetFieldValueFloat!.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_recommendation_engine`.
///
/// Vertex AI Search recommendation apps.
///
/// Vertex AI Search / Gemini Enterprise **recommendation engine** —
/// media / generic recommendations over data stores.
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Gemini
/// Enterprise Standard monthly SKU `0532-C2F0-1DF0` **$35/seat·mo** (Plus
/// `4EDF-A125-F89E` **$60/mo**). billing-behavior: recommendation engines
/// sit on the Gemini Enterprise / Agentspace entitlement path; training /
/// serving accrue product fees while provisioned. **Never** wire into
/// apply-smoke.
final class GoogleDiscoveryEngineRecommendationEngine extends Resource {
  static const String tfType = 'google_discovery_engine_recommendation_engine';

  GoogleDiscoveryEngineRecommendationEngine({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> engineId,
    required TfArg<String> displayName,
    required TfArg<List<String>> dataStoreIds,
    TfArg<DiscoveryEngineRecommendationEngineIndustryVertical>?
    industryVertical,
    DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfig?
    mediaRecommendationEngineConfig,
    DiscoveryEngineRecommendationEngineCommonConfig? commonConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'engine_id': engineId,
           'display_name': displayName,
           'data_store_ids': dataStoreIds,
           if (industryVertical != null) 'industry_vertical': industryVertical,
           if (mediaRecommendationEngineConfig != null)
             'media_recommendation_engine_config': TfArg.literal(
               mediaRecommendationEngineConfig.encode(),
             ),
           if (commonConfig != null)
             'common_config': TfArg.literal(commonConfig.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineRecommendationEngineSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
