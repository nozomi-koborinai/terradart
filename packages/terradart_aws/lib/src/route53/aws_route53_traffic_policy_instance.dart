// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_traffic_policy_instance`.
const Set<String> _awsRoute53TrafficPolicyInstanceSensitive = <String>{};

/// Factory wrapper for `aws_route53_traffic_policy_instance`.
final class AwsRoute53TrafficPolicyInstance extends Resource {
  static const String tfType = 'aws_route53_traffic_policy_instance';

  AwsRoute53TrafficPolicyInstance(
    super.localName, {
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53TrafficPolicyInstance>`.
  RefTo<AwsRoute53TrafficPolicyInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `traffic_policy_id` attribute.
  TfRef<String> get trafficPolicyId =>
      TfRef.attribute<String>(this, 'traffic_policy_id');

  /// Reference to `traffic_policy_version` attribute.
  TfRef<num> get trafficPolicyVersion =>
      TfRef.attribute<num>(this, 'traffic_policy_version');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');
}
