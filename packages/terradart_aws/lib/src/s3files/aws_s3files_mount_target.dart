// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_s3files_mount_target`.
const Set<String> _awsS3filesMountTargetSensitive = <String>{};

/// S3files Mount Target Ip Address enum for `ip_address_type`.
extension type const S3filesMountTargetIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  S3filesMountTargetIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  S3filesMountTargetIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const S3filesMountTargetIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4Only = S3filesMountTargetIpAddressType._(
    TfArgLiteral('IPV4_ONLY'),
  );
  static const ipv6Only = S3filesMountTargetIpAddressType._(
    TfArgLiteral('IPV6_ONLY'),
  );
  static const dualStack = S3filesMountTargetIpAddressType._(
    TfArgLiteral('DUAL_STACK'),
  );

  static const List<S3filesMountTargetIpAddressType> values = [
    ipv4Only,
    ipv6Only,
    dualStack,
  ];
}

/// Factory wrapper for `aws_s3files_mount_target`.
final class AwsS3filesMountTarget extends Resource {
  static const String tfType = 'aws_s3files_mount_target';

  AwsS3filesMountTarget(
    super.localName, {
    required TfArg<String> fileSystemId,
    S3filesMountTargetIpAddressType? ipAddressType,
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

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `ipv4_address` attribute.
  TfRef<String> get ipv4Address =>
      TfRef.attribute<String>(this, 'ipv4_address');

  /// Reference to `ipv6_address` attribute.
  TfRef<String> get ipv6Address =>
      TfRef.attribute<String>(this, 'ipv6_address');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
