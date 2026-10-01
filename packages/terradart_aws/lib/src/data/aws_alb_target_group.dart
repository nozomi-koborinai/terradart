// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../elb/aws_alb_target_group.dart';

/// Sensitive field paths for `aws_alb_target_group`.
const Set<String> _awsAlbTargetGroupSensitive = <String>{};

/// Factory wrapper for `aws_alb_target_group`.
final class DataAwsAlbTargetGroup extends Data {
  static const String tfType = 'aws_alb_target_group';

  DataAwsAlbTargetGroup(
    super.localName, {
    TfArg<String>? arn,
    TfArg<String>? loadBalancingAnomalyMitigation,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': ?arn,
           'load_balancing_anomaly_mitigation': ?loadBalancingAnomalyMitigation,
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAlbTargetGroupSensitive;

  /// A reference to the `aws_alb_target_group` this data source reads, for
  /// arguments typed `RefTo<AwsAlbTargetGroup>`.
  RefTo<AwsAlbTargetGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn_suffix` attribute.
  TfRef<String> get arnSuffix => TfRef.attribute<String>(this, 'arn_suffix');

  /// Reference to `connection_termination` attribute.
  TfRef<bool> get connectionTermination =>
      TfRef.attribute<bool>(this, 'connection_termination');

  /// Reference to `deregistration_delay` attribute.
  TfRef<String> get deregistrationDelay =>
      TfRef.attribute<String>(this, 'deregistration_delay');

  /// Reference to `health_check` attribute.
  TfRef<List<Map<String, Object?>>> get healthCheck =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_check');

  /// Reference to `lambda_multi_value_headers_enabled` attribute.
  TfRef<bool> get lambdaMultiValueHeadersEnabled =>
      TfRef.attribute<bool>(this, 'lambda_multi_value_headers_enabled');

  /// Reference to `load_balancer_arns` attribute.
  TfRef<List<String>> get loadBalancerArns =>
      TfRef.attribute<List<String>>(this, 'load_balancer_arns');

  /// Reference to `load_balancing_algorithm_type` attribute.
  TfRef<String> get loadBalancingAlgorithmType =>
      TfRef.attribute<String>(this, 'load_balancing_algorithm_type');

  /// Reference to `load_balancing_cross_zone_enabled` attribute.
  TfRef<String> get loadBalancingCrossZoneEnabled =>
      TfRef.attribute<String>(this, 'load_balancing_cross_zone_enabled');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preserve_client_ip` attribute.
  TfRef<String> get preserveClientIp =>
      TfRef.attribute<String>(this, 'preserve_client_ip');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `protocol_version` attribute.
  TfRef<String> get protocolVersion =>
      TfRef.attribute<String>(this, 'protocol_version');

  /// Reference to `proxy_protocol_v2` attribute.
  TfRef<bool> get proxyProtocolV2 =>
      TfRef.attribute<bool>(this, 'proxy_protocol_v2');

  /// Reference to `slow_start` attribute.
  TfRef<num> get slowStart => TfRef.attribute<num>(this, 'slow_start');

  /// Reference to `stickiness` attribute.
  TfRef<List<Map<String, Object?>>> get stickiness =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stickiness');

  /// Reference to `target_control_port` attribute.
  TfRef<num> get targetControlPort =>
      TfRef.attribute<num>(this, 'target_control_port');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `load_balancing_anomaly_mitigation` attribute.
  TfRef<String> get loadBalancingAnomalyMitigation =>
      TfRef.attribute<String>(this, 'load_balancing_anomaly_mitigation');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
