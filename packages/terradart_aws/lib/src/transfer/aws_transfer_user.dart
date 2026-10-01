// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_transfer_user`.
const Set<String> _awsTransferUserSensitive = <String>{};

/// Transfer User Home Directory enum for `home_directory_type`.
enum TransferUserHomeDirectoryType implements TerraformEnum {
  path('PATH'),
  logical('LOGICAL');

  const TransferUserHomeDirectoryType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `home_directory_mappings` block of
/// `aws_transfer_user` (derived from provider schema).
@immutable
final class TransferUserHomeDirectoryMappings {
  const TransferUserHomeDirectoryMappings({
    required this.entry,
    required this.target,
  });

  final TfArg<String> entry;

  final TfArg<String> target;

  Map<String, Object?> encode() => {
    'entry': entry.toTfJson(),
    'target': target.toTfJson(),
  };
}

/// Typed helper for the `posix_profile` block of
/// `aws_transfer_user` (derived from provider schema).
@immutable
final class TransferUserPosixProfile {
  const TransferUserPosixProfile({
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

/// Factory wrapper for `aws_transfer_user`.
final class AwsTransferUser extends Resource {
  static const String tfType = 'aws_transfer_user';

  AwsTransferUser({
    required super.localName,
    TfArg<String>? homeDirectory,
    TfArg<TransferUserHomeDirectoryType>? homeDirectoryType,
    TfArg<String>? policy,
    TfArg<String>? region,
    required RefTo<AwsIamRole> role,
    required TfArg<String> serverId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userName,
    List<TransferUserHomeDirectoryMappings>? homeDirectoryMappings,
    TransferUserPosixProfile? posixProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'home_directory': ?homeDirectory,
           'home_directory_type': ?homeDirectoryType,
           'policy': ?policy,
           'region': ?region,
           'role': role.encodeAs('arn'),
           'server_id': serverId,
           'tags': ?tags,
           'user_name': userName,
           if (homeDirectoryMappings != null)
             'home_directory_mappings': TfArg.literal([
               for (final e in homeDirectoryMappings) e.encode(),
             ]),
           if (posixProfile != null)
             'posix_profile': TfArg.literal(posixProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferUser>`.
  RefTo<AwsTransferUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_directory` attribute.
  TfRef<String> get homeDirectory =>
      TfRef.attribute<String>(this, 'home_directory');

  /// Reference to `home_directory_type` attribute.
  TfRef<String> get homeDirectoryType =>
      TfRef.attribute<String>(this, 'home_directory_type');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
