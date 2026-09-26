// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_load_balancer_listener_policy`.
const Set<String> _awsLoadBalancerListenerPolicySensitive = <String>{};

/// Factory wrapper for `aws_load_balancer_listener_policy`.
final class AwsLoadBalancerListenerPolicy extends Resource {
  static const String tfType = 'aws_load_balancer_listener_policy';

  AwsLoadBalancerListenerPolicy({
    required super.localName,
    required TfArg<String> loadBalancerName,
    required TfArg<num> loadBalancerPort,
    TfArg<List<String>>? policyNames,
    TfArg<String>? region,
    TfArg<Map<String, String>>? triggers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'load_balancer_name': loadBalancerName,
           'load_balancer_port': loadBalancerPort,
           if (policyNames != null) 'policy_names': policyNames,
           if (region != null) 'region': region,
           if (triggers != null) 'triggers': triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLoadBalancerListenerPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
