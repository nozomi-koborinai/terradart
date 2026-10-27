// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_metric_alert`.
const Set<String> _azurermMonitorMetricAlertSensitive = <String>{};

/// Monitor Metric Alert enum for `frequency`.
extension type const MonitorMetricAlertFrequency._(TfArg<String> _)
    implements TfArg<String> {
  MonitorMetricAlertFrequency.variable(String name)
    : this._(TfArg.variable(name));
  MonitorMetricAlertFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorMetricAlertFrequency.arg(TfArg<String> arg) : this._(arg);

  static const pt1m = MonitorMetricAlertFrequency._(TfArgLiteral('PT1M'));
  static const pt5m = MonitorMetricAlertFrequency._(TfArgLiteral('PT5M'));
  static const pt15m = MonitorMetricAlertFrequency._(TfArgLiteral('PT15M'));
  static const pt30m = MonitorMetricAlertFrequency._(TfArgLiteral('PT30M'));
  static const pt1h = MonitorMetricAlertFrequency._(TfArgLiteral('PT1H'));

  static const List<MonitorMetricAlertFrequency> values = [
    pt1m,
    pt5m,
    pt15m,
    pt30m,
    pt1h,
  ];
}

/// Monitor Metric Alert Window enum for `window_size`.
extension type const MonitorMetricAlertWindowSize._(TfArg<String> _)
    implements TfArg<String> {
  MonitorMetricAlertWindowSize.variable(String name)
    : this._(TfArg.variable(name));
  MonitorMetricAlertWindowSize.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorMetricAlertWindowSize.arg(TfArg<String> arg) : this._(arg);

  static const pt1m = MonitorMetricAlertWindowSize._(TfArgLiteral('PT1M'));
  static const pt5m = MonitorMetricAlertWindowSize._(TfArgLiteral('PT5M'));
  static const pt15m = MonitorMetricAlertWindowSize._(TfArgLiteral('PT15M'));
  static const pt30m = MonitorMetricAlertWindowSize._(TfArgLiteral('PT30M'));
  static const pt1h = MonitorMetricAlertWindowSize._(TfArgLiteral('PT1H'));
  static const pt6h = MonitorMetricAlertWindowSize._(TfArgLiteral('PT6H'));
  static const pt12h = MonitorMetricAlertWindowSize._(TfArgLiteral('PT12H'));
  static const p1d = MonitorMetricAlertWindowSize._(TfArgLiteral('P1D'));

  static const List<MonitorMetricAlertWindowSize> values = [
    pt1m,
    pt5m,
    pt15m,
    pt30m,
    pt1h,
    pt6h,
    pt12h,
    p1d,
  ];
}

/// Exactly one of `application_insights_web_test_location_availability_criteria`, `criteria`, `dynamic_criteria` on `azurerm_monitor_metric_alert`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.applicationInsightsWebTestLocationAvailabilityCriteria(...)`.
sealed class MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria {
  const MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria();

  /// Sets `application_insights_web_test_location_availability_criteria`.
  const factory MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria.applicationInsightsWebTestLocationAvailabilityCriteria(
    MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria
    applicationInsightsWebTestLocationAvailabilityCriteria,
  ) = MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaApplicationInsightsWebTestLocationAvailabilityCriteria;

  /// Sets `criteria`.
  const factory MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria.criteria(
    List<MonitorMetricAlertCriteria> criteria,
  ) = MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaChoice;

  /// Sets `dynamic_criteria`.
  const factory MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria.dynamicCriteria(
    MonitorMetricAlertDynamicCriteria dynamicCriteria,
  ) = MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaOption;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria.applicationInsightsWebTestLocationAvailabilityCriteria] choice: sets `application_insights_web_test_location_availability_criteria`.
