// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_efs`.
const Set<String> _awsDatasyncLocationEfsSensitive = <String>{};

/// Datasync Location Efs In Transit enum for `in_transit_encryption`.
enum DatasyncLocationEfsInTransitEncryption implements TerraformEnum {
  none('NONE'),
  tls12('TLS1_2');

  const DatasyncLocationEfsInTransitEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ec2_config` block of
/// `aws_datasync_location_efs` (derived from provider schema).
@immutable
final class DatasyncLocationEfsEc2Config {
  const DatasyncLocationEfsEc2Config({
    required this.securityGroupArns,
    required this.subnetArn,
  });

  final TfArg<List<String>> securityGroupArns;

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
    TfArg<DatasyncLocationEfsInTransitEncryption>? inTransitEncryption,
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
           'access_point_arn': ?accessPointArn,
           'efs_file_system_arn': efsFileSystemArn,
           'file_system_access_role_arn': ?fileSystemAccessRoleArn,
           'in_transit_encryption': ?inTransitEncryption,
           'region': ?region,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
           'ec2_config': TfArg.literal(ec2Config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationEfsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationEfs>`.
  RefTo<AwsDatasyncLocationEfs> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `access_point_arn` attribute.
  TfRef<String> get accessPointArn =>
      TfRef.attribute<String>(this, 'access_point_arn');

  /// Reference to `efs_file_system_arn` attribute.
  TfRef<String> get efsFileSystemArn =>
      TfRef.attribute<String>(this, 'efs_file_system_arn');

  /// Reference to `file_system_access_role_arn` attribute.
  TfRef<String> get fileSystemAccessRoleArn =>
      TfRef.attribute<String>(this, 'file_system_access_role_arn');

  /// Reference to `in_transit_encryption` attribute.
  TfRef<String> get inTransitEncryption =>
      TfRef.attribute<String>(this, 'in_transit_encryption');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectory =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
