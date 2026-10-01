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
           'domain': ?domain,
           'fsx_filesystem_arn': fsxFilesystemArn,
           'password': password,
           'region': ?region,
           'security_group_arns': securityGroupArns,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
           'user': user,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxWindowsFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationFsxWindowsFileSystem>`.
  RefTo<AwsDatasyncLocationFsxWindowsFileSystem> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `fsx_filesystem_arn` attribute.
  TfRef<String> get fsxFilesystemArn =>
      TfRef.attribute<String>(this, 'fsx_filesystem_arn');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

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

  /// Reference to `user` attribute.
  TfRef<String> get user => TfRef.attribute<String>(this, 'user');
}
