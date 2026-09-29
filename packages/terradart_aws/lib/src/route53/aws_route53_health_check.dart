// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_health_check`.
const Set<String> _awsRoute53HealthCheckSensitive = <String>{};

/// Route53 Health Check Cloudwatch Alarm enum for `cloudwatch_alarm_region`.
enum Route53HealthCheckCloudwatchAlarmRegion implements TerraformEnum {
  usEast1('us-east-1'),
  usEast2('us-east-2'),
  usWest1('us-west-1'),
  usWest2('us-west-2'),
  caCentral1('ca-central-1'),
  euCentral1('eu-central-1'),
  euCentral2('eu-central-2'),
  euWest1('eu-west-1'),
  euWest2('eu-west-2'),
  euWest3('eu-west-3'),
  apEast1('ap-east-1'),
  meSouth1('me-south-1'),
  meCentral1('me-central-1'),
  apSouth1('ap-south-1'),
  apSouth2('ap-south-2'),
  apSoutheast1('ap-southeast-1'),
  apSoutheast2('ap-southeast-2'),
  apSoutheast3('ap-southeast-3'),
  apNortheast1('ap-northeast-1'),
  apNortheast2('ap-northeast-2'),
  apNortheast3('ap-northeast-3'),
  euNorth1('eu-north-1'),
  saEast1('sa-east-1'),
  cnNorthwest1('cn-northwest-1'),
  cnNorth1('cn-north-1'),
  afSouth1('af-south-1'),
  euSouth1('eu-south-1'),
  euSouth2('eu-south-2'),
  usGovWest1('us-gov-west-1'),
  usGovEast1('us-gov-east-1'),
  usIsoEast1('us-iso-east-1'),
  usIsoWest1('us-iso-west-1'),
  usIsobEast1('us-isob-east-1'),
  apSoutheast4('ap-southeast-4'),
  ilCentral1('il-central-1'),
  caWest1('ca-west-1'),
  apSoutheast5('ap-southeast-5'),
  mxCentral1('mx-central-1'),
  usIsofSouth1('us-isof-south-1'),
  usIsofEast1('us-isof-east-1'),
  apSoutheast7('ap-southeast-7'),
  apEast2('ap-east-2'),
  euIsoeWest1('eu-isoe-west-1'),
  apSoutheast6('ap-southeast-6'),
  usIsobWest1('us-isob-west-1'),
  euscDeEast1('eusc-de-east-1');

  const Route53HealthCheckCloudwatchAlarmRegion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Health Check Insufficient Data Health enum for `insufficient_data_health_status`.
enum Route53HealthCheckInsufficientDataHealthStatus implements TerraformEnum {
  healthy('Healthy'),
  unhealthy('Unhealthy'),
  lastknownstatus('LastKnownStatus');

  const Route53HealthCheckInsufficientDataHealthStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Health Check enum for `regions`.
enum Route53HealthCheckRegions implements TerraformEnum {
  usEast1('us-east-1'),
  usWest1('us-west-1'),
  usWest2('us-west-2'),
  euWest1('eu-west-1'),
  apSoutheast1('ap-southeast-1'),
  apSoutheast2('ap-southeast-2'),
  apNortheast1('ap-northeast-1'),
  saEast1('sa-east-1');

  const Route53HealthCheckRegions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Route53 Health Check enum for `type`.
enum Route53HealthCheckType implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  httpStrMatch('HTTP_STR_MATCH'),
  httpsStrMatch('HTTPS_STR_MATCH'),
  tcp('TCP'),
  calculated('CALCULATED'),
  cloudwatchMetric('CLOUDWATCH_METRIC'),
  recoveryControl('RECOVERY_CONTROL');

  const Route53HealthCheckType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53_health_check`.
final class AwsRoute53HealthCheck extends Resource {
  static const String tfType = 'aws_route53_health_check';

  AwsRoute53HealthCheck({
    required super.localName,
    TfArg<num>? childHealthThreshold,
    TfArg<List<String>>? childHealthchecks,
    TfArg<String>? cloudwatchAlarmName,
    TfArg<Route53HealthCheckCloudwatchAlarmRegion>? cloudwatchAlarmRegion,
    TfArg<bool>? disabled,
    TfArg<bool>? enableSni,
    TfArg<num>? failureThreshold,
    TfArg<String>? fqdn,
    TfArg<Route53HealthCheckInsufficientDataHealthStatus>?
    insufficientDataHealthStatus,
    TfArg<bool>? invertHealthcheck,
    TfArg<String>? ipAddress,
    TfArg<bool>? measureLatency,
    TfArg<num>? port,
    TfArg<String>? referenceName,
    List<TfArg<Route53HealthCheckRegions>>? regions,
    TfArg<num>? requestInterval,
    TfArg<String>? resourcePath,
    TfArg<String>? routingControlArn,
    TfArg<String>? searchString,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? triggers,
    required TfArg<Route53HealthCheckType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'child_health_threshold': ?childHealthThreshold,
           'child_healthchecks': ?childHealthchecks,
           'cloudwatch_alarm_name': ?cloudwatchAlarmName,
           'cloudwatch_alarm_region': ?cloudwatchAlarmRegion,
           'disabled': ?disabled,
           'enable_sni': ?enableSni,
           'failure_threshold': ?failureThreshold,
           'fqdn': ?fqdn,
           'insufficient_data_health_status': ?insufficientDataHealthStatus,
           'invert_healthcheck': ?invertHealthcheck,
           'ip_address': ?ipAddress,
           'measure_latency': ?measureLatency,
           'port': ?port,
           'reference_name': ?referenceName,
           if (regions != null)
             'regions': TfArg.literal([for (final e in regions) e.toTfJson()]),
           'request_interval': ?requestInterval,
           'resource_path': ?resourcePath,
           'routing_control_arn': ?routingControlArn,
           'search_string': ?searchString,
           'tags': ?tags,
           'triggers': ?triggers,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53HealthCheckSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53HealthCheck>`.
  RefTo<AwsRoute53HealthCheck> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
