// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3files_access_point`.
const Set<String> _awsS3filesAccessPointSensitive = <String>{};

/// Typed helper for the `posix_user` block of
/// `aws_s3files_access_point` (derived from provider schema).
@immutable
final class DataS3filesAccessPointPosixUser {
  const DataS3filesAccessPointPosixUser();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `root_directory` block of
/// `aws_s3files_access_point` (derived from provider schema).
@immutable
final class DataS3filesAccessPointRootDirectory {
  const DataS3filesAccessPointRootDirectory({this.creationPermissions});

  final List<DataS3filesAccessPointRootDirectoryCreationPermissions>?
  creationPermissions;

  Map<String, Object?> encode() => {
    if (creationPermissions != null)
      'creation_permissions': [
        for (final e in creationPermissions!) e.encode(),
      ],
  };
}

/// Typed helper for the `root_directory.creation_permissions` block of
/// `aws_s3files_access_point` (derived from provider schema).
@immutable
final class DataS3filesAccessPointRootDirectoryCreationPermissions {
  const DataS3filesAccessPointRootDirectoryCreationPermissions();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_s3files_access_point`.
final class DataAwsS3filesAccessPoint extends Data {
  static const String tfType = 'aws_s3files_access_point';

  DataAwsS3filesAccessPoint({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    List<DataS3filesAccessPointPosixUser>? posixUser,
    List<DataS3filesAccessPointRootDirectory>? rootDirectory,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'id': id,
           if (region != null) 'region': region,
           if (posixUser != null)
             'posix_user': TfArg.literal([
               for (final e in posixUser) e.encode(),
             ]),
           if (rootDirectory != null)
             'root_directory': TfArg.literal([
               for (final e in rootDirectory) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3filesAccessPointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
