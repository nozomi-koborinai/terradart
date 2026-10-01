// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_load_balancer_listener_policy`.
const Set<String> _awsLoadBalancerListenerPolicySensitive = <String>{};

/// Factory wrapper for `aws_load_balancer_listener_policy`.
final class AwsLoadBalancerListenerPolicy extends Resource {
  static const String tfType = 'aws_load_balancer_listener_policy';

  AwsLoadBalancerListenerPolicy(
    super.localName, {
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
           'policy_names': ?policyNames,
           'region': ?region,
           'triggers': ?triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLoadBalancerListenerPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLoadBalancerListenerPolicy>`.
  RefTo<AwsLoadBalancerListenerPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `load_balancer_name` attribute.
  TfRef<String> get loadBalancerName =>
      TfRef.attribute<String>(this, 'load_balancer_name');

  /// Reference to `load_balancer_port` attribute.
  TfRef<num> get loadBalancerPort =>
      TfRef.attribute<num>(this, 'load_balancer_port');

  /// Reference to `policy_names` attribute.
  TfRef<List<String>> get policyNames =>
      TfRef.attribute<List<String>>(this, 'policy_names');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');
}
