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

  /// Reference to `instance_port` attribute.
  TfRef<num> get instancePortRef => TfRef.attribute<num>(this, 'instance_port');

  /// Reference to `load_balancer_name` attribute.
  TfRef<String> get loadBalancerNameRef =>
      TfRef.attribute<String>(this, 'load_balancer_name');

  /// Reference to `policy_names` attribute.
  TfRef<List<String>> get policyNamesRef =>
      TfRef.attribute<List<String>>(this, 'policy_names');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
