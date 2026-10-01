// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_health_check`.
const Set<String> _awsRoute53HealthCheckSensitive = <String>{};

/// Route53 Health Check Cloudwatch Alarm enum for `cloudwatch_alarm_region`.
extension type const Route53HealthCheckCloudwatchAlarmRegion._(TfArg<String> _)
    implements TfArg<String> {
  Route53HealthCheckCloudwatchAlarmRegion.variable(String name)
    : this._(TfArg.variable(name));
  Route53HealthCheckCloudwatchAlarmRegion.expression(String template)
    : this._(TfArg.expression(template));
  const Route53HealthCheckCloudwatchAlarmRegion.arg(TfArg<String> arg)
    : this._(arg);

  static const usEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-east-1'),
  );
  static const usEast2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-east-2'),
  );
  static const usWest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-west-1'),
  );
  static const usWest2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-west-2'),
  );
  static const caCentral1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ca-central-1'),
  );
  static const euCentral1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-central-1'),
  );
  static const euCentral2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-central-2'),
  );
  static const euWest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-west-1'),
  );
  static const euWest2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-west-2'),
  );
  static const euWest3 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-west-3'),
  );
  static const apEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-east-1'),
  );
  static const meSouth1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('me-south-1'),
  );
  static const meCentral1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('me-central-1'),
  );
  static const apSouth1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-south-1'),
  );
  static const apSouth2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-south-2'),
  );
  static const apSoutheast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-southeast-1'),
  );
  static const apSoutheast2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-southeast-2'),
  );
  static const apSoutheast3 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-southeast-3'),
  );
  static const apNortheast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-northeast-1'),
  );
  static const apNortheast2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-northeast-2'),
  );
  static const apNortheast3 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-northeast-3'),
  );
  static const euNorth1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-north-1'),
  );
  static const saEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('sa-east-1'),
  );
  static const cnNorthwest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('cn-northwest-1'),
  );
  static const cnNorth1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('cn-north-1'),
  );
  static const afSouth1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('af-south-1'),
  );
  static const euSouth1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-south-1'),
  );
  static const euSouth2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-south-2'),
  );
  static const usGovWest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-gov-west-1'),
  );
  static const usGovEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-gov-east-1'),
  );
  static const usIsoEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-iso-east-1'),
  );
  static const usIsoWest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-iso-west-1'),
  );
  static const usIsobEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-isob-east-1'),
  );
  static const apSoutheast4 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-southeast-4'),
  );
  static const ilCentral1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('il-central-1'),
  );
  static const caWest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ca-west-1'),
  );
  static const apSoutheast5 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-southeast-5'),
  );
  static const mxCentral1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('mx-central-1'),
  );
  static const usIsofSouth1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-isof-south-1'),
  );
  static const usIsofEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-isof-east-1'),
  );
  static const apSoutheast7 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-southeast-7'),
  );
  static const apEast2 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-east-2'),
  );
  static const euIsoeWest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eu-isoe-west-1'),
  );
  static const apSoutheast6 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('ap-southeast-6'),
  );
  static const usIsobWest1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('us-isob-west-1'),
  );
  static const euscDeEast1 = Route53HealthCheckCloudwatchAlarmRegion._(
    TfArgLiteral('eusc-de-east-1'),
  );

  static const List<Route53HealthCheckCloudwatchAlarmRegion> values = [
    usEast1,
    usEast2,
    usWest1,
    usWest2,
    caCentral1,
    euCentral1,
    euCentral2,
    euWest1,
    euWest2,
    euWest3,
    apEast1,
    meSouth1,
    meCentral1,
    apSouth1,
    apSouth2,
    apSoutheast1,
    apSoutheast2,
    apSoutheast3,
    apNortheast1,
    apNortheast2,
    apNortheast3,
    euNorth1,
    saEast1,
    cnNorthwest1,
    cnNorth1,
    afSouth1,
    euSouth1,
    euSouth2,
    usGovWest1,
    usGovEast1,
    usIsoEast1,
    usIsoWest1,
    usIsobEast1,
    apSoutheast4,
    ilCentral1,
    caWest1,
    apSoutheast5,
    mxCentral1,
    usIsofSouth1,
    usIsofEast1,
    apSoutheast7,
    apEast2,
    euIsoeWest1,
    apSoutheast6,
    usIsobWest1,
    euscDeEast1,
  ];
}

