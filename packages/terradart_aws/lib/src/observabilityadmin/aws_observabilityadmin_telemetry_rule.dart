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
final class ObservabilityadminTelemetryRule {
  const ObservabilityadminTelemetryRule({
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

  final ObservabilityadminTelemetryRuleResourceType? resourceType;

  final TfArg<String>? scope;

  final TfArg<String>? selectionCriteria;

  final List<ObservabilityadminTelemetryRuleTelemetrySourceTypes>?
  telemetrySourceTypes;

  final ObservabilityadminTelemetryRuleTelemetryType telemetryType;

  final List<ObservabilityadminTelemetryRuleDestinationConfiguration>?
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
extension type const ObservabilityadminTelemetryRuleResourceType._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleResourceType.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const awsEc2Instance = ObservabilityadminTelemetryRuleResourceType._(
    TfArgLiteral('AWS::EC2::Instance'),
  );
  static const awsEc2Vpc = ObservabilityadminTelemetryRuleResourceType._(
    TfArgLiteral('AWS::EC2::VPC'),
  );
  static const awsLambdaFunction =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::Lambda::Function'),
      );
  static const awsCloudtrail = ObservabilityadminTelemetryRuleResourceType._(
    TfArgLiteral('AWS::CloudTrail'),
  );
  static const awsEksCluster = ObservabilityadminTelemetryRuleResourceType._(
    TfArgLiteral('AWS::EKS::Cluster'),
  );
  static const awsWafv2Webacl = ObservabilityadminTelemetryRuleResourceType._(
    TfArgLiteral('AWS::WAFv2::WebACL'),
  );
  static const awsElasticloadbalancingv2Loadbalancer =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::ElasticLoadBalancingV2::LoadBalancer'),
      );
  static const awsRoute53resolverResolverendpoint =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::Route53Resolver::ResolverEndpoint'),
      );
  static const awsBedrockagentcoreRuntime =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Runtime'),
      );
  static const awsBedrockagentcoreBrowser =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Browser'),
      );
  static const awsBedrockagentcoreCodeinterpreter =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::CodeInterpreter'),
      );
  static const awsBedrockagentcoreGateway =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Gateway'),
      );
  static const awsBedrockagentcoreMemory =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Memory'),
      );
  static const awsBedrockagentcoreWorkloadidentity =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::WorkloadIdentity'),
      );
  static const awsSecurityhubHub =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::SecurityHub::Hub'),
      );
  static const awsCloudfrontDistribution =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::CloudFront::Distribution'),
      );
  static const awsSecurityhubHubv2 =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::SecurityHub::HubV2'),
      );
  static const awsCloudwatchOtelenrichment =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::CloudWatch::OTelEnrichment'),
      );
  static const awsMskCluster = ObservabilityadminTelemetryRuleResourceType._(
    TfArgLiteral('AWS::MSK::Cluster'),
  );
  static const awsS3Bucket = ObservabilityadminTelemetryRuleResourceType._(
    TfArgLiteral('AWS::S3::Bucket'),
  );
  static const awsBedrockKnowledgebase =
      ObservabilityadminTelemetryRuleResourceType._(
        TfArgLiteral('AWS::Bedrock::KnowledgeBase'),
      );

  static const List<ObservabilityadminTelemetryRuleResourceType> values = [
    awsEc2Instance,
    awsEc2Vpc,
    awsLambdaFunction,
    awsCloudtrail,
    awsEksCluster,
    awsWafv2Webacl,
    awsElasticloadbalancingv2Loadbalancer,
    awsRoute53resolverResolverendpoint,
    awsBedrockagentcoreRuntime,
    awsBedrockagentcoreBrowser,
    awsBedrockagentcoreCodeinterpreter,
    awsBedrockagentcoreGateway,
    awsBedrockagentcoreMemory,
    awsBedrockagentcoreWorkloadidentity,
    awsSecurityhubHub,
    awsCloudfrontDistribution,
    awsSecurityhubHubv2,
    awsCloudwatchOtelenrichment,
    awsMskCluster,
    awsS3Bucket,
    awsBedrockKnowledgebase,
  ];
}

