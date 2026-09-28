// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_target`.
const Set<String> _awsEc2TrafficMirrorTargetSensitive = <String>{};

/// Exactly one of `gateway_load_balancer_endpoint_id`, `network_interface_id`, `network_load_balancer_arn` on `aws_ec2_traffic_mirror_target`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn {
  const Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `gateway_load_balancer_endpoint_id` (one of the [Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn] choices).
final class Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOption
    extends
        Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn {
  const Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOption({
    required this.gatewayLoadBalancerEndpointId,
  });

  final TfArg<String> gatewayLoadBalancerEndpointId;

  @override
  String get blockKey => 'gateway_load_balancer_endpoint_id';

  @override
  Map<String, Object?> encode() => {
    'gateway_load_balancer_endpoint_id': gatewayLoadBalancerEndpointId
        .toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gateway_load_balancer_endpoint_id': gatewayLoadBalancerEndpointId,
  };
}

/// Sets `network_interface_id` (one of the [Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn] choices).
final class Ec2TrafficMirrorTargetNetworkInterfaceIdOption
    extends
        Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn {
  const Ec2TrafficMirrorTargetNetworkInterfaceIdOption({
    required this.networkInterfaceId,
  });

  final TfArg<String> networkInterfaceId;

  @override
  String get blockKey => 'network_interface_id';

  @override
  Map<String, Object?> encode() => {
    'network_interface_id': networkInterfaceId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'network_interface_id': networkInterfaceId,
  };
}

/// Sets `network_load_balancer_arn` (one of the [Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn] choices).
final class Ec2TrafficMirrorTargetNetworkLoadBalancerArnOption
    extends
        Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn {
  const Ec2TrafficMirrorTargetNetworkLoadBalancerArnOption({
    required this.networkLoadBalancerArn,
  });

  final TfArg<String> networkLoadBalancerArn;

  @override
  String get blockKey => 'network_load_balancer_arn';

  @override
  Map<String, Object?> encode() => {
    'network_load_balancer_arn': networkLoadBalancerArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'network_load_balancer_arn': networkLoadBalancerArn,
  };
}

/// Factory wrapper for `aws_ec2_traffic_mirror_target`.
final class AwsEc2TrafficMirrorTarget extends Resource {
  static const String tfType = 'aws_ec2_traffic_mirror_target';

  AwsEc2TrafficMirrorTarget({
    required super.localName,
    TfArg<String>? description,
    required Ec2TrafficMirrorTargetGatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn
    gatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn,
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
           ...gatewayLoadBalancerEndpointIdOrNetworkInterfaceIdOrNetworkLoadBalancerArn
               .argMap,
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
