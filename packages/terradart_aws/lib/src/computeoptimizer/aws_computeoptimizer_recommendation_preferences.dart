// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_computeoptimizer_recommendation_preferences`.
const Set<String> _awsComputeoptimizerRecommendationPreferencesSensitive =
    <String>{};

/// Computeoptimizer Recommendation Preferences Enhanced Infrastructure enum for `enhanced_infrastructure_metrics`.
extension type const ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const active =
      ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics._(
        TfArgLiteral('Active'),
      );
  static const inactive =
      ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics._(
        TfArgLiteral('Inactive'),
      );

  static const List<
    ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics
  >
  values = [active, inactive];
}

/// Computeoptimizer Recommendation Preferences Inferred Workload enum for `inferred_workload_types`.
extension type const ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const active =
      ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes._(
        TfArgLiteral('Active'),
      );
  static const inactive =
      ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes._(
        TfArgLiteral('Inactive'),
      );

  static const List<
    ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes
  >
  values = [active, inactive];
}

/// Computeoptimizer Recommendation Preferences Look Back enum for `look_back_period`.
extension type const ComputeoptimizerRecommendationPreferencesLookBackPeriod._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesLookBackPeriod.variable(String name)
    : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesLookBackPeriod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesLookBackPeriod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const days14 =
      ComputeoptimizerRecommendationPreferencesLookBackPeriod._(
        TfArgLiteral('DAYS_14'),
      );
  static const days32 =
      ComputeoptimizerRecommendationPreferencesLookBackPeriod._(
        TfArgLiteral('DAYS_32'),
      );
  static const days93 =
      ComputeoptimizerRecommendationPreferencesLookBackPeriod._(
        TfArgLiteral('DAYS_93'),
      );

  static const List<ComputeoptimizerRecommendationPreferencesLookBackPeriod>
  values = [days14, days32, days93];
}

/// Computeoptimizer Recommendation Preferences Resource enum for `resource_type`.
extension type const ComputeoptimizerRecommendationPreferencesResourceType._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesResourceType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesResourceType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesResourceType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const autoscalinggroup =
      ComputeoptimizerRecommendationPreferencesResourceType._(
        TfArgLiteral('AutoScalingGroup'),
      );
  static const ec2instance =
      ComputeoptimizerRecommendationPreferencesResourceType._(
        TfArgLiteral('Ec2Instance'),
      );
  static const rdsdbinstance =
      ComputeoptimizerRecommendationPreferencesResourceType._(
        TfArgLiteral('RdsDBInstance'),
      );
  static const auroradbclusterstorage =
      ComputeoptimizerRecommendationPreferencesResourceType._(
        TfArgLiteral('AuroraDBClusterStorage'),
      );

  static const List<ComputeoptimizerRecommendationPreferencesResourceType>
  values = [
    autoscalinggroup,
    ec2instance,
    rdsdbinstance,
    auroradbclusterstorage,
  ];
}

/// Computeoptimizer Recommendation Preferences Savings Estimation enum for `savings_estimation_mode`.
extension type const ComputeoptimizerRecommendationPreferencesSavingsEstimationMode._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesSavingsEstimationMode.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesSavingsEstimationMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesSavingsEstimationMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const afterdiscounts =
      ComputeoptimizerRecommendationPreferencesSavingsEstimationMode._(
        TfArgLiteral('AfterDiscounts'),
      );
  static const beforediscounts =
      ComputeoptimizerRecommendationPreferencesSavingsEstimationMode._(
        TfArgLiteral('BeforeDiscounts'),
      );

  static const List<
    ComputeoptimizerRecommendationPreferencesSavingsEstimationMode
  >
  values = [afterdiscounts, beforediscounts];
}

/// Typed helper for the `external_metrics_preference` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesExternalMetricsPreference {
  const ComputeoptimizerRecommendationPreferencesExternalMetricsPreference({
    required this.source,
  });

  final ComputeoptimizerRecommendationPreferencesSource source;

  @internal
  Map<String, Object?> encode() => {'source': source.toTfJson()};
}

