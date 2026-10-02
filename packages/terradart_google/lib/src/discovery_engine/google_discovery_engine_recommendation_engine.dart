// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_recommendation_engine`.
const Set<String> _googleDiscoveryEngineRecommendationEngineSensitive =
    <String>{};

/// Discovery Engine Recommendation Engine Industry enum for `industry_vertical`.
extension type const DiscoveryEngineRecommendationEngineIndustryVertical._(
  TfArg<String> _
) implements TfArg<String> {
  DiscoveryEngineRecommendationEngineIndustryVertical.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineRecommendationEngineIndustryVertical.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DiscoveryEngineRecommendationEngineIndustryVertical.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const generic = DiscoveryEngineRecommendationEngineIndustryVertical._(
    TfArgLiteral('GENERIC'),
  );
  static const media = DiscoveryEngineRecommendationEngineIndustryVertical._(
    TfArgLiteral('MEDIA'),
  );

  static const List<DiscoveryEngineRecommendationEngineIndustryVertical>
  values = [generic, media];
}

/// Typed helper for the `common_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineCommonConfig {
  const DiscoveryEngineRecommendationEngineCommonConfig({this.companyName});

  final TfArg<String>? companyName;

  @internal
  Map<String, Object?> encode() => {'company_name': ?companyName?.toTfJson()};
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

  final DiscoveryEngineRecommendationEngineTrainingState? trainingState;

  final TfArg<String>? type;

  final DiscoveryEngineRecommendationEngineFeaturesConfig? engineFeaturesConfig;

  final DiscoveryEngineRecommendationEngineOptimizationObjectiveConfig?
  optimizationObjectiveConfig;

  @internal
  Map<String, Object?> encode() => {
    'optimization_objective': ?optimizationObjective?.toTfJson(),
    'training_state': ?trainingState?.toTfJson(),
    'type': ?type?.toTfJson(),
    'engine_features_config': ?engineFeaturesConfig?.encode(),
    'optimization_objective_config': ?optimizationObjectiveConfig?.encode(),
  };
}

/// `training_state` — derived from the provider schema description.
extension type const DiscoveryEngineRecommendationEngineTrainingState._(
  TfArg<String> _
) implements TfArg<String> {
  DiscoveryEngineRecommendationEngineTrainingState.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineRecommendationEngineTrainingState.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineRecommendationEngineTrainingState.arg(TfArg<String> arg)
    : this._(arg);

  static const paused = DiscoveryEngineRecommendationEngineTrainingState._(
    TfArgLiteral('PAUSED'),
  );
  static const training = DiscoveryEngineRecommendationEngineTrainingState._(
    TfArgLiteral('TRAINING'),
  );

  static const List<DiscoveryEngineRecommendationEngineTrainingState> values = [
    paused,
    training,
  ];
}

/// Typed helper for the `media_recommendation_engine_config.engine_features_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineFeaturesConfig {
  const DiscoveryEngineRecommendationEngineFeaturesConfig({
    this.mostPopularConfig,
    this.recommendedForYouConfig,
  });

  final DiscoveryEngineRecommendationEngineMostPopularConfig? mostPopularConfig;

  final DiscoveryEngineRecommendationEngineRecommendedForYouConfig?
  recommendedForYouConfig;

  @internal
  Map<String, Object?> encode() => {
    'most_popular_config': ?mostPopularConfig?.encode(),
    'recommended_for_you_config': ?recommendedForYouConfig?.encode(),
  };
}

/// Typed helper for the `media_recommendation_engine_config.engine_features_config.most_popular_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineMostPopularConfig {
  const DiscoveryEngineRecommendationEngineMostPopularConfig({
    this.timeWindowDays,
  });

  final TfArg<num>? timeWindowDays;

  @internal
  Map<String, Object?> encode() => {
    'time_window_days': ?timeWindowDays?.toTfJson(),
  };
}

/// Typed helper for the `media_recommendation_engine_config.engine_features_config.recommended_for_you_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineRecommendedForYouConfig {
  const DiscoveryEngineRecommendationEngineRecommendedForYouConfig({
    this.contextEventType,
  });

  final TfArg<String>? contextEventType;

  @internal
  Map<String, Object?> encode() => {
    'context_event_type': ?contextEventType?.toTfJson(),
  };
}

/// Typed helper for the `media_recommendation_engine_config.optimization_objective_config` block of
/// `google_discovery_engine_recommendation_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineRecommendationEngineOptimizationObjectiveConfig {
  const DiscoveryEngineRecommendationEngineOptimizationObjectiveConfig({
    this.targetField,
    this.targetFieldValueFloat,
  });

  final TfArg<String>? targetField;

  final TfArg<num>? targetFieldValueFloat;

  @internal
  Map<String, Object?> encode() => {
    'target_field': ?targetField?.toTfJson(),
    'target_field_value_float': ?targetFieldValueFloat?.toTfJson(),
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

  GoogleDiscoveryEngineRecommendationEngine(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> engineId,
    required TfArg<String> displayName,
    required TfArg<List<String>> dataStoreIds,
    DiscoveryEngineRecommendationEngineIndustryVertical? industryVertical,
    DiscoveryEngineRecommendationEngineMediaRecommendationEngineConfig?
    mediaRecommendationEngineConfig,
    DiscoveryEngineRecommendationEngineCommonConfig? commonConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'engine_id': engineId,
           'display_name': displayName,
           'data_store_ids': dataStoreIds,
           'industry_vertical': ?industryVertical,
           if (mediaRecommendationEngineConfig != null)
             'media_recommendation_engine_config': TfArg.literal(
               mediaRecommendationEngineConfig.encode(),
             ),
           if (commonConfig != null)
             'common_config': TfArg.literal(commonConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineRecommendationEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineRecommendationEngine>`.
  RefTo<GoogleDiscoveryEngineRecommendationEngine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `data_store_ids` attribute.
  TfRef<List<String>> get dataStoreIds =>
      TfRef.attribute<List<String>>(this, 'data_store_ids');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `industry_vertical` attribute.
  TfRef<String> get industryVertical =>
      TfRef.attribute<String>(this, 'industry_vertical');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
