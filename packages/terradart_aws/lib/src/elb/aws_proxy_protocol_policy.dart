// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_proxy_protocol_policy`.
const Set<String> _awsProxyProtocolPolicySensitive = <String>{};

/// Factory wrapper for `aws_proxy_protocol_policy`.
final class AwsProxyProtocolPolicy extends Resource {
  static const String tfType = 'aws_proxy_protocol_policy';

  AwsProxyProtocolPolicy({
    required super.localName,
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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsProxyProtocolPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
