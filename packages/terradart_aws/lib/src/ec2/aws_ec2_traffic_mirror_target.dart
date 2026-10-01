// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_target`.
const Set<String> _awsEc2TrafficMirrorTargetSensitive = <String>{};

/// Exactly one of `gateway_load_balancer_endpoint_id`, `network_interface_id`, `network_load_balancer_arn` on `aws_ec2_traffic_mirror_target`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gatewayLoadBalancerEndpointId(...)`.
sealed class Ec2TrafficMirrorTargetDestination {
  const Ec2TrafficMirrorTargetDestination();

  /// Sets `gateway_load_balancer_endpoint_id`.
  const factory Ec2TrafficMirrorTargetDestination.gatewayLoadBalancerEndpointId(
    TfArg<String> gatewayLoadBalancerEndpointId,
  ) = Ec2TrafficMirrorTargetDestinationGatewayLoadBalancerEndpointId;

  /// Sets `network_interface_id`.
  const factory Ec2TrafficMirrorTargetDestination.networkInterfaceId(
    TfArg<String> networkInterfaceId,
  ) = Ec2TrafficMirrorTargetDestinationNetworkInterfaceId;

  /// Sets `network_load_balancer_arn`.
  const factory Ec2TrafficMirrorTargetDestination.networkLoadBalancerArn(
    TfArg<String> networkLoadBalancerArn,
  ) = Ec2TrafficMirrorTargetDestinationNetworkLoadBalancerArn;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Ec2TrafficMirrorTargetDestination.gatewayLoadBalancerEndpointId] choice: sets `gateway_load_balancer_endpoint_id`.
final class Ec2TrafficMirrorTargetDestinationGatewayLoadBalancerEndpointId
    extends Ec2TrafficMirrorTargetDestination {
  const Ec2TrafficMirrorTargetDestinationGatewayLoadBalancerEndpointId(
    this.gatewayLoadBalancerEndpointId,
  );

  final TfArg<String> gatewayLoadBalancerEndpointId;

  @internal
  @override
  String get blockKey => 'gateway_load_balancer_endpoint_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'gateway_load_balancer_endpoint_id': gatewayLoadBalancerEndpointId
        .toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gateway_load_balancer_endpoint_id': gatewayLoadBalancerEndpointId,
  };
}

/// The [Ec2TrafficMirrorTargetDestination.networkInterfaceId] choice: sets `network_interface_id`.
final class Ec2TrafficMirrorTargetDestinationNetworkInterfaceId
    extends Ec2TrafficMirrorTargetDestination {
  const Ec2TrafficMirrorTargetDestinationNetworkInterfaceId(
    this.networkInterfaceId,
  );

  final TfArg<String> networkInterfaceId;

  @internal
  @override
  String get blockKey => 'network_interface_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'network_interface_id': networkInterfaceId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'network_interface_id': networkInterfaceId,
  };
}

/// The [Ec2TrafficMirrorTargetDestination.networkLoadBalancerArn] choice: sets `network_load_balancer_arn`.
final class Ec2TrafficMirrorTargetDestinationNetworkLoadBalancerArn
    extends Ec2TrafficMirrorTargetDestination {
  const Ec2TrafficMirrorTargetDestinationNetworkLoadBalancerArn(
    this.networkLoadBalancerArn,
  );

  final TfArg<String> networkLoadBalancerArn;

  @internal
  @override
  String get blockKey => 'network_load_balancer_arn';

  @internal
  @override
  Map<String, Object?> encode() => {
    'network_load_balancer_arn': networkLoadBalancerArn.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'network_load_balancer_arn': networkLoadBalancerArn,
  };
}

/// Factory wrapper for `aws_ec2_traffic_mirror_target`.
final class AwsEc2TrafficMirrorTarget extends Resource {
  static const String tfType = 'aws_ec2_traffic_mirror_target';

  AwsEc2TrafficMirrorTarget(
    super.localName, {
    TfArg<String>? description,
    required Ec2TrafficMirrorTargetDestination destination,
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
           ...destination.argMap,
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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `gateway_load_balancer_endpoint_id` attribute.
  TfRef<String> get gatewayLoadBalancerEndpointId =>
      TfRef.attribute<String>(this, 'gateway_load_balancer_endpoint_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `network_load_balancer_arn` attribute.
  TfRef<String> get networkLoadBalancerArn =>
      TfRef.attribute<String>(this, 'network_load_balancer_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
