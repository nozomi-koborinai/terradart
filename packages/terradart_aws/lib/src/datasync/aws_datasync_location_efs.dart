// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_efs`.
const Set<String> _awsDatasyncLocationEfsSensitive = <String>{};

/// Typed helper for the `ec2_config` block of
/// `aws_datasync_location_efs` (derived from provider schema).
@immutable
final class DatasyncLocationEfsEc2Config {
  const DatasyncLocationEfsEc2Config({
    required this.securityGroupArns,
    required this.subnetArn,
  });

  final TfArg<List<Object?>> securityGroupArns;

  final TfArg<String> subnetArn;

  Map<String, Object?> encode() => {
    'security_group_arns': securityGroupArns.toTfJson(),
    'subnet_arn': subnetArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_location_efs`.
final class AwsDatasyncLocationEfs extends Resource {
  static const String tfType = 'aws_datasync_location_efs';

  AwsDatasyncLocationEfs({
    required super.localName,
    TfArg<String>? accessPointArn,
    required TfArg<String> efsFileSystemArn,
    TfArg<String>? fileSystemAccessRoleArn,
    TfArg<String>? inTransitEncryption,
    TfArg<String>? region,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    required DatasyncLocationEfsEc2Config ec2Config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessPointArn != null) 'access_point_arn': accessPointArn,
           'efs_file_system_arn': efsFileSystemArn,
           if (fileSystemAccessRoleArn != null)
             'file_system_access_role_arn': fileSystemAccessRoleArn,
           if (inTransitEncryption != null)
             'in_transit_encryption': inTransitEncryption,
           if (region != null) 'region': region,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           'ec2_config': TfArg.literal(ec2Config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationEfsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
