// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3files_mount_target`.
const Set<String> _awsS3filesMountTargetSensitive = <String>{};

/// Factory wrapper for `aws_s3files_mount_target`.
final class DataAwsS3filesMountTarget extends Data {
  static const String tfType = 'aws_s3files_mount_target';

  DataAwsS3filesMountTarget({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsS3filesMountTargetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `ipv4_address` attribute.
  TfRef<String> get ipv4Address =>
      TfRef.attribute<String>(this, 'ipv4_address');

  /// Reference to `ipv6_address` attribute.
  TfRef<String> get ipv6Address =>
      TfRef.attribute<String>(this, 'ipv6_address');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
