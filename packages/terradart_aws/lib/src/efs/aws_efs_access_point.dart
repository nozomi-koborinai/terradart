// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_access_point`.
const Set<String> _awsEfsAccessPointSensitive = <String>{};

/// Typed helper for the `posix_user` block of
/// `aws_efs_access_point` (derived from provider schema).
@immutable
final class EfsAccessPointPosixUser {
  const EfsAccessPointPosixUser({
    required this.gid,
    this.secondaryGids,
    required this.uid,
  });

  final TfArg<num> gid;

  final TfArg<List<Object?>>? secondaryGids;

  final TfArg<num> uid;

  Map<String, Object?> encode() => {
    'gid': gid.toTfJson(),
    if (secondaryGids != null) 'secondary_gids': secondaryGids!.toTfJson(),
    'uid': uid.toTfJson(),
  };
}

/// Typed helper for the `root_directory` block of
/// `aws_efs_access_point` (derived from provider schema).
@immutable
final class EfsAccessPointRootDirectory {
  const EfsAccessPointRootDirectory({this.path, this.creationInfo});

  final TfArg<String>? path;

  final EfsAccessPointRootDirectoryCreationInfo? creationInfo;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (creationInfo != null) 'creation_info': creationInfo!.encode(),
  };
}

/// Typed helper for the `root_directory.creation_info` block of
/// `aws_efs_access_point` (derived from provider schema).
@immutable
final class EfsAccessPointRootDirectoryCreationInfo {
  const EfsAccessPointRootDirectoryCreationInfo({
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

/// Factory wrapper for `aws_efs_access_point`.
final class AwsEfsAccessPoint extends Resource {
  static const String tfType = 'aws_efs_access_point';

  AwsEfsAccessPoint({
    required super.localName,
    required TfArg<String> fileSystemId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    EfsAccessPointPosixUser? posixUser,
    EfsAccessPointRootDirectory? rootDirectory,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (posixUser != null)
             'posix_user': TfArg.literal(posixUser.encode()),
           if (rootDirectory != null)
             'root_directory': TfArg.literal(rootDirectory.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsAccessPointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `file_system_arn` attribute.
  TfRef<String> get fileSystemArn =>
      TfRef.attribute<String>(this, 'file_system_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
