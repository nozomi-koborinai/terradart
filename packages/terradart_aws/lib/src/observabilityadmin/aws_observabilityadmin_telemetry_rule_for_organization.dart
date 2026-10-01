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

  final ObservabilityadminTelemetryRuleForOrganizationResourceType?
  resourceType;

  final TfArg<String>? scope;

  final TfArg<String>? selectionCriteria;

  final List<
    ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes
  >?
  telemetrySourceTypes;

  final ObservabilityadminTelemetryRuleForOrganizationTelemetryType
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
extension type const ObservabilityadminTelemetryRuleForOrganizationResourceType._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationResourceType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationResourceType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationResourceType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const awsEc2Instance =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::EC2::Instance'),
      );
  static const awsEc2Vpc =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::EC2::VPC'),
      );
  static const awsLambdaFunction =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::Lambda::Function'),
      );
  static const awsCloudtrail =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::CloudTrail'),
      );
  static const awsEksCluster =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::EKS::Cluster'),
      );
  static const awsWafv2Webacl =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::WAFv2::WebACL'),
      );
  static const awsElasticloadbalancingv2Loadbalancer =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::ElasticLoadBalancingV2::LoadBalancer'),
      );
  static const awsRoute53resolverResolverendpoint =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::Route53Resolver::ResolverEndpoint'),
      );
  static const awsBedrockagentcoreRuntime =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Runtime'),
      );
  static const awsBedrockagentcoreBrowser =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Browser'),
      );
  static const awsBedrockagentcoreCodeinterpreter =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::CodeInterpreter'),
      );
  static const awsBedrockagentcoreGateway =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Gateway'),
      );
  static const awsBedrockagentcoreMemory =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::Memory'),
      );
  static const awsBedrockagentcoreWorkloadidentity =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::BedrockAgentCore::WorkloadIdentity'),
      );
  static const awsSecurityhubHub =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::SecurityHub::Hub'),
      );
  static const awsCloudfrontDistribution =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::CloudFront::Distribution'),
      );
  static const awsSecurityhubHubv2 =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::SecurityHub::HubV2'),
      );
  static const awsCloudwatchOtelenrichment =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::CloudWatch::OTelEnrichment'),
      );
  static const awsMskCluster =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::MSK::Cluster'),
      );
  static const awsS3Bucket =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::S3::Bucket'),
      );
  static const awsBedrockKnowledgebase =
      ObservabilityadminTelemetryRuleForOrganizationResourceType._(
        TfArgLiteral('AWS::Bedrock::KnowledgeBase'),
      );

  static const List<ObservabilityadminTelemetryRuleForOrganizationResourceType>
  values = [
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
extension type const ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vpcFlowLogs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
        TfArgLiteral('VPC_FLOW_LOGS'),
      );
  static const route53ResolverQueryLogs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
        TfArgLiteral('ROUTE53_RESOLVER_QUERY_LOGS'),
      );
  static const eksAuditLogs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
        TfArgLiteral('EKS_AUDIT_LOGS'),
      );
  static const eksAuthenticatorLogs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
        TfArgLiteral('EKS_AUTHENTICATOR_LOGS'),
      );
  static const eksControllerManagerLogs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
        TfArgLiteral('EKS_CONTROLLER_MANAGER_LOGS'),
      );
  static const eksSchedulerLogs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
        TfArgLiteral('EKS_SCHEDULER_LOGS'),
      );
  static const eksApiLogs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes._(
        TfArgLiteral('EKS_API_LOGS'),
      );

  static const List<
    ObservabilityadminTelemetryRuleForOrganizationTelemetrySourceTypes
  >
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
extension type const ObservabilityadminTelemetryRuleForOrganizationTelemetryType._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationTelemetryType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationTelemetryType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationTelemetryType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const logs =
      ObservabilityadminTelemetryRuleForOrganizationTelemetryType._(
        TfArgLiteral('Logs'),
      );
  static const metrics =
      ObservabilityadminTelemetryRuleForOrganizationTelemetryType._(
        TfArgLiteral('Metrics'),
      );
  static const traces =
      ObservabilityadminTelemetryRuleForOrganizationTelemetryType._(
        TfArgLiteral('Traces'),
      );

  static const List<ObservabilityadminTelemetryRuleForOrganizationTelemetryType>
  values = [logs, metrics, traces];
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

  final ObservabilityadminTelemetryRuleForOrganizationDestinationType?
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
extension type const ObservabilityadminTelemetryRuleForOrganizationDestinationType._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationDestinationType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationDestinationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationDestinationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const cloudWatchLogs =
      ObservabilityadminTelemetryRuleForOrganizationDestinationType._(
        TfArgLiteral('cloud-watch-logs'),
      );

  static const List<
    ObservabilityadminTelemetryRuleForOrganizationDestinationType
  >
  values = [cloudWatchLogs];
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

  final ObservabilityadminTelemetryRuleForOrganizationOutputFormat?
  outputFormat;

  Map<String, Object?> encode() => {
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
  };
}