/// `telemetry_source_types` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleTelemetrySourceTypes.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleTelemetrySourceTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleTelemetrySourceTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vpcFlowLogs =
      ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
        TfArgLiteral('VPC_FLOW_LOGS'),
      );
  static const route53ResolverQueryLogs =
      ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
        TfArgLiteral('ROUTE53_RESOLVER_QUERY_LOGS'),
      );
  static const eksAuditLogs =
      ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
        TfArgLiteral('EKS_AUDIT_LOGS'),
      );
  static const eksAuthenticatorLogs =
      ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
        TfArgLiteral('EKS_AUTHENTICATOR_LOGS'),
      );
  static const eksControllerManagerLogs =
      ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
        TfArgLiteral('EKS_CONTROLLER_MANAGER_LOGS'),
      );
  static const eksSchedulerLogs =
      ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
        TfArgLiteral('EKS_SCHEDULER_LOGS'),
      );
  static const eksApiLogs =
      ObservabilityadminTelemetryRuleTelemetrySourceTypes._(
        TfArgLiteral('EKS_API_LOGS'),
      );

  static const List<ObservabilityadminTelemetryRuleTelemetrySourceTypes>
  values = [
    vpcFlowLogs,
    route53ResolverQueryLogs,
    eksAuditLogs,
    eksAuthenticatorLogs,
    eksControllerManagerLogs,
    eksSchedulerLogs,
    eksApiLogs,
  ];
}

/// `telemetry_type` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleTelemetryType._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleTelemetryType.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleTelemetryType.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleTelemetryType.arg(TfArg<String> arg)
    : this._(arg);

  static const logs = ObservabilityadminTelemetryRuleTelemetryType._(
    TfArgLiteral('Logs'),
  );
  static const metrics = ObservabilityadminTelemetryRuleTelemetryType._(
    TfArgLiteral('Metrics'),
  );
  static const traces = ObservabilityadminTelemetryRuleTelemetryType._(
    TfArgLiteral('Traces'),
  );

  static const List<ObservabilityadminTelemetryRuleTelemetryType> values = [
    logs,
    metrics,
    traces,
  ];
}

