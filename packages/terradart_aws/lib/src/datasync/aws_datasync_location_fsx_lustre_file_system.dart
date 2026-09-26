// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_fsx_lustre_file_system`.
const Set<String> _awsDatasyncLocationFsxLustreFileSystemSensitive = <String>{};

/// Factory wrapper for `aws_datasync_location_fsx_lustre_file_system`.
final class AwsDatasyncLocationFsxLustreFileSystem extends Resource {
  static const String tfType = 'aws_datasync_location_fsx_lustre_file_system';

  AwsDatasyncLocationFsxLustreFileSystem({
    required super.localName,
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
           if (region != null) 'region': region,
           'security_group_arns': securityGroupArns,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxLustreFileSystemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
