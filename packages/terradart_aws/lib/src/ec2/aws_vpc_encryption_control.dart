// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_encryption_control`.
const Set<String> _awsVpcEncryptionControlSensitive = <String>{};

/// Vpc Encryption Control enum for `mode`.
enum VpcEncryptionControlMode implements TerraformEnum {
  monitor('monitor'),
  enforce('enforce');

  const VpcEncryptionControlMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_vpc_encryption_control`.
final class AwsVpcEncryptionControl extends Resource {
  static const String tfType = 'aws_vpc_encryption_control';

  AwsVpcEncryptionControl({
    required super.localName,
    TfArg<String>? egressOnlyInternetGatewayExclusion,
    TfArg<String>? elasticFileSystemExclusion,
    TfArg<String>? internetGatewayExclusion,
    TfArg<String>? lambdaExclusion,
    required TfArg<VpcEncryptionControlMode> mode,
    TfArg<String>? natGatewayExclusion,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? virtualPrivateGatewayExclusion,
    required RefTo<AwsVpc> vpcId,
    TfArg<String>? vpcLatticeExclusion,
    TfArg<String>? vpcPeeringExclusion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'egress_only_internet_gateway_exclusion':
               ?egressOnlyInternetGatewayExclusion,
           'elastic_file_system_exclusion': ?elasticFileSystemExclusion,
           'internet_gateway_exclusion': ?internetGatewayExclusion,
           'lambda_exclusion': ?lambdaExclusion,
           'mode': mode,
           'nat_gateway_exclusion': ?natGatewayExclusion,
           'region': ?region,
           'tags': ?tags,
           'virtual_private_gateway_exclusion': ?virtualPrivateGatewayExclusion,
           'vpc_id': vpcId.encodeAs('id'),
           'vpc_lattice_exclusion': ?vpcLatticeExclusion,
           'vpc_peering_exclusion': ?vpcPeeringExclusion,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEncryptionControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEncryptionControl>`.
  RefTo<AwsVpcEncryptionControl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_exclusions` attribute.
  TfRef<Map<String, Object?>> get resourceExclusions =>
      TfRef.attribute<Map<String, Object?>>(this, 'resource_exclusions');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
