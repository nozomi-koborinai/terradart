// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_fsx_lustre_file_system`.
const Set<String> _awsDatasyncLocationFsxLustreFileSystemSensitive = <String>{};

/// Factory wrapper for `aws_datasync_location_fsx_lustre_file_system`.
final class AwsDatasyncLocationFsxLustreFileSystem extends Resource {
  static const String tfType = 'aws_datasync_location_fsx_lustre_file_system';

  AwsDatasyncLocationFsxLustreFileSystem(
    super.localName, {
    required TfArg<String> fsxFilesystemArn,
    TfArg<String>? region,
    required TfArg<List<String>> securityGroupArns,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fsx_filesystem_arn': fsxFilesystemArn,
           'region': ?region,
           'security_group_arns': securityGroupArns,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxLustreFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationFsxLustreFileSystem>`.
  RefTo<AwsDatasyncLocationFsxLustreFileSystem> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `fsx_filesystem_arn` attribute.
  TfRef<String> get fsxFilesystemArn =>
      TfRef.attribute<String>(this, 'fsx_filesystem_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_arns` attribute.
  TfRef<List<String>> get securityGroupArns =>
      TfRef.attribute<List<String>>(this, 'security_group_arns');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectory =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