final class MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaApplicationInsightsWebTestLocationAvailabilityCriteria
    extends
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria {
  const MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaApplicationInsightsWebTestLocationAvailabilityCriteria(
    this.applicationInsightsWebTestLocationAvailabilityCriteria,
  );

  final MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria
  applicationInsightsWebTestLocationAvailabilityCriteria;

  @internal
  @override
  String get blockKey =>
      'application_insights_web_test_location_availability_criteria';

  @internal
  @override
  Map<String, Object?> encode() => {
    'application_insights_web_test_location_availability_criteria':
        applicationInsightsWebTestLocationAvailabilityCriteria.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'application_insights_web_test_location_availability_criteria':
        TfArg.literal(
          applicationInsightsWebTestLocationAvailabilityCriteria.encode(),
        ),
  };
}

/// The [MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria.criteria] choice: sets `criteria`.
final class MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaChoice
    extends
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria {
  const MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaChoice(
    this.criteria,
  );

  final List<MonitorMetricAlertCriteria> criteria;

  @internal
  @override
  String get blockKey => 'criteria';

  @internal
  @override
  Map<String, Object?> encode() => {
    'criteria': [for (final e in criteria) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'criteria': TfArg.literal([for (final e in criteria) e.encode()]),
  };
}

/// The [MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria.dynamicCriteria] choice: sets `dynamic_criteria`.
final class MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaOption
    extends
        MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria {
  const MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteriaOption(
    this.dynamicCriteria,
  );

  final MonitorMetricAlertDynamicCriteria dynamicCriteria;

  @internal
  @override
  String get blockKey => 'dynamic_criteria';

  @internal
  @override
  Map<String, Object?> encode() => {
    'dynamic_criteria': dynamicCriteria.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dynamic_criteria': TfArg.literal(dynamicCriteria.encode()),
  };
}

/// Typed helper for the `action` block of
/// `azurerm_monitor_metric_alert` (derived from provider schema).
@immutable
final class MonitorMetricAlertAction {
  const MonitorMetricAlertAction({
    required this.actionGroupId,
    this.webhookProperties,
  });

  final TfArg<String> actionGroupId;

  final TfArg<Map<String, String>>? webhookProperties;

  @internal
  Map<String, Object?> encode() => {
    'action_group_id': actionGroupId.toTfJson(),
    'webhook_properties': ?webhookProperties?.toTfJson(),
  };
}

/// Typed helper for the `application_insights_web_test_location_availability_criteria` block of
/// `azurerm_monitor_metric_alert` (derived from provider schema).
@immutable
final class MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria {
  const MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria({
    required this.componentId,
    required this.failedLocationCount,
    required this.webTestId,
  });

  final TfArg<String> componentId;

  final TfArg<num> failedLocationCount;

  final TfArg<String> webTestId;

  @internal
  Map<String, Object?> encode() => {
    'component_id': componentId.toTfJson(),
    'failed_location_count': failedLocationCount.toTfJson(),
    'web_test_id': webTestId.toTfJson(),
  };
}

/// Typed helper for the `criteria` block of
/// `azurerm_monitor_metric_alert` (derived from provider schema).
@immutable
final class MonitorMetricAlertCriteria {
  const MonitorMetricAlertCriteria({
    required this.aggregation,
    required this.metricName,
    required this.metricNamespace,
    required this.operator,
    this.skipMetricValidation,
    required this.threshold,
    this.dimension,
  });

  final MonitorMetricAlertAggregation aggregation;

  final TfArg<String> metricName;

  final TfArg<String> metricNamespace;

  final MonitorMetricAlertCriteriaOperator operator;

  final TfArg<bool>? skipMetricValidation;

  final TfArg<num> threshold;

  final List<MonitorMetricAlertDimension>? dimension;

  @internal
  Map<String, Object?> encode() => {
    'aggregation': aggregation.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'metric_namespace': metricNamespace.toTfJson(),
    'operator': operator.toTfJson(),
    'skip_metric_validation': ?skipMetricValidation?.toTfJson(),
    'threshold': threshold.toTfJson(),
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
  };
}

/// `aggregation` — derived from the provider schema description.
extension type const MonitorMetricAlertAggregation._(TfArg<String> _)
    implements TfArg<String> {
  MonitorMetricAlertAggregation.variable(String name)
    : this._(TfArg.variable(name));
  MonitorMetricAlertAggregation.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorMetricAlertAggregation.arg(TfArg<String> arg) : this._(arg);

  static const average = MonitorMetricAlertAggregation._(
    TfArgLiteral('Average'),
  );
  static const count = MonitorMetricAlertAggregation._(TfArgLiteral('Count'));
  static const minimum = MonitorMetricAlertAggregation._(
    TfArgLiteral('Minimum'),
  );
  static const maximum = MonitorMetricAlertAggregation._(
    TfArgLiteral('Maximum'),
  );
  static const total = MonitorMetricAlertAggregation._(TfArgLiteral('Total'));

  static const List<MonitorMetricAlertAggregation> values = [
    average,
    count,
    minimum,
    maximum,
    total,
  ];
}

/// `operator` — derived from the provider schema description.
extension type const MonitorMetricAlertCriteriaOperator._(TfArg<String> _)
    implements TfArg<String> {
  MonitorMetricAlertCriteriaOperator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorMetricAlertCriteriaOperator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorMetricAlertCriteriaOperator.arg(TfArg<String> arg) : this._(arg);

  static const equals = MonitorMetricAlertCriteriaOperator._(
    TfArgLiteral('Equals'),
  );
  static const greaterthan = MonitorMetricAlertCriteriaOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const greaterthanorequal = MonitorMetricAlertCriteriaOperator._(
    TfArgLiteral('GreaterThanOrEqual'),
  );
  static const lessthan = MonitorMetricAlertCriteriaOperator._(
    TfArgLiteral('LessThan'),
  );
  static const lessthanorequal = MonitorMetricAlertCriteriaOperator._(
    TfArgLiteral('LessThanOrEqual'),
  );

  static const List<MonitorMetricAlertCriteriaOperator> values = [
    equals,
    greaterthan,
    greaterthanorequal,
    lessthan,
    lessthanorequal,
  ];
}

/// Typed helper for the `criteria.dimension` block of
/// `azurerm_monitor_metric_alert` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MonitorMetricAlertDimension {
  const MonitorMetricAlertDimension({
    required this.name,
    required this.operator,
    required this.values,
  });

  final TfArg<String> name;

  final MonitorMetricAlertDimensionOperator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const MonitorMetricAlertDimensionOperator._(TfArg<String> _)
    implements TfArg<String> {
  MonitorMetricAlertDimensionOperator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorMetricAlertDimensionOperator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorMetricAlertDimensionOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const include = MonitorMetricAlertDimensionOperator._(
    TfArgLiteral('Include'),
  );
  static const exclude = MonitorMetricAlertDimensionOperator._(
    TfArgLiteral('Exclude'),
  );
  static const startswith = MonitorMetricAlertDimensionOperator._(
    TfArgLiteral('StartsWith'),
  );

  static const List<MonitorMetricAlertDimensionOperator> values = [
    include,
    exclude,
    startswith,
  ];
}

/// Typed helper for the `dynamic_criteria` block of
/// `azurerm_monitor_metric_alert` (derived from provider schema).
@immutable
final class MonitorMetricAlertDynamicCriteria {
  const MonitorMetricAlertDynamicCriteria({
    required this.aggregation,
    required this.alertSensitivity,
    this.evaluationFailureCount,
    this.evaluationTotalCount,
    this.ignoreDataBefore,
    required this.metricName,
    required this.metricNamespace,
    required this.operator,
    this.skipMetricValidation,
    this.dimension,
  });

  final MonitorMetricAlertAggregation aggregation;

  final MonitorMetricAlertSensitivity alertSensitivity;

  final TfArg<num>? evaluationFailureCount;

  final TfArg<num>? evaluationTotalCount;

  final TfArg<String>? ignoreDataBefore;

  final TfArg<String> metricName;

  final TfArg<String> metricNamespace;

  final MonitorMetricAlertDynamicCriteriaOperator operator;

  final TfArg<bool>? skipMetricValidation;

  final List<MonitorMetricAlertDimension>? dimension;

  @internal
  Map<String, Object?> encode() => {
    'aggregation': aggregation.toTfJson(),
    'alert_sensitivity': alertSensitivity.toTfJson(),
    'evaluation_failure_count': ?evaluationFailureCount?.toTfJson(),
    'evaluation_total_count': ?evaluationTotalCount?.toTfJson(),
    'ignore_data_before': ?ignoreDataBefore?.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'metric_namespace': metricNamespace.toTfJson(),
    'operator': operator.toTfJson(),
    'skip_metric_validation': ?skipMetricValidation?.toTfJson(),
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
  };
}

/// `alert_sensitivity` — derived from the provider schema description.
extension type const MonitorMetricAlertSensitivity._(TfArg<String> _)
    implements TfArg<String> {
  MonitorMetricAlertSensitivity.variable(String name)
    : this._(TfArg.variable(name));
  MonitorMetricAlertSensitivity.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorMetricAlertSensitivity.arg(TfArg<String> arg) : this._(arg);

  static const high = MonitorMetricAlertSensitivity._(TfArgLiteral('High'));
  static const low = MonitorMetricAlertSensitivity._(TfArgLiteral('Low'));
  static const medium = MonitorMetricAlertSensitivity._(TfArgLiteral('Medium'));

  static const List<MonitorMetricAlertSensitivity> values = [high, low, medium];
}

/// `operator` — derived from the provider schema description.
extension type const MonitorMetricAlertDynamicCriteriaOperator._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorMetricAlertDynamicCriteriaOperator.variable(String name)
    : this._(TfArg.variable(name));
  MonitorMetricAlertDynamicCriteriaOperator.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorMetricAlertDynamicCriteriaOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const greaterorlessthan = MonitorMetricAlertDynamicCriteriaOperator._(
    TfArgLiteral('GreaterOrLessThan'),
  );
  static const greaterthan = MonitorMetricAlertDynamicCriteriaOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const lessthan = MonitorMetricAlertDynamicCriteriaOperator._(
    TfArgLiteral('LessThan'),
  );

  static const List<MonitorMetricAlertDynamicCriteriaOperator> values = [
    greaterorlessthan,
    greaterthan,
    lessthan,
  ];
}