/// `output_format` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleForOrganizationOutputFormat._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationOutputFormat.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationOutputFormat.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationOutputFormat.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const plain =
      ObservabilityadminTelemetryRuleForOrganizationOutputFormat._(
        TfArgLiteral('plain'),
      );
  static const json =
      ObservabilityadminTelemetryRuleForOrganizationOutputFormat._(
        TfArgLiteral('json'),
      );

  static const List<ObservabilityadminTelemetryRuleForOrganizationOutputFormat>
  values = [plain, json];
}

/// Typed helper for the `rule.destination_configuration.log_delivery_parameters` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationLogDeliveryParameters {
  const ObservabilityadminTelemetryRuleForOrganizationLogDeliveryParameters({
    this.logTypes,
  });

  final List<ObservabilityadminTelemetryRuleForOrganizationLogTypes>? logTypes;

  Map<String, Object?> encode() => {
    if (logTypes != null)
      'log_types': [for (final e in logTypes!) e.toTfJson()],
  };
}

/// `log_types` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationLogTypes.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationLogTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationLogTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const applicationLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('APPLICATION_LOGS'),
      );
  static const usageLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('USAGE_LOGS'),
      );
  static const securityFindingLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('SECURITY_FINDING_LOGS'),
      );
  static const accessLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('ACCESS_LOGS'),
      );
  static const connectionLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('CONNECTION_LOGS'),
      );
  static const s3ServerAccessLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('S3_SERVER_ACCESS_LOGS'),
      );
  static const albAccessLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('ALB_ACCESS_LOGS'),
      );
  static const albConnectionLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('ALB_CONNECTION_LOGS'),
      );
  static const albHealthCheckLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogTypes._(
        TfArgLiteral('ALB_HEALTH_CHECK_LOGS'),
      );

  static const List<ObservabilityadminTelemetryRuleForOrganizationLogTypes>
  values = [
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
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationMskMonitoringParameters {
  const ObservabilityadminTelemetryRuleForOrganizationMskMonitoringParameters({
    this.enhancedMonitoring,
  });

  final ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring?
  enhancedMonitoring;

  Map<String, Object?> encode() => {
    'enhanced_monitoring': ?enhancedMonitoring?.toTfJson(),
  };
}

/// `enhanced_monitoring` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const defaultCase =
      ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring._(
        TfArgLiteral('DEFAULT'),
      );
  static const perBroker =
      ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring._(
        TfArgLiteral('PER_BROKER'),
      );
  static const perTopicPerBroker =
      ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring._(
        TfArgLiteral('PER_TOPIC_PER_BROKER'),
      );
  static const perTopicPerPartition =
      ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring._(
        TfArgLiteral('PER_TOPIC_PER_PARTITION'),
      );

  static const List<
    ObservabilityadminTelemetryRuleForOrganizationEnhancedMonitoring
  >
  values = [defaultCase, perBroker, perTopicPerBroker, perTopicPerPartition];
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

  final ObservabilityadminTelemetryRuleForOrganizationLogType? logType;

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
extension type const ObservabilityadminTelemetryRuleForOrganizationLogType._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationLogType.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationLogType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationLogType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const wafLogs =
      ObservabilityadminTelemetryRuleForOrganizationLogType._(
        TfArgLiteral('WAF_LOGS'),
      );

  static const List<ObservabilityadminTelemetryRuleForOrganizationLogType>
  values = [wafLogs];
}