/// Route53 Health Check Insufficient Data Health enum for `insufficient_data_health_status`.
extension type const Route53HealthCheckInsufficientDataHealthStatus._(
  TfArg<String> _
) implements TfArg<String> {
  Route53HealthCheckInsufficientDataHealthStatus.variable(String name)
    : this._(TfArg.variable(name));
  Route53HealthCheckInsufficientDataHealthStatus.expression(String template)
    : this._(TfArg.expression(template));
  const Route53HealthCheckInsufficientDataHealthStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const healthy = Route53HealthCheckInsufficientDataHealthStatus._(
    TfArgLiteral('Healthy'),
  );
  static const unhealthy = Route53HealthCheckInsufficientDataHealthStatus._(
    TfArgLiteral('Unhealthy'),
  );
  static const lastknownstatus =
      Route53HealthCheckInsufficientDataHealthStatus._(
        TfArgLiteral('LastKnownStatus'),
      );

  static const List<Route53HealthCheckInsufficientDataHealthStatus> values = [
    healthy,
    unhealthy,
    lastknownstatus,
  ];
}

/// Route53 Health Check enum for `regions`.
extension type const Route53HealthCheckRegions._(TfArg<String> _)
    implements TfArg<String> {
  Route53HealthCheckRegions.variable(String name)
    : this._(TfArg.variable(name));
  Route53HealthCheckRegions.expression(String template)
    : this._(TfArg.expression(template));
  const Route53HealthCheckRegions.arg(TfArg<String> arg) : this._(arg);

  static const usEast1 = Route53HealthCheckRegions._(TfArgLiteral('us-east-1'));
  static const usWest1 = Route53HealthCheckRegions._(TfArgLiteral('us-west-1'));
  static const usWest2 = Route53HealthCheckRegions._(TfArgLiteral('us-west-2'));
  static const euWest1 = Route53HealthCheckRegions._(TfArgLiteral('eu-west-1'));
  static const apSoutheast1 = Route53HealthCheckRegions._(
    TfArgLiteral('ap-southeast-1'),
  );
  static const apSoutheast2 = Route53HealthCheckRegions._(
    TfArgLiteral('ap-southeast-2'),
  );
  static const apNortheast1 = Route53HealthCheckRegions._(
    TfArgLiteral('ap-northeast-1'),
  );
  static const saEast1 = Route53HealthCheckRegions._(TfArgLiteral('sa-east-1'));

  static const List<Route53HealthCheckRegions> values = [
    usEast1,
    usWest1,
    usWest2,
    euWest1,
    apSoutheast1,
    apSoutheast2,
    apNortheast1,
    saEast1,
  ];
}

/// Route53 Health Check enum for `type`.
extension type const Route53HealthCheckType._(TfArg<String> _)
    implements TfArg<String> {
  Route53HealthCheckType.variable(String name) : this._(TfArg.variable(name));
  Route53HealthCheckType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53HealthCheckType.arg(TfArg<String> arg) : this._(arg);

  static const http = Route53HealthCheckType._(TfArgLiteral('HTTP'));
  static const https = Route53HealthCheckType._(TfArgLiteral('HTTPS'));
  static const httpStrMatch = Route53HealthCheckType._(
    TfArgLiteral('HTTP_STR_MATCH'),
  );
  static const httpsStrMatch = Route53HealthCheckType._(
    TfArgLiteral('HTTPS_STR_MATCH'),
  );
  static const tcp = Route53HealthCheckType._(TfArgLiteral('TCP'));
  static const calculated = Route53HealthCheckType._(
    TfArgLiteral('CALCULATED'),
  );
  static const cloudwatchMetric = Route53HealthCheckType._(
    TfArgLiteral('CLOUDWATCH_METRIC'),
  );
  static const recoveryControl = Route53HealthCheckType._(
    TfArgLiteral('RECOVERY_CONTROL'),
  );

  static const List<Route53HealthCheckType> values = [
    http,
    https,
    httpStrMatch,
    httpsStrMatch,
    tcp,
    calculated,
    cloudwatchMetric,
    recoveryControl,
  ];
}