/// Factory wrapper for `azurerm_monitor_metric_alert`.
final class AzurermMonitorMetricAlert extends Resource {
  static const String tfType = 'azurerm_monitor_metric_alert';

  AzurermMonitorMetricAlert(
    super.localName, {
    TfArg<bool>? autoMitigate,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    MonitorMetricAlertFrequency? frequency,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> scopes,
    TfArg<num>? severity,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? targetResourceLocation,
    TfArg<String>? targetResourceType,
    MonitorMetricAlertWindowSize? windowSize,
    List<MonitorMetricAlertAction>? action,
    required MonitorMetricAlertApplicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria
    applicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_mitigate': ?autoMitigate,
           'description': ?description,
           'enabled': ?enabled,
           'frequency': ?frequency,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scopes': scopes,
           'severity': ?severity,
           'tags': ?tags,
           'target_resource_location': ?targetResourceLocation,
           'target_resource_type': ?targetResourceType,
           'window_size': ?windowSize,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           ...applicationInsightsWebTestLocationAvailabilityCriteriaOrCriteriaOrDynamicCriteria
               .argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorMetricAlertSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorMetricAlert>`.
  RefTo<AzurermMonitorMetricAlert> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_mitigate` attribute.
  TfRef<bool> get autoMitigate => TfRef.attribute<bool>(this, 'auto_mitigate');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `severity` attribute.
  TfRef<num> get severity => TfRef.attribute<num>(this, 'severity');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_resource_location` attribute.
  TfRef<String> get targetResourceLocation =>
      TfRef.attribute<String>(this, 'target_resource_location');

  /// Reference to `target_resource_type` attribute.
  TfRef<String> get targetResourceType =>
      TfRef.attribute<String>(this, 'target_resource_type');

  /// Reference to `window_size` attribute.
  TfRef<String> get windowSize => TfRef.attribute<String>(this, 'window_size');
}
