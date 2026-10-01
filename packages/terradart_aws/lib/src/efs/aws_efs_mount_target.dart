// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_efs_mount_target`.
const Set<String> _awsEfsMountTargetSensitive = <String>{};

/// Efs Mount Target Ip Address enum for `ip_address_type`.
extension type const EfsMountTargetIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  EfsMountTargetIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  EfsMountTargetIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const EfsMountTargetIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4Only = EfsMountTargetIpAddressType._(
    TfArgLiteral('IPV4_ONLY'),
  );
  static const ipv6Only = EfsMountTargetIpAddressType._(
    TfArgLiteral('IPV6_ONLY'),
  );
  static const dualStack = EfsMountTargetIpAddressType._(
    TfArgLiteral('DUAL_STACK'),
  );

  static const List<EfsMountTargetIpAddressType> values = [
    ipv4Only,
    ipv6Only,
    dualStack,
  ];
}

/// Factory wrapper for `aws_efs_mount_target`.
final class AwsEfsMountTarget extends Resource {
  static const String tfType = 'aws_efs_mount_target';

  AwsEfsMountTarget(
    super.localName, {
    required TfArg<String> fileSystemId,
    TfArg<String>? ipAddress,
    EfsMountTargetIpAddressType? ipAddressType,
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
           'ip_address': ?ipAddress,
           'ip_address_type': ?ipAddressType,
           'ipv6_address': ?ipv6Address,
           'region': ?region,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsMountTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEfsMountTarget>`.
  RefTo<AwsEfsMountTarget> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `availability_zone_name` attribute.
  TfRef<String> get availabilityZoneName =>
      TfRef.attribute<String>(this, 'availability_zone_name');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `file_system_arn` attribute.
  TfRef<String> get fileSystemArn =>
      TfRef.attribute<String>(this, 'file_system_arn');

  /// Reference to `mount_target_dns_name` attribute.
  TfRef<String> get mountTargetDnsName =>
      TfRef.attribute<String>(this, 'mount_target_dns_name');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

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
