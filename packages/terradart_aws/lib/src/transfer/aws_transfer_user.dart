// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_user`.
const Set<String> _awsTransferUserSensitive = <String>{};

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

  final TfArg<List<Object?>>? secondaryGids;

  final TfArg<num> uid;

  Map<String, Object?> encode() => {
    'gid': gid.toTfJson(),
    if (secondaryGids != null) 'secondary_gids': secondaryGids!.toTfJson(),
    'uid': uid.toTfJson(),
  };
}

/// Factory wrapper for `aws_transfer_user`.
final class AwsTransferUser extends Resource {
  static const String tfType = 'aws_transfer_user';

  AwsTransferUser({
    required super.localName,
    TfArg<String>? homeDirectory,
    TfArg<String>? homeDirectoryType,
    TfArg<String>? policy,
    TfArg<String>? region,
    required TfArg<String> role,
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
           if (homeDirectory != null) 'home_directory': homeDirectory,
           if (homeDirectoryType != null)
             'home_directory_type': homeDirectoryType,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           'role': role,
           'server_id': serverId,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