/// `source` — derived from the provider schema description.
extension type const ComputeoptimizerRecommendationPreferencesSource._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesSource.variable(String name)
    : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesSource.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesSource.arg(TfArg<String> arg)
    : this._(arg);

  static const datadog = ComputeoptimizerRecommendationPreferencesSource._(
    TfArgLiteral('Datadog'),
  );
  static const dynatrace = ComputeoptimizerRecommendationPreferencesSource._(
    TfArgLiteral('Dynatrace'),
  );
  static const newrelic = ComputeoptimizerRecommendationPreferencesSource._(
    TfArgLiteral('NewRelic'),
  );
  static const instana = ComputeoptimizerRecommendationPreferencesSource._(
    TfArgLiteral('Instana'),
  );

  static const List<ComputeoptimizerRecommendationPreferencesSource> values = [
    datadog,
    dynatrace,
    newrelic,
    instana,
  ];
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

  final ComputeoptimizerRecommendationPreferencesPreferredResourceName name;

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ComputeoptimizerRecommendationPreferencesFilter.excludeList] choice: sets `exclude_list`.
final class ComputeoptimizerRecommendationPreferencesFilterExcludeList
    extends ComputeoptimizerRecommendationPreferencesFilter {
  const ComputeoptimizerRecommendationPreferencesFilterExcludeList(
    this.excludeList,
  );

  final TfArg<List<String>> excludeList;

  @internal
  @override
  String get blockKey => 'exclude_list';

  @internal
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

  @internal
  @override
  String get blockKey => 'include_list';

  @internal
  @override
  Map<String, Object?> encode() => {'include_list': includeList.toTfJson()};
}

/// `name` — derived from the provider schema description.
extension type const ComputeoptimizerRecommendationPreferencesPreferredResourceName._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesPreferredResourceName.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesPreferredResourceName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesPreferredResourceName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ec2instancetypes =
      ComputeoptimizerRecommendationPreferencesPreferredResourceName._(
        TfArgLiteral('Ec2InstanceTypes'),
      );

  static const List<
    ComputeoptimizerRecommendationPreferencesPreferredResourceName
  >
  values = [ec2instancetypes];
}

/// Typed helper for the `scope` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesScope {
  const ComputeoptimizerRecommendationPreferencesScope({
    required this.name,
    required this.value,
  });

  final ComputeoptimizerRecommendationPreferencesScopeName name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const ComputeoptimizerRecommendationPreferencesScopeName._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesScopeName.variable(String name)
    : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesScopeName.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesScopeName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const organization =
      ComputeoptimizerRecommendationPreferencesScopeName._(
        TfArgLiteral('Organization'),
      );
  static const accountid = ComputeoptimizerRecommendationPreferencesScopeName._(
    TfArgLiteral('AccountId'),
  );
  static const resourcearn =
      ComputeoptimizerRecommendationPreferencesScopeName._(
        TfArgLiteral('ResourceArn'),
      );

  static const List<ComputeoptimizerRecommendationPreferencesScopeName> values =
      [organization, accountid, resourcearn];
}

/// Typed helper for the `utilization_preference` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesUtilizationPreference {
  const ComputeoptimizerRecommendationPreferencesUtilizationPreference({
    required this.metricName,
    this.metricParameters,
  });

  final ComputeoptimizerRecommendationPreferencesMetricName metricName;

  final List<ComputeoptimizerRecommendationPreferencesMetricParameters>?
  metricParameters;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    if (metricParameters != null)
      'metric_parameters': [for (final e in metricParameters!) e.encode()],
  };
}

/// `metric_name` — derived from the provider schema description.
extension type const ComputeoptimizerRecommendationPreferencesMetricName._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesMetricName.variable(String name)
    : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesMetricName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesMetricName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const cpuutilization =
      ComputeoptimizerRecommendationPreferencesMetricName._(
        TfArgLiteral('CpuUtilization'),
      );
  static const memoryutilization =
      ComputeoptimizerRecommendationPreferencesMetricName._(
        TfArgLiteral('MemoryUtilization'),
      );

  static const List<ComputeoptimizerRecommendationPreferencesMetricName>
  values = [cpuutilization, memoryutilization];
}

