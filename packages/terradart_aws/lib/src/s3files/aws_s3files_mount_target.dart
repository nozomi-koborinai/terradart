// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3files_mount_target`.
const Set<String> _awsS3filesMountTargetSensitive = <String>{};

/// Factory wrapper for `aws_s3files_mount_target`.
final class AwsS3filesMountTarget extends Resource {
  static const String tfType = 'aws_s3files_mount_target';

  AwsS3filesMountTarget({
    required super.localName,
    required TfArg<String> fileSystemId,
    TfArg<String>? ipAddressType,
    TfArg<String>? ipv4Address,
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
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (ipv4Address != null) 'ipv4_address': ipv4Address,
           if (ipv6Address != null) 'ipv6_address': ipv6Address,
           if (region != null) 'region': region,
           if (securityGroups != null) 'security_groups': securityGroups,
           'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3filesMountTargetSensitive;

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
