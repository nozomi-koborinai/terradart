// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_target`.
const Set<String> _awsEc2TrafficMirrorTargetSensitive = <String>{};

/// Factory wrapper for `aws_ec2_traffic_mirror_target`.
final class AwsEc2TrafficMirrorTarget extends Resource {
  static const String tfType = 'aws_ec2_traffic_mirror_target';

  AwsEc2TrafficMirrorTarget({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? gatewayLoadBalancerEndpointId,
    TfArg<String>? networkInterfaceId,
    TfArg<String>? networkLoadBalancerArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (gatewayLoadBalancerEndpointId != null)
             'gateway_load_balancer_endpoint_id': gatewayLoadBalancerEndpointId,
           if (networkInterfaceId != null)
             'network_interface_id': networkInterfaceId,
           if (networkLoadBalancerArn != null)
             'network_load_balancer_arn': networkLoadBalancerArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TrafficMirrorTargetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