/// Typed helper for the `utilization_preference.metric_parameters` block of
/// `aws_computeoptimizer_recommendation_preferences` (derived from provider schema).
@immutable
final class ComputeoptimizerRecommendationPreferencesMetricParameters {
  const ComputeoptimizerRecommendationPreferencesMetricParameters({
    required this.headroom,
    this.threshold,
  });

  final ComputeoptimizerRecommendationPreferencesHeadroom headroom;

  final ComputeoptimizerRecommendationPreferencesThreshold? threshold;

  @internal
  Map<String, Object?> encode() => {
    'headroom': headroom.toTfJson(),
    'threshold': ?threshold?.toTfJson(),
  };
}

/// `headroom` — derived from the provider schema description.
extension type const ComputeoptimizerRecommendationPreferencesHeadroom._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesHeadroom.variable(String name)
    : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesHeadroom.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesHeadroom.arg(TfArg<String> arg)
    : this._(arg);

  static const percent30 = ComputeoptimizerRecommendationPreferencesHeadroom._(
    TfArgLiteral('PERCENT_30'),
  );
  static const percent20 = ComputeoptimizerRecommendationPreferencesHeadroom._(
    TfArgLiteral('PERCENT_20'),
  );
  static const percent10 = ComputeoptimizerRecommendationPreferencesHeadroom._(
    TfArgLiteral('PERCENT_10'),
  );
  static const percent0 = ComputeoptimizerRecommendationPreferencesHeadroom._(
    TfArgLiteral('PERCENT_0'),
  );

  static const List<ComputeoptimizerRecommendationPreferencesHeadroom> values =
      [percent30, percent20, percent10, percent0];
}

/// `threshold` — derived from the provider schema description.
extension type const ComputeoptimizerRecommendationPreferencesThreshold._(
  TfArg<String> _
) implements TfArg<String> {
  ComputeoptimizerRecommendationPreferencesThreshold.variable(String name)
    : this._(TfArg.variable(name));
  ComputeoptimizerRecommendationPreferencesThreshold.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeoptimizerRecommendationPreferencesThreshold.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const p90 = ComputeoptimizerRecommendationPreferencesThreshold._(
    TfArgLiteral('P90'),
  );
  static const p95 = ComputeoptimizerRecommendationPreferencesThreshold._(
    TfArgLiteral('P95'),
  );
  static const p995 = ComputeoptimizerRecommendationPreferencesThreshold._(
    TfArgLiteral('P99_5'),
  );

  static const List<ComputeoptimizerRecommendationPreferencesThreshold> values =
      [p90, p95, p995];
}

/// Factory wrapper for `aws_computeoptimizer_recommendation_preferences`.
final class AwsComputeoptimizerRecommendationPreferences extends Resource {
  static const String tfType =
      'aws_computeoptimizer_recommendation_preferences';

  AwsComputeoptimizerRecommendationPreferences(
    super.localName, {
    ComputeoptimizerRecommendationPreferencesEnhancedInfrastructureMetrics?
    enhancedInfrastructureMetrics,
    ComputeoptimizerRecommendationPreferencesInferredWorkloadTypes?
    inferredWorkloadTypes,
    ComputeoptimizerRecommendationPreferencesLookBackPeriod? lookBackPeriod,
    TfArg<String>? region,
    required ComputeoptimizerRecommendationPreferencesResourceType resourceType,
    ComputeoptimizerRecommendationPreferencesSavingsEstimationMode?
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
  TfRef<String> get enhancedInfrastructureMetrics =>
      TfRef.attribute<String>(this, 'enhanced_infrastructure_metrics');

  /// Reference to `inferred_workload_types` attribute.
  TfRef<String> get inferredWorkloadTypes =>
      TfRef.attribute<String>(this, 'inferred_workload_types');

  /// Reference to `look_back_period` attribute.
  TfRef<String> get lookBackPeriod =>
      TfRef.attribute<String>(this, 'look_back_period');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `savings_estimation_mode` attribute.
  TfRef<String> get savingsEstimationMode =>
      TfRef.attribute<String>(this, 'savings_estimation_mode');
}
