// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_telemetry_rule_for_organization`.
const Set<String> _awsObservabilityadminTelemetryRuleForOrganizationSensitive =
    <String>{};

/// Typed helper for the `rule` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationRule {
  const ObservabilityadminTelemetryRuleForOrganizationRule({
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

  final TfArg<List<String>>? regions;

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationResourceType>?
  resourceType;

  final TfArg<String>? scope;

  final TfArg<String>? selectionCriteria;

  final List<
    TfArg<ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes>
  >?
  telemetrySourceTypes;

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationTelemetryType>
  telemetryType;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationDestinationConfiguration
  >?
  destinationConfiguration;

  Map<String, Object?> encode() => {
    'all_regions': ?allRegions?.toTfJson(),
    'allow_field_updates': ?allowFieldUpdates?.toTfJson(),
    'regions': ?regions?.toTfJson(),
    'resource_type': ?resourceType?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'selection_criteria': ?selectionCriteria?.toTfJson(),
    if (telemetrySourceTypes != null)
      'telemetry_source_types': [
        for (final e in telemetrySourceTypes!) e.toTfJson(),
      ],
    'telemetry_type': telemetryType.toTfJson(),
    if (destinationConfiguration != null)
      'destination_configuration': [
        for (final e in destinationConfiguration!) e.encode(),
      ],
  };
}

/// `resource_type` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationResourceType
    implements TerraformEnum {
  awsEc2Instance('AWS::EC2::Instance'),
  awsEc2Vpc('AWS::EC2::VPC'),
  awsLambdaFunction('AWS::Lambda::Function'),
  awsCloudtrail('AWS::CloudTrail'),
  awsEksCluster('AWS::EKS::Cluster'),
  awsWafv2Webacl('AWS::WAFv2::WebACL'),
  awsElasticloadbalancingv2Loadbalancer(
    'AWS::ElasticLoadBalancingV2::LoadBalancer',
  ),
  awsRoute53resolverResolverendpoint('AWS::Route53Resolver::ResolverEndpoint'),
  awsBedrockagentcoreRuntime('AWS::BedrockAgentCore::Runtime'),
  awsBedrockagentcoreBrowser('AWS::BedrockAgentCore::Browser'),
  awsBedrockagentcoreCodeinterpreter('AWS::BedrockAgentCore::CodeInterpreter'),
  awsBedrockagentcoreGateway('AWS::BedrockAgentCore::Gateway'),
  awsBedrockagentcoreMemory('AWS::BedrockAgentCore::Memory'),
  awsBedrockagentcoreWorkloadidentity(
    'AWS::BedrockAgentCore::WorkloadIdentity',
  ),
  awsSecurityhubHub('AWS::SecurityHub::Hub'),
  awsCloudfrontDistribution('AWS::CloudFront::Distribution'),
  awsSecurityhubHubv2('AWS::SecurityHub::HubV2'),
  awsCloudwatchOtelenrichment('AWS::CloudWatch::OTelEnrichment'),
  awsMskCluster('AWS::MSK::Cluster'),
  awsS3Bucket('AWS::S3::Bucket'),
  awsBedrockKnowledgebase('AWS::Bedrock::KnowledgeBase');

  const ObservabilityadminTelemetryRuleForOrganizationResourceType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `telemetry_source_types` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes
    implements TerraformEnum {
  vpcFlowLogs('VPC_FLOW_LOGS'),
  route53ResolverQueryLogs('ROUTE53_RESOLVER_QUERY_LOGS'),
  eksAuditLogs('EKS_AUDIT_LOGS'),
  eksAuthenticatorLogs('EKS_AUTHENTICATOR_LOGS'),
  eksControllerManagerLogs('EKS_CONTROLLER_MANAGER_LOGS'),
  eksSchedulerLogs('EKS_SCHEDULER_LOGS'),
  eksApiLogs('EKS_API_LOGS');

  const ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `telemetry_type` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationTelemetryType
    implements TerraformEnum {
  logs('Logs'),
  metrics('Metrics'),
  traces('Traces');

  const ObservabilityadminTelemetryRuleForOrganizationTelemetryType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationDestinationConfiguration {
  const ObservabilityadminTelemetryRuleForOrganizationDestinationConfiguration({
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

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationDestinationType>?
  destinationType;

  final TfArg<num>? retentionInDays;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationCloudtrailParameters
  >?
  cloudtrailParameters;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationElbLoadBalancerLoggingParameters
  >?
  elbLoadBalancerLoggingParameters;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationLogDeliveryParameters
  >?
  logDeliveryParameters;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationMskMonitoringParameters
  >?
  mskMonitoringParameters;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationVpcFlowLogParameters
  >?
  vpcFlowLogParameters;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationWafLoggingParameters
  >?
  wafLoggingParameters;

  Map<String, Object?> encode() => {
    'destination_pattern': ?destinationPattern?.toTfJson(),
    'destination_type': ?destinationType?.toTfJson(),
    'retention_in_days': ?retentionInDays?.toTfJson(),
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

/// `destination_type` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationDestinationType
    implements TerraformEnum {
  cloudWatchLogs('cloud-watch-logs');

  const ObservabilityadminTelemetryRuleForOrganizationDestinationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.cloudtrail_parameters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationCloudtrailParameters {
  const ObservabilityadminTelemetryRuleForOrganizationCloudtrailParameters({
    this.advancedEventSelectors,
  });

  final List<
    ObservabilityadminTelemetryRuleForOrganizationAdvancedEventSelectors
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
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationAdvancedEventSelectors {
  const ObservabilityadminTelemetryRuleForOrganizationAdvancedEventSelectors({
    this.name,
    this.fieldSelectors,
  });

  final TfArg<String>? name;

  final List<ObservabilityadminTelemetryRuleForOrganizationFieldSelectors>?
  fieldSelectors;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    if (fieldSelectors != null)
      'field_selectors': [for (final e in fieldSelectors!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.cloudtrail_parameters.advanced_event_selectors.field_selectors` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationFieldSelectors {
  const ObservabilityadminTelemetryRuleForOrganizationFieldSelectors({
    this.endsWith,
    this.equals,
    required this.field,
    this.notEndsWith,
    this.notEquals,
    this.notStartsWith,
    this.startsWith,
  });

  final TfArg<List<String>>? endsWith;

  final TfArg<List<String>>? equals;

  final TfArg<String> field;

  final TfArg<List<String>>? notEndsWith;

  final TfArg<List<String>>? notEquals;

  final TfArg<List<String>>? notStartsWith;

  final TfArg<List<String>>? startsWith;

  Map<String, Object?> encode() => {
    'ends_with': ?endsWith?.toTfJson(),
    'equals': ?equals?.toTfJson(),
    'field': field.toTfJson(),
    'not_ends_with': ?notEndsWith?.toTfJson(),
    'not_equals': ?notEquals?.toTfJson(),
    'not_starts_with': ?notStartsWith?.toTfJson(),
    'starts_with': ?startsWith?.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.elb_load_balancer_logging_parameters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationElbLoadBalancerLoggingParameters {
  const ObservabilityadminTelemetryRuleForOrganizationElbLoadBalancerLoggingParameters({
    this.fieldDelimiter,
    this.outputFormat,
  });

  final TfArg<String>? fieldDelimiter;

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationOutputFormat>?
  outputFormat;

  Map<String, Object?> encode() => {
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
  };
}

/// `output_format` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationOutputFormat
    implements TerraformEnum {
  plain('plain'),
  json('json');

  const ObservabilityadminTelemetryRuleForOrganizationOutputFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.log_delivery_parameters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationLogDeliveryParameters {
  const ObservabilityadminTelemetryRuleForOrganizationLogDeliveryParameters({
    this.logTypes,
  });

  final List<TfArg<ObservabilityadminTelemetryRuleForOrganizationLogTypes>>?
  logTypes;

  Map<String, Object?> encode() => {
    if (logTypes != null)
      'log_types': [for (final e in logTypes!) e.toTfJson()],
  };
}

/// `log_types` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationLogTypes
    implements TerraformEnum {
  applicationLogs('APPLICATION_LOGS'),
  usageLogs('USAGE_LOGS'),
  securityFindingLogs('SECURITY_FINDING_LOGS'),
  accessLogs('ACCESS_LOGS'),
  connectionLogs('CONNECTION_LOGS'),
  s3ServerAccessLogs('S3_SERVER_ACCESS_LOGS'),
  albAccessLogs('ALB_ACCESS_LOGS'),
  albConnectionLogs('ALB_CONNECTION_LOGS'),
  albHealthCheckLogs('ALB_HEALTH_CHECK_LOGS');

  const ObservabilityadminTelemetryRuleForOrganizationLogTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.msk_monitoring_parameters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationMskMonitoringParameters {
  const ObservabilityadminTelemetryRuleForOrganizationMskMonitoringParameters({
    this.enhancedMonitoring,
  });

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring>?
  enhancedMonitoring;

  Map<String, Object?> encode() => {
    'enhanced_monitoring': ?enhancedMonitoring?.toTfJson(),
  };
}

/// `enhanced_monitoring` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring
    implements TerraformEnum {
  defaultCase('DEFAULT'),
  perBroker('PER_BROKER'),
  perTopicPerBroker('PER_TOPIC_PER_BROKER'),
  perTopicPerPartition('PER_TOPIC_PER_PARTITION');

  const ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.vpc_flow_log_parameters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationVpcFlowLogParameters {
  const ObservabilityadminTelemetryRuleForOrganizationVpcFlowLogParameters({
    this.logFormat,
    this.maxAggregationInterval,
    this.trafficType,
  });

  final TfArg<String>? logFormat;

  final TfArg<num>? maxAggregationInterval;

  final TfArg<String>? trafficType;

  Map<String, Object?> encode() => {
    'log_format': ?logFormat?.toTfJson(),
    'max_aggregation_interval': ?maxAggregationInterval?.toTfJson(),
    'traffic_type': ?trafficType?.toTfJson(),
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationWafLoggingParameters {
  const ObservabilityadminTelemetryRuleForOrganizationWafLoggingParameters({
    this.logType,
    this.loggingFilter,
    this.redactedFields,
  });

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationLogType>? logType;

  final List<ObservabilityadminTelemetryRuleForOrganizationLoggingFilter>?
  loggingFilter;

  final List<ObservabilityadminTelemetryRuleForOrganizationRedactedFields>?
  redactedFields;

  Map<String, Object?> encode() => {
    'log_type': ?logType?.toTfJson(),
    if (loggingFilter != null)
      'logging_filter': [for (final e in loggingFilter!) e.encode()],
    if (redactedFields != null)
      'redacted_fields': [for (final e in redactedFields!) e.encode()],
  };
}

/// `log_type` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationLogType
    implements TerraformEnum {
  wafLogs('WAF_LOGS');

  const ObservabilityadminTelemetryRuleForOrganizationLogType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationLoggingFilter {
  const ObservabilityadminTelemetryRuleForOrganizationLoggingFilter({
    this.defaultBehavior,
    this.filters,
  });

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior>?
  defaultBehavior;

  final List<ObservabilityadminTelemetryRuleForOrganizationFilters>? filters;

  Map<String, Object?> encode() => {
    'default_behavior': ?defaultBehavior?.toTfJson(),
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// `default_behavior` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior
    implements TerraformEnum {
  keep('KEEP'),
  drop('DROP');

  const ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationFilters {
  const ObservabilityadminTelemetryRuleForOrganizationFilters({
    this.behavior,
    this.requirement,
    this.conditions,
  });

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationBehavior>? behavior;

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationRequirement>?
  requirement;

  final List<ObservabilityadminTelemetryRuleForOrganizationConditions>?
  conditions;

  Map<String, Object?> encode() => {
    'behavior': ?behavior?.toTfJson(),
    'requirement': ?requirement?.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// `behavior` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationBehavior
    implements TerraformEnum {
  keep('KEEP'),
  drop('DROP');

  const ObservabilityadminTelemetryRuleForOrganizationBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `requirement` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationRequirement
    implements TerraformEnum {
  meetsAll('MEETS_ALL'),
  meetsAny('MEETS_ANY');

  const ObservabilityadminTelemetryRuleForOrganizationRequirement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationConditions {
  const ObservabilityadminTelemetryRuleForOrganizationConditions({
    this.actionCondition,
    this.labelNameCondition,
  });

  final List<ObservabilityadminTelemetryRuleForOrganizationActionCondition>?
  actionCondition;

  final List<ObservabilityadminTelemetryRuleForOrganizationLabelNameCondition>?
  labelNameCondition;

  Map<String, Object?> encode() => {
    if (actionCondition != null)
      'action_condition': [for (final e in actionCondition!) e.encode()],
    if (labelNameCondition != null)
      'label_name_condition': [for (final e in labelNameCondition!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions.action_condition` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationActionCondition {
  const ObservabilityadminTelemetryRuleForOrganizationActionCondition({
    required this.action,
  });

  final TfArg<ObservabilityadminTelemetryRuleForOrganizationAction> action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// `action` — derived from the provider schema description.
enum ObservabilityadminTelemetryRuleForOrganizationAction
    implements TerraformEnum {
  allow('ALLOW'),
  block('BLOCK'),
  count('COUNT'),
  captcha('CAPTCHA'),
  challenge('CHALLENGE'),
  excludedAsCount('EXCLUDED_AS_COUNT');

  const ObservabilityadminTelemetryRuleForOrganizationAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions.label_name_condition` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationLabelNameCondition {
  const ObservabilityadminTelemetryRuleForOrganizationLabelNameCondition({
    this.labelName,
  });

  final TfArg<String>? labelName;

  Map<String, Object?> encode() => {'label_name': ?labelName?.toTfJson()};
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.redacted_fields` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationRedactedFields {
  const ObservabilityadminTelemetryRuleForOrganizationRedactedFields({
    this.method,
    this.queryString,
    this.uriPath,
    this.singleHeader,
  });

  final TfArg<String>? method;

  final TfArg<String>? queryString;

  final TfArg<String>? uriPath;

  final List<ObservabilityadminTelemetryRuleForOrganizationSingleHeader>?
  singleHeader;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'query_string': ?queryString?.toTfJson(),
    'uri_path': ?uriPath?.toTfJson(),
    if (singleHeader != null)
      'single_header': [for (final e in singleHeader!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.redacted_fields.single_header` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationSingleHeader {
  const ObservabilityadminTelemetryRuleForOrganizationSingleHeader({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_observabilityadmin_telemetry_rule_for_organization`.
final class AwsObservabilityadminTelemetryRuleForOrganization extends Resource {
  static const String tfType =
      'aws_observabilityadmin_telemetry_rule_for_organization';

  AwsObservabilityadminTelemetryRuleForOrganization({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    TfArg<Map<String, String>>? tags,
    List<ObservabilityadminTelemetryRuleForOrganizationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'rule_name': ruleName,
           'tags': ?tags,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminTelemetryRuleForOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsObservabilityadminTelemetryRuleForOrganization>`.
  RefTo<AwsObservabilityadminTelemetryRuleForOrganization> get ref =>
      RefTo.of(this);

  /// Reference to `rule_arn` attribute.
  TfRef<String> get ruleArn => TfRef.attribute<String>(this, 'rule_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleNameRef => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
