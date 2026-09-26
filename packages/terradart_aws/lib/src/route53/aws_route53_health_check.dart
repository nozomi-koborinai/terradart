// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_health_check`.
const Set<String> _awsRoute53HealthCheckSensitive = <String>{};

/// Factory wrapper for `aws_route53_health_check`.
final class AwsRoute53HealthCheck extends Resource {
  static const String tfType = 'aws_route53_health_check';

  AwsRoute53HealthCheck({
    required super.localName,
    TfArg<num>? childHealthThreshold,
    TfArg<List<String>>? childHealthchecks,
    TfArg<String>? cloudwatchAlarmName,
    TfArg<String>? cloudwatchAlarmRegion,
    TfArg<bool>? disabled,
    TfArg<bool>? enableSni,
    TfArg<num>? failureThreshold,
    TfArg<String>? fqdn,
    TfArg<String>? insufficientDataHealthStatus,
    TfArg<bool>? invertHealthcheck,
    TfArg<String>? ipAddress,
    TfArg<bool>? measureLatency,
    TfArg<num>? port,
    TfArg<String>? referenceName,
    TfArg<List<String>>? regions,
    TfArg<num>? requestInterval,
    TfArg<String>? resourcePath,
    TfArg<String>? routingControlArn,
    TfArg<String>? searchString,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? triggers,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (childHealthThreshold != null)
             'child_health_threshold': childHealthThreshold,
           if (childHealthchecks != null)
             'child_healthchecks': childHealthchecks,
           if (cloudwatchAlarmName != null)
             'cloudwatch_alarm_name': cloudwatchAlarmName,
           if (cloudwatchAlarmRegion != null)
             'cloudwatch_alarm_region': cloudwatchAlarmRegion,
           if (disabled != null) 'disabled': disabled,
           if (enableSni != null) 'enable_sni': enableSni,
           if (failureThreshold != null) 'failure_threshold': failureThreshold,
           if (fqdn != null) 'fqdn': fqdn,
           if (insufficientDataHealthStatus != null)
             'insufficient_data_health_status': insufficientDataHealthStatus,
           if (invertHealthcheck != null)
             'invert_healthcheck': invertHealthcheck,
           if (ipAddress != null) 'ip_address': ipAddress,
           if (measureLatency != null) 'measure_latency': measureLatency,
           if (port != null) 'port': port,
           if (referenceName != null) 'reference_name': referenceName,
           if (regions != null) 'regions': regions,
           if (requestInterval != null) 'request_interval': requestInterval,
           if (resourcePath != null) 'resource_path': resourcePath,
           if (routingControlArn != null)
             'routing_control_arn': routingControlArn,
           if (searchString != null) 'search_string': searchString,
           if (tags != null) 'tags': tags,
           if (triggers != null) 'triggers': triggers,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53HealthCheckSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
