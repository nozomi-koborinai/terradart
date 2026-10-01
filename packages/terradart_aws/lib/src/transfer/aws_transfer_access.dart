// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_transfer_access`.
const Set<String> _awsTransferAccessSensitive = <String>{};

/// Transfer Access Home Directory enum for `home_directory_type`.
extension type const TransferAccessHomeDirectoryType._(TfArg<String> _)
    implements TfArg<String> {
  TransferAccessHomeDirectoryType.variable(String name)
    : this._(TfArg.variable(name));
  TransferAccessHomeDirectoryType.expression(String template)
    : this._(TfArg.expression(template));
  const TransferAccessHomeDirectoryType.arg(TfArg<String> arg) : this._(arg);

  static const path = TransferAccessHomeDirectoryType._(TfArgLiteral('PATH'));
  static const logical = TransferAccessHomeDirectoryType._(
    TfArgLiteral('LOGICAL'),
  );

  static const List<TransferAccessHomeDirectoryType> values = [path, logical];
}

/// Typed helper for the `home_directory_mappings` block of
/// `aws_transfer_access` (derived from provider schema).
@immutable
final class TransferAccessHomeDirectoryMappings {
  const TransferAccessHomeDirectoryMappings({
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
/// `aws_transfer_access` (derived from provider schema).
@immutable
final class TransferAccessPosixProfile {
  const TransferAccessPosixProfile({
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

/// Factory wrapper for `aws_transfer_access`.
final class AwsTransferAccess extends Resource {
  static const String tfType = 'aws_transfer_access';

  AwsTransferAccess(
    super.localName, {
    required TfArg<String> externalId,
    TfArg<String>? homeDirectory,
    TransferAccessHomeDirectoryType? homeDirectoryType,
    TfArg<String>? policy,
    TfArg<String>? region,
    RefTo<AwsIamRole>? role,
    required TfArg<String> serverId,
    List<TransferAccessHomeDirectoryMappings>? homeDirectoryMappings,
    TransferAccessPosixProfile? posixProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'external_id': externalId,
           'home_directory': ?homeDirectory,
           'home_directory_type': ?homeDirectoryType,
           'policy': ?policy,
           'region': ?region,
           'role': ?role?.encodeAs('arn'),
           'server_id': serverId,
           if (homeDirectoryMappings != null)
             'home_directory_mappings': TfArg.literal([
               for (final e in homeDirectoryMappings) e.encode(),
             ]),
           if (posixProfile != null)
             'posix_profile': TfArg.literal(posixProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferAccess>`.
  RefTo<AwsTransferAccess> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `external_id` attribute.
  TfRef<String> get externalId => TfRef.attribute<String>(this, 'external_id');

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
}
