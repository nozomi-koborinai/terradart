// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_traffic_policy_instance`.
const Set<String> _awsRoute53TrafficPolicyInstanceSensitive = <String>{};

/// Factory wrapper for `aws_route53_traffic_policy_instance`.
final class AwsRoute53TrafficPolicyInstance extends Resource {
  static const String tfType = 'aws_route53_traffic_policy_instance';

  AwsRoute53TrafficPolicyInstance({
    required super.localName,
    required TfArg<String> hostedZoneId,
    required TfArg<String> name,
    required TfArg<String> trafficPolicyId,
    required TfArg<num> trafficPolicyVersion,
    required TfArg<num> ttl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hosted_zone_id': hostedZoneId,
           'name': name,
           'traffic_policy_id': trafficPolicyId,
           'traffic_policy_version': trafficPolicyVersion,
           'ttl': ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53TrafficPolicyInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
