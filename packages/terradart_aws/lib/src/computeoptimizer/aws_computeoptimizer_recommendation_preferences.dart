// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_computeoptimizer_recommendation_preferences`.
const Set<String> _awsComputeoptimizerRecommendationPreferencesSensitive =
    <String>{};

/// Typed helper for the `external_metrics_preference` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesExternalMetricsPreference {
  const ComputeoptimizerRecommendationPreferencesExternalMetricsPreference({
    required this.source,
  });

  final TfArg<String> source;

  Map<String, Object?> encode() => {'source': source.toTfJson()};
}

/// Typed helper for the `preferred_resource` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesPreferredResource {
  const ComputeoptimizerRecommendationPreferencesPreferredResource({
    this.excludeList,
    this.includeList,
    required this.name,
  });

  final TfArg<List<Object?>>? excludeList;

  final TfArg<List<Object?>>? includeList;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (excludeList != null) 'exclude_list': excludeList!.toTfJson(),
    if (includeList != null) 'include_list': includeList!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `scope` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesScope {
  const ComputeoptimizerRecommendationPreferencesScope({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `utilization_preference` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesUtilizationPreference {
  const ComputeoptimizerRecommendationPreferencesUtilizationPreference({
    required this.metricName,
    this.metricParameters,
  });

  final TfArg<String> metricName;

  final List<
    ComputeoptimizerRecommendationPreferencesUtilizationPreferenceMetricParameters
  >?
  metricParameters;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    if (metricParameters != null)
      'metric_parameters': [for (final e in metricParameters!) e.encode()],
  };
}

/// Typed helper for the `utilization_preference.metric_parameters` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesUtilizationPreferenceMetricParameters {
  const ComputeoptimizerRecommendationPreferencesUtilizationPreferenceMetricParameters({
    required this.headroom,
    this.threshold,
  });

  final TfArg<String> headroom;

  final TfArg<String>? threshold;

  Map<String, Object?> encode() => {
    'headroom': headroom.toTfJson(),
    if (threshold != null) 'threshold': threshold!.toTfJson(),
  };
}

/// Factory wrapper for `aws_computeoptimizer_recommendation_preferences`.
final class AwsComputeoptimizerRecommendationPreferences extends Resource {
  static const String tfType =
      'aws_computeoptimizer_recommendation_preferences';

  AwsComputeoptimizerRecommendationPreferences({
    required super.localName,
    TfArg<String>? enhancedInfrastructureMetrics,
    TfArg<String>? inferredWorkloadTypes,
    TfArg<String>? lookBackPeriod,
    TfArg<String>? region,
    required TfArg<String> resourceType,
    TfArg<String>? savingsEstimationMode,
    List<ComputeoptimizerRecommendationPreferencesExternalMetricsPreference>?
    externalMetricsPreference,
    List<ComputeoptimizerRecommendationPreferencesPreferredResource>?
    preferredResource,
    List<ComputeoptimizerRecommendationPreferencesScope>? scope,
    List<ComputeoptimizerRecommendationPreferencesUtilizationPreference>?
    utilizationPreference,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enhancedInfrastructureMetrics != null)
             'enhanced_infrastructure_metrics': enhancedInfrastructureMetrics,
           if (inferredWorkloadTypes != null)
             'inferred_workload_types': inferredWorkloadTypes,
           if (lookBackPeriod != null) 'look_back_period': lookBackPeriod,
           if (region != null) 'region': region,
           'resource_type': resourceType,
           if (savingsEstimationMode != null)
             'savings_estimation_mode': savingsEstimationMode,
           if (externalMetricsPreference != null)
             'external_metrics_preference': TfArg.literal([
               for (final e in externalMetricsPreference) e.encode(),
             ]),
           if (preferredResource != null)
             'preferred_resource': TfArg.literal([
               for (final e in preferredResource) e.encode(),
             ]),
           if (scope != null)
             'scope': TfArg.literal([for (final e in scope) e.encode()]),
           if (utilizationPreference != null)
             'utilization_preference': TfArg.literal([
               for (final e in utilizationPreference) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsComputeoptimizerRecommendationPreferencesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
