// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_proxy_protocol_policy`.
const Set<String> _awsProxyProtocolPolicySensitive = <String>{};

/// Factory wrapper for `aws_proxy_protocol_policy`.
final class AwsProxyProtocolPolicy extends Resource {
  static const String tfType = 'aws_proxy_protocol_policy';

  AwsProxyProtocolPolicy(
    super.localName, {
    required TfArg<List<String>> instancePorts,
    required TfArg<String> loadBalancer,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_ports': instancePorts,
           'load_balancer': loadBalancer,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsProxyProtocolPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsProxyProtocolPolicy>`.
  RefTo<AwsProxyProtocolPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_ports` attribute.
  TfRef<List<String>> get instancePorts =>
      TfRef.attribute<List<String>>(this, 'instance_ports');

  /// Reference to `load_balancer` attribute.
  TfRef<String> get loadBalancer =>
      TfRef.attribute<String>(this, 'load_balancer');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
