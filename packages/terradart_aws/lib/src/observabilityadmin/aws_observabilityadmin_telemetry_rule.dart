// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_telemetry_rule`.
const Set<String> _awsObservabilityadminTelemetryRuleSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRule {
  const ObservabilityadminTelemetryRuleRule({
    this.allRegions,
    this.allowFieldUpdates,
    this.regions,
    this.resourceType,
    this.scope,
    this.selectionCriteria,
    this.telemetrySourceTypes,
    required this.telemetryType,
    this.destinationConfiguration,
  });

  final TfArg<bool>? allRegions;

  final TfArg<bool>? allowFieldUpdates;

  final TfArg<List<Object?>>? regions;

  final TfArg<String>? resourceType;

  final TfArg<String>? scope;

  final TfArg<String>? selectionCriteria;

  final TfArg<List<Object?>>? telemetrySourceTypes;

  final TfArg<String> telemetryType;

  final List<ObservabilityadminTelemetryRuleRuleDestinationConfiguration>?
  destinationConfiguration;

  Map<String, Object?> encode() => {
    if (allRegions != null) 'all_regions': allRegions!.toTfJson(),
    if (allowFieldUpdates != null)
      'allow_field_updates': allowFieldUpdates!.toTfJson(),
    if (regions != null) 'regions': regions!.toTfJson(),
    if (resourceType != null) 'resource_type': resourceType!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (selectionCriteria != null)
      'selection_criteria': selectionCriteria!.toTfJson(),
    if (telemetrySourceTypes != null)
      'telemetry_source_types': telemetrySourceTypes!.toTfJson(),
    'telemetry_type': telemetryType.toTfJson(),
    if (destinationConfiguration != null)
      'destination_configuration': [
        for (final e in destinationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule.destination_configuration` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfiguration {
  const ObservabilityadminTelemetryRuleRuleDestinationConfiguration({
    this.destinationPattern,
    this.destinationType,
    this.retentionInDays,
    this.cloudtrailParameters,
    this.elbLoadBalancerLoggingParameters,
    this.logDeliveryParameters,
    this.mskMonitoringParameters,
    this.vpcFlowLogParameters,
    this.wafLoggingParameters,
  });

  final TfArg<String>? destinationPattern;

  final TfArg<String>? destinationType;

  final TfArg<num>? retentionInDays;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParameters
  >?
  cloudtrailParameters;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters
  >?
  elbLoadBalancerLoggingParameters;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationLogDeliveryParameters
  >?
  logDeliveryParameters;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationMskMonitoringParameters
  >?
  mskMonitoringParameters;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters
  >?
  vpcFlowLogParameters;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParameters
  >?
  wafLoggingParameters;

  Map<String, Object?> encode() => {
    if (destinationPattern != null)
      'destination_pattern': destinationPattern!.toTfJson(),
    if (destinationType != null)
      'destination_type': destinationType!.toTfJson(),
    if (retentionInDays != null)
      'retention_in_days': retentionInDays!.toTfJson(),
    if (cloudtrailParameters != null)
      'cloudtrail_parameters': [
        for (final e in cloudtrailParameters!) e.encode(),
      ],
    if (elbLoadBalancerLoggingParameters != null)
      'elb_load_balancer_logging_parameters': [
        for (final e in elbLoadBalancerLoggingParameters!) e.encode(),
      ],
    if (logDeliveryParameters != null)
      'log_delivery_parameters': [
        for (final e in logDeliveryParameters!) e.encode(),
      ],
    if (mskMonitoringParameters != null)
      'msk_monitoring_parameters': [
        for (final e in mskMonitoringParameters!) e.encode(),
      ],
    if (vpcFlowLogParameters != null)
      'vpc_flow_log_parameters': [
        for (final e in vpcFlowLogParameters!) e.encode(),
      ],
    if (wafLoggingParameters != null)
      'waf_logging_parameters': [
        for (final e in wafLoggingParameters!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule.destination_configuration.cloudtrail_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParameters {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParameters({
    this.advancedEventSelectors,
  });

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectors
  >?
  advancedEventSelectors;

  Map<String, Object?> encode() => {
    if (advancedEventSelectors != null)
      'advanced_event_selectors': [
        for (final e in advancedEventSelectors!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule.destination_configuration.cloudtrail_parameters.advanced_event_selectors` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectors {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectors({
    this.name,
    this.fieldSelectors,
  });

  final TfArg<String>? name;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorsFieldSelectors
  >?
  fieldSelectors;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (fieldSelectors != null)
      'field_selectors': [for (final e in fieldSelectors!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.cloudtrail_parameters.advanced_event_selectors.field_selectors` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorsFieldSelectors {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorsFieldSelectors({
    this.endsWith,
    this.equals,
    required this.field,
    this.notEndsWith,
    this.notEquals,
    this.notStartsWith,
    this.startsWith,
  });

  final TfArg<List<Object?>>? endsWith;

  final TfArg<List<Object?>>? equals;

  final TfArg<String> field;

  final TfArg<List<Object?>>? notEndsWith;

  final TfArg<List<Object?>>? notEquals;

  final TfArg<List<Object?>>? notStartsWith;

  final TfArg<List<Object?>>? startsWith;

  Map<String, Object?> encode() => {
    if (endsWith != null) 'ends_with': endsWith!.toTfJson(),
    if (equals != null) 'equals': equals!.toTfJson(),
    'field': field.toTfJson(),
    if (notEndsWith != null) 'not_ends_with': notEndsWith!.toTfJson(),
    if (notEquals != null) 'not_equals': notEquals!.toTfJson(),
    if (notStartsWith != null) 'not_starts_with': notStartsWith!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.elb_load_balancer_logging_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters({
    this.fieldDelimiter,
    this.outputFormat,
  });

  final TfArg<String>? fieldDelimiter;

  final TfArg<String>? outputFormat;

  Map<String, Object?> encode() => {
    if (fieldDelimiter != null) 'field_delimiter': fieldDelimiter!.toTfJson(),
    if (outputFormat != null) 'output_format': outputFormat!.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.log_delivery_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationLogDeliveryParameters {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationLogDeliveryParameters({
    this.logTypes,
  });

  final TfArg<List<Object?>>? logTypes;

  Map<String, Object?> encode() => {
    if (logTypes != null) 'log_types': logTypes!.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.msk_monitoring_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationMskMonitoringParameters {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationMskMonitoringParameters({
    this.enhancedMonitoring,
  });

  final TfArg<String>? enhancedMonitoring;

  Map<String, Object?> encode() => {
    if (enhancedMonitoring != null)
      'enhanced_monitoring': enhancedMonitoring!.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.vpc_flow_log_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters({
    this.logFormat,
    this.maxAggregationInterval,
    this.trafficType,
  });

  final TfArg<String>? logFormat;

  final TfArg<num>? maxAggregationInterval;

  final TfArg<String>? trafficType;

  Map<String, Object?> encode() => {
    if (logFormat != null) 'log_format': logFormat!.toTfJson(),
    if (maxAggregationInterval != null)
      'max_aggregation_interval': maxAggregationInterval!.toTfJson(),
    if (trafficType != null) 'traffic_type': trafficType!.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParameters {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParameters({
    this.logType,
    this.loggingFilter,
    this.redactedFields,
  });

  final TfArg<String>? logType;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilter
  >?
  loggingFilter;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFields
  >?
  redactedFields;

  Map<String, Object?> encode() => {
    if (logType != null) 'log_type': logType!.toTfJson(),
    if (loggingFilter != null)
      'logging_filter': [for (final e in loggingFilter!) e.encode()],
    if (redactedFields != null)
      'redacted_fields': [for (final e in redactedFields!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilter {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilter({
    this.defaultBehavior,
    this.filters,
  });

  final TfArg<String>? defaultBehavior;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilters
  >?
  filters;

  Map<String, Object?> encode() => {
    if (defaultBehavior != null)
      'default_behavior': defaultBehavior!.toTfJson(),
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilters {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilters({
    this.behavior,
    this.requirement,
    this.conditions,
  });

  final TfArg<String>? behavior;

  final TfArg<String>? requirement;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditions
  >?
  conditions;

  Map<String, Object?> encode() => {
    if (behavior != null) 'behavior': behavior!.toTfJson(),
    if (requirement != null) 'requirement': requirement!.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditions {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditions({
    this.actionCondition,
    this.labelNameCondition,
  });

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditionsActionCondition
  >?
  actionCondition;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditionsLabelNameCondition
  >?
  labelNameCondition;

  Map<String, Object?> encode() => {
    if (actionCondition != null)
      'action_condition': [for (final e in actionCondition!) e.encode()],
    if (labelNameCondition != null)
      'label_name_condition': [for (final e in labelNameCondition!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions.action_condition` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditionsActionCondition {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditionsActionCondition({
    required this.action,
  });

  final TfArg<String> action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions.label_name_condition` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditionsLabelNameCondition {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFiltersConditionsLabelNameCondition({
    this.labelName,
  });

  final TfArg<String>? labelName;

  Map<String, Object?> encode() => {
    if (labelName != null) 'label_name': labelName!.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.redacted_fields` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFields {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFields({
    this.method,
    this.queryString,
    this.uriPath,
    this.singleHeader,
  });

  final TfArg<String>? method;

  final TfArg<String>? queryString;

  final TfArg<String>? uriPath;

  final List<
    ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldsSingleHeader
  >?
  singleHeader;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (queryString != null) 'query_string': queryString!.toTfJson(),
    if (uriPath != null) 'uri_path': uriPath!.toTfJson(),
    if (singleHeader != null)
      'single_header': [for (final e in singleHeader!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.redacted_fields.single_header` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldsSingleHeader {
  const ObservabilityadminTelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldsSingleHeader({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_observabilityadmin_telemetry_rule`.
final class AwsObservabilityadminTelemetryRule extends Resource {
  static const String tfType = 'aws_observabilityadmin_telemetry_rule';

  AwsObservabilityadminTelemetryRule({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    TfArg<Map<String, String>>? tags,
    List<ObservabilityadminTelemetryRuleRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'rule_name': ruleName,
           if (tags != null) 'tags': tags,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminTelemetryRuleSensitive;

  /// Reference to `rule_arn` attribute.
  TfRef<String> get ruleArn => TfRef.attribute<String>(this, 'rule_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