/// Factory wrapper for `aws_route53_health_check`.
final class AwsRoute53HealthCheck extends Resource {
  static const String tfType = 'aws_route53_health_check';

  AwsRoute53HealthCheck(
    super.localName, {
    TfArg<num>? childHealthThreshold,
    TfArg<List<String>>? childHealthchecks,
    TfArg<String>? cloudwatchAlarmName,
    Route53HealthCheckCloudwatchAlarmRegion? cloudwatchAlarmRegion,
    TfArg<bool>? disabled,
    TfArg<bool>? enableSni,
    TfArg<num>? failureThreshold,
    TfArg<String>? fqdn,
    Route53HealthCheckInsufficientDataHealthStatus?
    insufficientDataHealthStatus,
    TfArg<bool>? invertHealthcheck,
    TfArg<String>? ipAddress,
    TfArg<bool>? measureLatency,
    TfArg<num>? port,
    TfArg<String>? referenceName,
    List<Route53HealthCheckRegions>? regions,
    TfArg<num>? requestInterval,
    TfArg<String>? resourcePath,
    TfArg<String>? routingControlArn,
    TfArg<String>? searchString,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? triggers,
    required Route53HealthCheckType type,
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

  /// Reference to `child_health_threshold` attribute.
  TfRef<num> get childHealthThreshold =>
      TfRef.attribute<num>(this, 'child_health_threshold');

  /// Reference to `child_healthchecks` attribute.
  TfRef<List<String>> get childHealthchecks =>
      TfRef.attribute<List<String>>(this, 'child_healthchecks');

  /// Reference to `cloudwatch_alarm_name` attribute.
  TfRef<String> get cloudwatchAlarmName =>
      TfRef.attribute<String>(this, 'cloudwatch_alarm_name');

  /// Reference to `cloudwatch_alarm_region` attribute.
  TfRef<String> get cloudwatchAlarmRegion =>
      TfRef.attribute<String>(this, 'cloudwatch_alarm_region');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `enable_sni` attribute.
  TfRef<bool> get enableSni => TfRef.attribute<bool>(this, 'enable_sni');

  /// Reference to `failure_threshold` attribute.
  TfRef<num> get failureThreshold =>
      TfRef.attribute<num>(this, 'failure_threshold');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `insufficient_data_health_status` attribute.
  TfRef<String> get insufficientDataHealthStatus =>
      TfRef.attribute<String>(this, 'insufficient_data_health_status');

  /// Reference to `invert_healthcheck` attribute.
  TfRef<bool> get invertHealthcheck =>
      TfRef.attribute<bool>(this, 'invert_healthcheck');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `measure_latency` attribute.
  TfRef<bool> get measureLatency =>
      TfRef.attribute<bool>(this, 'measure_latency');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `reference_name` attribute.
  TfRef<String> get referenceName =>
      TfRef.attribute<String>(this, 'reference_name');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `request_interval` attribute.
  TfRef<num> get requestInterval =>
      TfRef.attribute<num>(this, 'request_interval');

  /// Reference to `resource_path` attribute.
  TfRef<String> get resourcePath =>
      TfRef.attribute<String>(this, 'resource_path');

  /// Reference to `routing_control_arn` attribute.
  TfRef<String> get routingControlArn =>
      TfRef.attribute<String>(this, 'routing_control_arn');

  /// Reference to `search_string` attribute.
  TfRef<String> get searchString =>
      TfRef.attribute<String>(this, 'search_string');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
