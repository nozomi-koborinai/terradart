// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_mount_target`.
const Set<String> _awsEfsMountTargetSensitive = <String>{};

/// Factory wrapper for `aws_efs_mount_target`.
final class DataAwsEfsMountTarget extends Data {
  static const String tfType = 'aws_efs_mount_target';

  DataAwsEfsMountTarget({
    required super.localName,
    TfArg<String>? accessPointId,
    TfArg<String>? fileSystemId,
    TfArg<String>? mountTargetId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessPointId != null) 'access_point_id': accessPointId,
           if (fileSystemId != null) 'file_system_id': fileSystemId,
           if (mountTargetId != null) 'mount_target_id': mountTargetId,
           if (region != null) 'region': region,
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

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `ipv6_address` attribute.
  TfRef<String> get ipv6Address =>
      TfRef.attribute<String>(this, 'ipv6_address');

  /// Reference to `mount_target_dns_name` attribute.
  TfRef<String> get mountTargetDnsName =>
      TfRef.attribute<String>(this, 'mount_target_dns_name');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
