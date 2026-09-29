// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_target`.
const Set<String> _awsEc2TrafficMirrorTargetSensitive = <String>{};

/// Exactly one of `gateway_load_balancer_endpoint_id`, `network_interface_id`, `network_load_balancer_arn` on `aws_ec2_traffic_mirror_target`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gatewayLoadBalancerEndpointId(...)`.
sealed class Ec2TrafficMirrorTargetTarget {
  const Ec2TrafficMirrorTargetTarget();

  /// Sets `gateway_load_balancer_endpoint_id`.
  const factory Ec2TrafficMirrorTargetTarget.gatewayLoadBalancerEndpointId(
    TfArg<String> gatewayLoadBalancerEndpointId,
  ) = Ec2TrafficMirrorTargetTargetGatewayLoadBalancerEndpointId;

  /// Sets `network_interface_id`.
  const factory Ec2TrafficMirrorTargetTarget.networkInterfaceId(
    TfArg<String> networkInterfaceId,
  ) = Ec2TrafficMirrorTargetTargetNetworkInterfaceId;

  /// Sets `network_load_balancer_arn`.
  const factory Ec2TrafficMirrorTargetTarget.networkLoadBalancerArn(
    TfArg<String> networkLoadBalancerArn,
  ) = Ec2TrafficMirrorTargetTargetNetworkLoadBalancerArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Ec2TrafficMirrorTargetTarget.gatewayLoadBalancerEndpointId] choice: sets `gateway_load_balancer_endpoint_id`.
final class Ec2TrafficMirrorTargetTargetGatewayLoadBalancerEndpointId
    extends Ec2TrafficMirrorTargetTarget {
  const Ec2TrafficMirrorTargetTargetGatewayLoadBalancerEndpointId(
    this.gatewayLoadBalancerEndpointId,
  );

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

/// The [Ec2TrafficMirrorTargetTarget.networkInterfaceId] choice: sets `network_interface_id`.
final class Ec2TrafficMirrorTargetTargetNetworkInterfaceId
    extends Ec2TrafficMirrorTargetTarget {
  const Ec2TrafficMirrorTargetTargetNetworkInterfaceId(this.networkInterfaceId);

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

/// The [Ec2TrafficMirrorTargetTarget.networkLoadBalancerArn] choice: sets `network_load_balancer_arn`.
final class Ec2TrafficMirrorTargetTargetNetworkLoadBalancerArn
    extends Ec2TrafficMirrorTargetTarget {
  const Ec2TrafficMirrorTargetTargetNetworkLoadBalancerArn(
    this.networkLoadBalancerArn,
  );

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
    required Ec2TrafficMirrorTargetTarget target,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           ...target.argMap,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TrafficMirrorTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TrafficMirrorTarget>`.
  RefTo<AwsEc2TrafficMirrorTarget> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
