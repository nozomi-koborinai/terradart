// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_mount_target`.
const Set<String> _awsEfsMountTargetSensitive = <String>{};

/// Factory wrapper for `aws_efs_mount_target`.
final class AwsEfsMountTarget extends Resource {
  static const String tfType = 'aws_efs_mount_target';

  AwsEfsMountTarget({
    required super.localName,
    required TfArg<String> fileSystemId,
    TfArg<String>? ipAddress,
    TfArg<String>? ipAddressType,
    TfArg<String>? ipv6Address,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroups,
    required TfArg<String> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           if (ipAddress != null) 'ip_address': ipAddress,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (ipv6Address != null) 'ipv6_address': ipv6Address,
           if (region != null) 'region': region,
           if (securityGroups != null) 'security_groups': securityGroups,
           'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsMountTargetSensitive;

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
}
