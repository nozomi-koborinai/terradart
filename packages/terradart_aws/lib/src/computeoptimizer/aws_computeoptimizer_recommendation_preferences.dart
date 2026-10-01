// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_computeoptimizer_recommendation_preferences`.
const Set<String> _awsComputeoptimizerRecommendationPreferencesSensitive =
    <String>{};

/// Computeoptimizer Recommendation Preferences Enhanced Infrastructure enum for `enhanced_infrastructure_metrics`.
enum ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics
    implements TerraformEnum {
  active('Active'),
  inactive('Inactive');

  const ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Computeoptimizer Recommendation Preferences Inferred Workload enum for `inferred_workload_types`.
enum ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes
    implements TerraformEnum {
  active('Active'),
  inactive('Inactive');

  const ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Computeoptimizer Recommendation Preferences Look Back enum for `look_back_period`.
enum ComputeoptimizerRecommendationPreferencesLookBackPeriod
    implements TerraformEnum {
  days14('DAYS_14'),
  days32('DAYS_32'),
  days93('DAYS_93');

  const ComputeoptimizerRecommendationPreferencesLookBackPeriod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Computeoptimizer Recommendation Preferences Resource enum for `resource_type`.
enum ComputeoptimizerRecommendationPreferencesResourceType
    implements TerraformEnum {
  autoscalinggroup('AutoScalingGroup'),
  ec2instance('Ec2Instance'),
  rdsdbinstance('RdsDBInstance'),
  auroradbclusterstorage('AuroraDBClusterStorage');

  const ComputeoptimizerRecommendationPreferencesResourceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Computeoptimizer Recommendation Preferences Savings Estimation enum for `savings_estimation_mode`.
enum ComputeoptimizerRecommendationPreferencesSavingsEstimationMode
    implements TerraformEnum {
  afterdiscounts('AfterDiscounts'),
  beforediscounts('BeforeDiscounts');

  const ComputeoptimizerRecommendationPreferencesSavingsEstimationMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `external_metrics_preference` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesExternalMetricsPreference {
  const ComputeoptimizerRecommendationPreferencesExternalMetricsPreference({
    required this.source,
  });

  final TfArg<ComputeoptimizerRecommendationPreferencesSource> source;

  Map<String, Object?> encode() => {'source': source.toTfJson()};
}

/// `source` — derived from the provider schema description.
enum ComputeoptimizerRecommendationPreferencesSource implements TerraformEnum {
  datadog('Datadog'),
  dynatrace('Dynatrace'),
  newrelic('NewRelic'),
  instana('Instana');

  const ComputeoptimizerRecommendationPreferencesSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `preferred_resource` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesPreferredResource {
  const ComputeoptimizerRecommendationPreferencesPreferredResource({
    this.filter,
    required this.name,
  });

  final ComputeoptimizerRecommendationPreferencesFilter? filter;

  final TfArg<ComputeoptimizerRecommendationPreferencesPreferredResourceName>
  name;

  Map<String, Object?> encode() => {
    ...?filter?.encode(),
    'name': name.toTfJson(),
  };
}

/// At most one of `exclude_list`, `include_list` on the `preferred_resource` block of `aws_computeoptimizer_recommendation_preferences`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludeList(...)`.
sealed class ComputeoptimizerRecommendationPreferencesFilter {
  const ComputeoptimizerRecommendationPreferencesFilter();

  /// Sets `exclude_list`.
  const factory ComputeoptimizerRecommendationPreferencesFilter.excludeList(
    TfArg<List<String>> excludeList,
  ) = ComputeoptimizerRecommendationPreferencesFilterExcludeList;

  /// Sets `include_list`.
  const factory ComputeoptimizerRecommendationPreferencesFilter.includeList(
    TfArg<List<String>> includeList,
  ) = ComputeoptimizerRecommendationPreferencesFilterIncludeList;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComputeoptimizerRecommendationPreferencesFilter.excludeList] choice: sets `exclude_list`.
final class ComputeoptimizerRecommendationPreferencesFilterExcludeList
    extends ComputeoptimizerRecommendationPreferencesFilter {
  const ComputeoptimizerRecommendationPreferencesFilterExcludeList(
    this.excludeList,
  );

  final TfArg<List<String>> excludeList;

  @override
  String get blockKey => 'exclude_list';

  @override
  Map<String, Object?> encode() => {'exclude_list': excludeList.toTfJson()};
}

/// The [ComputeoptimizerRecommendationPreferencesFilter.includeList] choice: sets `include_list`.
final class ComputeoptimizerRecommendationPreferencesFilterIncludeList
    extends ComputeoptimizerRecommendationPreferencesFilter {
  const ComputeoptimizerRecommendationPreferencesFilterIncludeList(
    this.includeList,
  );

  final TfArg<List<String>> includeList;

  @override
  String get blockKey => 'include_list';

  @override
  Map<String, Object?> encode() => {'include_list': includeList.toTfJson()};
}

/// `name` — derived from the provider schema description.
enum ComputeoptimizerRecommendationPreferencesPreferredResourceName
    implements TerraformEnum {
  ec2instancetypes('Ec2InstanceTypes');

  const ComputeoptimizerRecommendationPreferencesPreferredResourceName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scope` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesScope {
  const ComputeoptimizerRecommendationPreferencesScope({
    required this.name,
    required this.value,
  });

  final TfArg<ComputeoptimizerRecommendationPreferencesScopeName> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum ComputeoptimizerRecommendationPreferencesScopeName
    implements TerraformEnum {
  organization('Organization'),
  accountid('AccountId'),
  resourcearn('ResourceArn');

  const ComputeoptimizerRecommendationPreferencesScopeName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `utilization_preference` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesUtilizationPreference {
  const ComputeoptimizerRecommendationPreferencesUtilizationPreference({
    required this.metricName,
    this.metricParameters,
  });

  final TfArg<ComputeoptimizerRecommendationPreferencesMetricName> metricName;

  final List<ComputeoptimizerRecommendationPreferencesMetricParameters>?
  metricParameters;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    if (metricParameters != null)
      'metric_parameters': [for (final e in metricParameters!) e.encode()],
  };
}

/// `metric_name` — derived from the provider schema description.
enum ComputeoptimizerRecommendationPreferencesMetricName
    implements TerraformEnum {
  cpuutilization('CpuUtilization'),
  memoryutilization('MemoryUtilization');

  const ComputeoptimizerRecommendationPreferencesMetricName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `utilization_preference.metric_parameters` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesMetricParameters {
  const ComputeoptimizerRecommendationPreferencesMetricParameters({
    required this.headroom,
    this.threshold,
  });

  final TfArg<ComputeoptimizerRecommendationPreferencesHeadroom> headroom;

  final TfArg<ComputeoptimizerRecommendationPreferencesThreshold>? threshold;

  Map<String, Object?> encode() => {
    'headroom': headroom.toTfJson(),
    'threshold': ?threshold?.toTfJson(),
  };
}

/// `headroom` — derived from the provider schema description.
enum ComputeoptimizerRecommendationPreferencesHeadroom
    implements TerraformEnum {
  percent30('PERCENT_30'),
  percent20('PERCENT_20'),
  percent10('PERCENT_10'),
  percent0('PERCENT_0');

  const ComputeoptimizerRecommendationPreferencesHeadroom(this.terraformValue);
  @override
  final String terraformValue;
}

/// `threshold` — derived from the provider schema description.
enum ComputeoptimizerRecommendationPreferencesThreshold
    implements TerraformEnum {
  p90('P90'),
  p95('P95'),
  p995('P99_5');

  const ComputeoptimizerRecommendationPreferencesThreshold(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_computeoptimizer_recommendation_preferences`.
final class AwsComputeoptimizerRecommendationPreferences extends Resource {
  static const String tfType =
      'aws_computeoptimizer_recommendation_preferences';

  AwsComputeoptimizerRecommendationPreferences({
    required super.localName,
    TfArg<
      ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics
    >?
    enhancedInfrastructureMetrics,
    TfArg<ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes>?
    inferredWorkloadTypes,
    TfArg<ComputeoptimizerRecommendationPreferencesLookBackPeriod>?
    lookBackPeriod,
    TfArg<String>? region,
    required TfArg<ComputeoptimizerRecommendationPreferencesResourceType>
    resourceType,
    TfArg<ComputeoptimizerRecommendationPreferencesSavingsEstimationMode>?
    savingsEstimationMode,
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
           'enhanced_infrastructure_metrics': ?enhancedInfrastructureMetrics,
           'inferred_workload_types': ?inferredWorkloadTypes,
           'look_back_period': ?lookBackPeriod,
           'region': ?region,
           'resource_type': resourceType,
           'savings_estimation_mode': ?savingsEstimationMode,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsComputeoptimizerRecommendationPreferences>`.
  RefTo<AwsComputeoptimizerRecommendationPreferences> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enhanced_infrastructure_metrics` attribute.
  TfRef<String> get enhancedInfrastructureMetricsRef =>
      TfRef.attribute<String>(this, 'enhanced_infrastructure_metrics');

  /// Reference to `inferred_workload_types` attribute.
  TfRef<String> get inferredWorkloadTypesRef =>
      TfRef.attribute<String>(this, 'inferred_workload_types');

  /// Reference to `look_back_period` attribute.
  TfRef<String> get lookBackPeriodRef =>
      TfRef.attribute<String>(this, 'look_back_period');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceTypeRef =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `savings_estimation_mode` attribute.
  TfRef<String> get savingsEstimationModeRef =>
      TfRef.attribute<String>(this, 'savings_estimation_mode');
}
