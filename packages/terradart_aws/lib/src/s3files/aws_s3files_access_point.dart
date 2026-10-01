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
final class S3filesAccessPointPosixUser {
  const S3filesAccessPointPosixUser({
    required this.gid,
    this.secondaryGids,
    required this.uid,
  });

  final TfArg<num> gid;

  final TfArg<List<num>>? secondaryGids;

  final TfArg<num> uid;

  Map<String, Object?> encode() => {
    'gid': gid.toTfJson(),
    'secondary_gids': ?secondaryGids?.toTfJson(),
    'uid': uid.toTfJson(),
  };
}

/// Typed helper for the `root_directory` block of
/// `aws_s3files_access_point` (derived from provider schema).
@immutable
final class S3filesAccessPointRootDirectory {
  const S3filesAccessPointRootDirectory({this.path, this.creationPermissions});

  final TfArg<String>? path;

  final List<S3filesAccessPointCreationPermissions>? creationPermissions;

  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    if (creationPermissions != null)
      'creation_permissions': [
        for (final e in creationPermissions!) e.encode(),
      ],
  };
}

/// Typed helper for the `root_directory.creation_permissions` block of
/// `aws_s3files_access_point` (derived from provider schema).
@immutable
final class S3filesAccessPointCreationPermissions {
  const S3filesAccessPointCreationPermissions({
    required this.ownerGid,
    required this.ownerUid,
    required this.permissions,
  });

  final TfArg<num> ownerGid;

  final TfArg<num> ownerUid;

  final TfArg<String> permissions;

  Map<String, Object?> encode() => {
    'owner_gid': ownerGid.toTfJson(),
    'owner_uid': ownerUid.toTfJson(),
    'permissions': permissions.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3files_access_point`.
final class AwsS3filesAccessPoint extends Resource {
  static const String tfType = 'aws_s3files_access_point';

  AwsS3filesAccessPoint(
    super.localName, {
    required TfArg<String> fileSystemId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<S3filesAccessPointPosixUser>? posixUser,
    List<S3filesAccessPointRootDirectory>? rootDirectory,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3filesAccessPoint>`.
  RefTo<AwsS3filesAccessPoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