/// Typed helper for the `rule.destination_configuration` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleDestinationConfiguration {
  const ObservabilityadminTelemetryRuleDestinationConfiguration({
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

  final ObservabilityadminTelemetryRuleDestinationType? destinationType;

  final TfArg<num>? retentionInDays;

  final List<ObservabilityadminTelemetryRuleCloudtrailParameters>?
  cloudtrailParameters;

  final List<ObservabilityadminTelemetryRuleElbLoadBalancerLoggingParameters>?
  elbLoadBalancerLoggingParameters;

  final List<ObservabilityadminTelemetryRuleLogDeliveryParameters>?
  logDeliveryParameters;

  final List<ObservabilityadminTelemetryRuleMskMonitoringParameters>?
  mskMonitoringParameters;

  final List<ObservabilityadminTelemetryRuleVpcFlowLogParameters>?
  vpcFlowLogParameters;

  final List<ObservabilityadminTelemetryRuleWafLoggingParameters>?
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
extension type const ObservabilityadminTelemetryRuleDestinationType._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleDestinationType.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleDestinationType.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleDestinationType.arg(TfArg<String> arg)
    : this._(arg);

  static const cloudWatchLogs =
      ObservabilityadminTelemetryRuleDestinationType._(
        TfArgLiteral('cloud-watch-logs'),
      );

  static const List<ObservabilityadminTelemetryRuleDestinationType> values = [
    cloudWatchLogs,
  ];
}

/// Typed helper for the `rule.destination_configuration.cloudtrail_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleCloudtrailParameters {
  const ObservabilityadminTelemetryRuleCloudtrailParameters({
    this.advancedEventSelectors,
  });

  final List<ObservabilityadminTelemetryRuleAdvancedEventSelectors>?
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
final class ObservabilityadminTelemetryRuleAdvancedEventSelectors {
  const ObservabilityadminTelemetryRuleAdvancedEventSelectors({
    this.name,
    this.fieldSelectors,
  });

  final TfArg<String>? name;

  final List<ObservabilityadminTelemetryRuleFieldSelectors>? fieldSelectors;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    if (fieldSelectors != null)
      'field_selectors': [for (final e in fieldSelectors!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.cloudtrail_parameters.advanced_event_selectors.field_selectors` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleFieldSelectors {
  const ObservabilityadminTelemetryRuleFieldSelectors({
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
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleElbLoadBalancerLoggingParameters {
  const ObservabilityadminTelemetryRuleElbLoadBalancerLoggingParameters({
    this.fieldDelimiter,
    this.outputFormat,
  });

  final TfArg<String>? fieldDelimiter;

  final ObservabilityadminTelemetryRuleOutputFormat? outputFormat;

  Map<String, Object?> encode() => {
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
  };
}

/// `output_format` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleOutputFormat._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleOutputFormat.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleOutputFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleOutputFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const plain = ObservabilityadminTelemetryRuleOutputFormat._(
    TfArgLiteral('plain'),
  );
  static const json = ObservabilityadminTelemetryRuleOutputFormat._(
    TfArgLiteral('json'),
  );

  static const List<ObservabilityadminTelemetryRuleOutputFormat> values = [
    plain,
    json,
  ];
}

/// Typed helper for the `rule.destination_configuration.log_delivery_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleLogDeliveryParameters {
  const ObservabilityadminTelemetryRuleLogDeliveryParameters({this.logTypes});

  final List<ObservabilityadminTelemetryRuleLogTypes>? logTypes;

  Map<String, Object?> encode() => {
    if (logTypes != null)
      'log_types': [for (final e in logTypes!) e.toTfJson()],
  };
}

/// `log_types` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleLogTypes._(TfArg<String> _)
    implements TfArg<String> {
  ObservabilityadminTelemetryRuleLogTypes.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleLogTypes.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleLogTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const applicationLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('APPLICATION_LOGS'),
  );
  static const usageLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('USAGE_LOGS'),
  );
  static const securityFindingLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('SECURITY_FINDING_LOGS'),
  );
  static const accessLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('ACCESS_LOGS'),
  );
  static const connectionLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('CONNECTION_LOGS'),
  );
  static const s3ServerAccessLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('S3_SERVER_ACCESS_LOGS'),
  );
  static const albAccessLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('ALB_ACCESS_LOGS'),
  );
  static const albConnectionLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('ALB_CONNECTION_LOGS'),
  );
  static const albHealthCheckLogs = ObservabilityadminTelemetryRuleLogTypes._(
    TfArgLiteral('ALB_HEALTH_CHECK_LOGS'),
  );

  static const List<ObservabilityadminTelemetryRuleLogTypes> values = [
    applicationLogs,
    usageLogs,
    securityFindingLogs,
    accessLogs,
    connectionLogs,
    s3ServerAccessLogs,
    albAccessLogs,
    albConnectionLogs,
    albHealthCheckLogs,
  ];
}

/// Typed helper for the `rule.destination_configuration.msk_monitoring_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleMskMonitoringParameters {
  const ObservabilityadminTelemetryRuleMskMonitoringParameters({
    this.enhancedMonitoring,
  });

  final ObservabilityadminTelemetryRuleEnhancedMonitoring? enhancedMonitoring;

  Map<String, Object?> encode() => {
    'enhanced_monitoring': ?enhancedMonitoring?.toTfJson(),
  };
}

