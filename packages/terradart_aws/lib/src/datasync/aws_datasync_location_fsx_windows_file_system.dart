// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_fsx_windows_file_system`.
const Set<String> _awsDatasyncLocationFsxWindowsFileSystemSensitive = <String>{
  'password',
};

/// Factory wrapper for `aws_datasync_location_fsx_windows_file_system`.
final class AwsDatasyncLocationFsxWindowsFileSystem extends Resource {
  static const String tfType = 'aws_datasync_location_fsx_windows_file_system';

  AwsDatasyncLocationFsxWindowsFileSystem({
    required super.localName,
    TfArg<String>? domain,
    required TfArg<String> fsxFilesystemArn,
    required TfArg<String> password,
    TfArg<String>? region,
    required TfArg<List<String>> securityGroupArns,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (domain != null) 'domain': domain,
           'fsx_filesystem_arn': fsxFilesystemArn,
           'password': password,
           if (region != null) 'region': region,
           'security_group_arns': securityGroupArns,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           'user': user,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxWindowsFileSystemSensitive;

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
