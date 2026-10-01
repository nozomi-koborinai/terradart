// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_lambdacore_network_connector`.
const Set<String> _awsLambdacoreNetworkConnectorSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_lambdacore_network_connector` (derived from provider schema).
@immutable
final class LambdacoreNetworkConnectorConfiguration {
  const LambdacoreNetworkConnectorConfiguration({this.vpcEgressConfiguration});

  final List<LambdacoreNetworkConnectorVpcEgressConfiguration>?
  vpcEgressConfiguration;

  Map<String, Object?> encode() => {
    if (vpcEgressConfiguration != null)
      'vpc_egress_configuration': [
        for (final e in vpcEgressConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.vpc_egress_configuration` block of
/// `aws_lambdacore_network_connector` (derived from provider schema).
@immutable
final class LambdacoreNetworkConnectorVpcEgressConfiguration {
  const LambdacoreNetworkConnectorVpcEgressConfiguration({
    required this.associatedComputeResourceTypes,
    this.networkProtocol,
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final List<TfArg<LambdacoreNetworkConnectorAssociatedComputeResourceTypes>>
  associatedComputeResourceTypes;

  final TfArg<LambdacoreNetworkConnectorNetworkProtocol>? networkProtocol;

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'associated_compute_resource_types': [
      for (final e in associatedComputeResourceTypes) e.toTfJson(),
    ],
    'network_protocol': ?networkProtocol?.toTfJson(),
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// `associated_compute_resource_types` — derived from the provider schema description.
enum LambdacoreNetworkConnectorAssociatedComputeResourceTypes
    implements TerraformEnum {
  microvm('MicroVm');

  const LambdacoreNetworkConnectorAssociatedComputeResourceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `network_protocol` — derived from the provider schema description.
enum LambdacoreNetworkConnectorNetworkProtocol implements TerraformEnum {
  ipv4('IPv4'),
  dualstack('DualStack');

  const LambdacoreNetworkConnectorNetworkProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lambdacore_network_connector`.
final class AwsLambdacoreNetworkConnector extends Resource {
  static const String tfType = 'aws_lambdacore_network_connector';

  AwsLambdacoreNetworkConnector(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> operatorRole,
    TfArg<String>? region,
    List<LambdacoreNetworkConnectorConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'operator_role': operatorRole,
           'region': ?region,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdacoreNetworkConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdacoreNetworkConnector>`.
  RefTo<AwsLambdacoreNetworkConnector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `operator_role` attribute.
  TfRef<String> get operatorRole =>
      TfRef.attribute<String>(this, 'operator_role');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
