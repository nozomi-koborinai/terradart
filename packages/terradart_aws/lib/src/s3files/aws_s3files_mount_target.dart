// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_s3files_mount_target`.
const Set<String> _awsS3filesMountTargetSensitive = <String>{};

/// S3files Mount Target Ip Address enum for `ip_address_type`.
enum S3filesMountTargetIpAddressType implements TerraformEnum {
  ipv4Only('IPV4_ONLY'),
  ipv6Only('IPV6_ONLY'),
  dualStack('DUAL_STACK');

  const S3filesMountTargetIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3files_mount_target`.
final class AwsS3filesMountTarget extends Resource {
  static const String tfType = 'aws_s3files_mount_target';

  AwsS3filesMountTarget({
    required super.localName,
    required TfArg<String> fileSystemId,
    TfArg<S3filesMountTargetIpAddressType>? ipAddressType,
    TfArg<String>? ipv4Address,
    TfArg<String>? ipv6Address,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    required RefTo<AwsSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           'ip_address_type': ?ipAddressType,
           'ipv4_address': ?ipv4Address,
           'ipv6_address': ?ipv6Address,
           'region': ?region,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3filesMountTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3filesMountTarget>`.
  RefTo<AwsS3filesMountTarget> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
