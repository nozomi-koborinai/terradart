// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_load_balancer_backend_server_policy`.
const Set<String> _awsLoadBalancerBackendServerPolicySensitive = <String>{};

/// Factory wrapper for `aws_load_balancer_backend_server_policy`.
final class AwsLoadBalancerBackendServerPolicy extends Resource {
  static const String tfType = 'aws_load_balancer_backend_server_policy';

  AwsLoadBalancerBackendServerPolicy({
    required super.localName,
    required TfArg<num> instancePort,
    required TfArg<String> loadBalancerName,
    TfArg<List<String>>? policyNames,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_port': instancePort,
           'load_balancer_name': loadBalancerName,
           'policy_names': ?policyNames,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLoadBalancerBackendServerPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLoadBalancerBackendServerPolicy>`.
  RefTo<AwsLoadBalancerBackendServerPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