/// Typed helper for the `rule.destination_configuration.waf_logging_parameters.logging_filter` block of
/// `aws_observabilityadmin_telemetry_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminTelemetryRuleForOrganizationLoggingFilter {
  const ObservabilityadminTelemetryRuleForOrganizationLoggingFilter({
    this.defaultBehavior,
    this.filters,
  });

  final ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior?
  defaultBehavior;

  final List<ObservabilityadminTelemetryRuleForOrganizationFilters>? filters;

  Map<String, Object?> encode() => {
    'default_behavior': ?defaultBehavior?.toTfJson(),
    if (filters != null) 'filters': [for (final e in filters!) e.encode()],
  };
}

/// `default_behavior` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const keep =
      ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior._(
        TfArgLiteral('KEEP'),
      );
  static const drop =
      ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior._(
        TfArgLiteral('DROP'),
      );

  static const List<
    ObservabilityadminTelemetryRuleForOrganizationDefaultBehavior
  >
  values = [keep, drop];
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

  final ObservabilityadminTelemetryRuleForOrganizationBehavior? behavior;

  final ObservabilityadminTelemetryRuleForOrganizationRequirement? requirement;

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
extension type const ObservabilityadminTelemetryRuleForOrganizationBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationBehavior.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationBehavior.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationBehavior.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const keep = ObservabilityadminTelemetryRuleForOrganizationBehavior._(
    TfArgLiteral('KEEP'),
  );
  static const drop = ObservabilityadminTelemetryRuleForOrganizationBehavior._(
    TfArgLiteral('DROP'),
  );

  static const List<ObservabilityadminTelemetryRuleForOrganizationBehavior>
  values = [keep, drop];
}

/// `requirement` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleForOrganizationRequirement._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationRequirement.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationRequirement.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationRequirement.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const meetsAll =
      ObservabilityadminTelemetryRuleForOrganizationRequirement._(
        TfArgLiteral('MEETS_ALL'),
      );
  static const meetsAny =
      ObservabilityadminTelemetryRuleForOrganizationRequirement._(
        TfArgLiteral('MEETS_ANY'),
      );

  static const List<ObservabilityadminTelemetryRuleForOrganizationRequirement>
  values = [meetsAll, meetsAny];
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

  final ObservabilityadminTelemetryRuleForOrganizationAction action;

  Map<String, Object?> encode() => {'action': action.toTfJson()};
}

/// `action` — derived from the provider schema description.
extension type const ObservabilityadminTelemetryRuleForOrganizationAction._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminTelemetryRuleForOrganizationAction.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminTelemetryRuleForOrganizationAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ObservabilityadminTelemetryRuleForOrganizationAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow = ObservabilityadminTelemetryRuleForOrganizationAction._(
    TfArgLiteral('ALLOW'),
  );
  static const block = ObservabilityadminTelemetryRuleForOrganizationAction._(
    TfArgLiteral('BLOCK'),
  );
  static const count = ObservabilityadminTelemetryRuleForOrganizationAction._(
    TfArgLiteral('COUNT'),
  );
  static const captcha = ObservabilityadminTelemetryRuleForOrganizationAction._(
    TfArgLiteral('CAPTCHA'),
  );
  static const challenge =
      ObservabilityadminTelemetryRuleForOrganizationAction._(
        TfArgLiteral('CHALLENGE'),
      );
  static const excludedAsCount =
      ObservabilityadminTelemetryRuleForOrganizationAction._(
        TfArgLiteral('EXCLUDED_AS_COUNT'),
      );

  static const List<ObservabilityadminTelemetryRuleForOrganizationAction>
  values = [allow, block, count, captcha, challenge, excludedAsCount];
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

  AwsObservabilityadminTelemetryRuleForOrganization(
    super.localName, {
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
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
