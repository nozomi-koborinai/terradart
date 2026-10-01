// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_s3outposts_endpoint`.
const Set<String> _awsS3outpostsEndpointSensitive = <String>{};

/// S3outposts Endpoint Access enum for `access_type`.
enum S3outpostsEndpointAccessType implements TerraformEnum {
  private('Private'),
  customerownedip('CustomerOwnedIp');

  const S3outpostsEndpointAccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3outposts_endpoint`.
final class AwsS3outpostsEndpoint extends Resource {
  static const String tfType = 'aws_s3outposts_endpoint';

  AwsS3outpostsEndpoint({
    required super.localName,
    TfArg<S3outpostsEndpointAccessType>? accessType,
    TfArg<String>? customerOwnedIpv4Pool,
    required TfArg<String> outpostId,
    TfArg<String>? region,
    required RefTo<AwsSecurityGroup> securityGroupId,
    required RefTo<AwsSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_type': ?accessType,
           'customer_owned_ipv4_pool': ?customerOwnedIpv4Pool,
           'outpost_id': outpostId,
           'region': ?region,
           'security_group_id': securityGroupId.encodeAs('id'),
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3outpostsEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3outpostsEndpoint>`.
  RefTo<AwsS3outpostsEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `network_interfaces` attribute.
  TfRef<List<Map<String, Object?>>> get networkInterfaces =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_interfaces');

  /// Reference to `access_type` attribute.
  TfRef<String> get accessType => TfRef.attribute<String>(this, 'access_type');

  /// Reference to `customer_owned_ipv4_pool` attribute.
  TfRef<String> get customerOwnedIpv4Pool =>
      TfRef.attribute<String>(this, 'customer_owned_ipv4_pool');

  /// Reference to `outpost_id` attribute.
  TfRef<String> get outpostId => TfRef.attribute<String>(this, 'outpost_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