/// `enhanced_monitoring` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleEnhancedMonitoring._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleEnhancedMonitoring.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleEnhancedMonitoring.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleEnhancedMonitoring.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase =
      ObservabilityadminTelemetryRuleEnhancedMonitoring._(
        TfArgLiteral('DEFAULT'),
      );
  static const perBroker = ObservabilityadminTelemetryRuleEnhancedMonitoring._(
    TfArgLiteral('PER_BROKER'),
  );
  static const perTopicPerBroker =
      ObservabilityadminTelemetryRuleEnhancedMonitoring._(
        TfArgLiteral('PER_TOPIC_PER_BROKER'),
      );
  static const perTopicPerPartition =
      ObservabilityadminTelemetryRuleEnhancedMonitoring._(
        TfArgLiteral('PER_TOPIC_PER_PARTITION'),
      );

  static const List<ObservabilityadminTelemetryRuleEnhancedMonitoring> values =
      [defaultCase, perBroker, perTopicPerBroker, perTopicPerPartition];
}

/// Typed helper for the `rule.destination_configuration.vpc_flow_log_parameters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleVpcFlowLogParameters {
  const ObservabilityadminTelemetryRuleVpcFlowLogParameters({
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
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleWafLoggingParameters {
  const ObservabilityadminTelemetryRuleWafLoggingParameters({
    this.logType,
    this.loggingFilter,
    this.redactedFields,
  });

  final ObservabilityadminTelemetryRuleLogType? logType;

  final List<ObservabilityadminTelemetryRuleLoggingFilter>? loggingFilter;

  final List<ObservabilityadminTelemetryRuleRedactedFields>? redactedFields;

  Map<String, Object?> encode() => {
    'log_type': ?logType?.toTfJson(),
    if (loggingFilter != null)
      'logging_filter': [for (final e in loggingFilter!) e.encode()],
    if (redactedFields != null)
      'redacted_fields': [for (final e in redactedFields!) e.encode()],
  };
}

/// `log_type` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleLogType._(TfArg<String> _)
    implements TfArg<String> {
  ObservabilityadminTelemetryRuleLogType.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleLogType.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleLogType.arg(TfArg<String> arg)
    : this._(arg);

  static const wafLogs = ObservabilityadminTelemetryRuleLogType._(
    TfArgLiteral('WAF_LOGS'),
  );

  static const List<ObservabilityadminTelemetryRuleLogType> values = [wafLogs];
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleLoggingFilter {
  const ObservabilityadminTelemetryRuleLoggingFilter({
    this.defaultBehavior,
    this.filters,
  });

  final ObservabilityadminTelemetryRuleDefaultBehavior? defaultBehavior;

  final List<ObservabilityadminTelemetryRuleFilters>? filters;

  Map<String, Object?> encode() => {
    'default_behavior': ?defaultBehavior?.toTfJson(),
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// `default_behavior` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleDefaultBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleDefaultBehavior.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleDefaultBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleDefaultBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const keep = ObservabilityadminTelemetryRuleDefaultBehavior._(
    TfArgLiteral('KEEP'),
  );
  static const drop = ObservabilityadminTelemetryRuleDefaultBehavior._(
    TfArgLiteral('DROP'),
  );

  static const List<ObservabilityadminTelemetryRuleDefaultBehavior> values = [
    keep,
    drop,
  ];
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleFilters {
  const ObservabilityadminTelemetryRuleFilters({
    this.behavior,
    this.requirement,
    this.conditions,
  });

  final ObservabilityadminTelemetryRuleBehavior? behavior;

  final ObservabilityadminTelemetryRuleRequirement? requirement;

  final List<ObservabilityadminTelemetryRuleConditions>? conditions;

  Map<String, Object?> encode() => {
    'behavior': ?behavior?.toTfJson(),
    'requirement': ?requirement?.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// `behavior` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleBehavior._(TfArg<String> _)
    implements TfArg<String> {
  ObservabilityadminTelemetryRuleBehavior.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const keep = ObservabilityadminTelemetryRuleBehavior._(
    TfArgLiteral('KEEP'),
  );
  static const drop = ObservabilityadminTelemetryRuleBehavior._(
    TfArgLiteral('DROP'),
  );

  static const List<ObservabilityadminTelemetryRuleBehavior> values = [
    keep,
    drop,
  ];
}

/// `requirement` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleRequirement._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleRequirement.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleRequirement.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleRequirement.arg(TfArg<String> arg)
    : this._(arg);

  static const meetsAll = ObservabilityadminTelemetryRuleRequirement._(
    TfArgLiteral('MEETS_ALL'),
  );
  static const meetsAny = ObservabilityadminTelemetryRuleRequirement._(
    TfArgLiteral('MEETS_ANY'),
  );

  static const List<ObservabilityadminTelemetryRuleRequirement> values = [
    meetsAll,
    meetsAny,
  ];
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleConditions {
  const ObservabilityadminTelemetryRuleConditions({
    this.actionCondition,
    this.labelNameCondition,
  });

  final List<ObservabilityadminTelemetryRuleActionCondition>? actionCondition;

  final List<ObservabilityadminTelemetryRuleLabelNameCondition>?
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
final class ObservabilityadminTelemetryRuleActionCondition {
  const ObservabilityadminTelemetryRuleActionCondition({required this.action});

  final ObservabilityadminTelemetryRuleAction action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// `action` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  ObservabilityadminTelemetryRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = ObservabilityadminTelemetryRuleAction._(
    TfArgLiteral('ALLOW'),
  );
  static const block = ObservabilityadminTelemetryRuleAction._(
    TfArgLiteral('BLOCK'),
  );
  static const count = ObservabilityadminTelemetryRuleAction._(
    TfArgLiteral('COUNT'),
  );
  static const captcha = ObservabilityadminTelemetryRuleAction._(
    TfArgLiteral('CAPTCHA'),
  );
  static const challenge = ObservabilityadminTelemetryRuleAction._(
    TfArgLiteral('CHALLENGE'),
  );
  static const excludedAsCount = ObservabilityadminTelemetryRuleAction._(
    TfArgLiteral('EXCLUDED_AS_COUNT'),
  );

  static const List<ObservabilityadminTelemetryRuleAction> values = [
    allow,
    block,
    count,
    captcha,
    challenge,
    excludedAsCount,
  ];
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter.filters.conditions.label_name_condition` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleLabelNameCondition {
  const ObservabilityadminTelemetryRuleLabelNameCondition({this.labelName});

  final TfArg<String>? labelName;

  Map<String, Object?> encode() => {'label_name': ?labelName?.toTfJson()};
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.redacted_fields` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleRedactedFields {
  const ObservabilityadminTelemetryRuleRedactedFields({
    this.method,
    this.queryString,
    this.uriPath,
    this.singleHeader,
  });

  final TfArg<String>? method;

  final TfArg<String>? queryString;

  final TfArg<String>? uriPath;

  final List<ObservabilityadminTelemetryRuleSingleHeader>? singleHeader;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'query_string': ?queryString?.toTfJson(),
    'uri_path': ?uriPath?.toTfJson(),
    if (singleHeader != null)
      'single_header': [for (final e in singleHeader!) e.encode()],
  };
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.redacted_fields.single_header` block of
/// `aws_observabilityadmin_telemetry_rule` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleSingleHeader {
  const ObservabilityadminTelemetryRuleSingleHeader({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_observabilityadmin_telemetry_rule`.
final class AwsObservabilityadminTelemetryRule extends Resource {
  static const String tfType = 'aws_observabilityadmin_telemetry_rule';

  AwsObservabilityadminTelemetryRule(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> ruleName,
    TfArg<Map<String, String>>? tags,
    List<ObservabilityadminTelemetryRule>? rule,
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
      _awsObservabilityadminTelemetryRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsObservabilityadminTelemetryRule>`.
  RefTo<AwsObservabilityadminTelemetryRule> get ref => RefTo.of(this);

  /// Reference to `rule_arn` attribute.
  TfRef<String> get ruleArn => TfRef.attribute<String>(this, 'rule_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
