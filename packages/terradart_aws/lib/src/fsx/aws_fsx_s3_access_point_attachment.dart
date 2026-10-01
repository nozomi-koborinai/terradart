// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_fsx_s3_access_point_attachment`.
const Set<String> _awsFsxS3AccessPointAttachmentSensitive = <String>{};

/// Fsx S3 Access Point Attachment enum for `type`.
extension type const FsxS3AccessPointAttachmentType._(TfArg<String> _)
    implements TfArg<String> {
  FsxS3AccessPointAttachmentType.variable(String name)
    : this._(TfArg.variable(name));
  FsxS3AccessPointAttachmentType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxS3AccessPointAttachmentType.arg(TfArg<String> arg) : this._(arg);

  static const openzfs = FsxS3AccessPointAttachmentType._(
    TfArgLiteral('OPENZFS'),
  );
  static const ontap = FsxS3AccessPointAttachmentType._(TfArgLiteral('ONTAP'));

  static const List<FsxS3AccessPointAttachmentType> values = [openzfs, ontap];
}

/// Typed helper for the `openzfs_configuration` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentOpenzfsConfiguration {
  const FsxS3AccessPointAttachmentOpenzfsConfiguration({
    required this.volumeId,
    this.fileSystemIdentity,
  });

  final TfArg<String> volumeId;

  final List<FsxS3AccessPointAttachmentFileSystemIdentity>? fileSystemIdentity;

  @internal
  Map<String, Object?> encode() => {
    'volume_id': volumeId.toTfJson(),
    if (fileSystemIdentity != null)
      'file_system_identity': [for (final e in fileSystemIdentity!) e.encode()],
  };
}

/// Typed helper for the `openzfs_configuration.file_system_identity` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentFileSystemIdentity {
  const FsxS3AccessPointAttachmentFileSystemIdentity({
    required this.type,
    this.posixUser,
  });

  final FsxS3AccessPointAttachmentFileSystemIdentityType type;

  final List<FsxS3AccessPointAttachmentPosixUser>? posixUser;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (posixUser != null)
      'posix_user': [for (final e in posixUser!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
extension type const FsxS3AccessPointAttachmentFileSystemIdentityType._(
  TfArg<String> _
) implements TfArg<String> {
  FsxS3AccessPointAttachmentFileSystemIdentityType.variable(String name)
    : this._(TfArg.variable(name));
  FsxS3AccessPointAttachmentFileSystemIdentityType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxS3AccessPointAttachmentFileSystemIdentityType.arg(TfArg<String> arg)
    : this._(arg);

  static const posix = FsxS3AccessPointAttachmentFileSystemIdentityType._(
    TfArgLiteral('POSIX'),
  );

  static const List<FsxS3AccessPointAttachmentFileSystemIdentityType> values = [
    posix,
  ];
}

/// Typed helper for the `openzfs_configuration.file_system_identity.posix_user` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentPosixUser {
  const FsxS3AccessPointAttachmentPosixUser({
    required this.gid,
    this.secondaryGids,
    required this.uid,
  });

  final TfArg<num> gid;

  final TfArg<List<num>>? secondaryGids;

  final TfArg<num> uid;

  @internal
  Map<String, Object?> encode() => {
    'gid': gid.toTfJson(),
    'secondary_gids': ?secondaryGids?.toTfJson(),
    'uid': uid.toTfJson(),
  };
}

/// Typed helper for the `s3_access_point` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentS3AccessPoint {
  const FsxS3AccessPointAttachmentS3AccessPoint({
    this.policy,
    this.vpcConfiguration,
  });

  final TfArg<String>? policy;

  final List<FsxS3AccessPointAttachmentVpcConfiguration>? vpcConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'policy': ?policy?.toTfJson(),
    if (vpcConfiguration != null)
      'vpc_configuration': [for (final e in vpcConfiguration!) e.encode()],
  };
}

/// Typed helper for the `s3_access_point.vpc_configuration` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentVpcConfiguration {
  const FsxS3AccessPointAttachmentVpcConfiguration({this.vpcId});

  final RefTo<AwsVpc>? vpcId;

  @internal
  Map<String, Object?> encode() => {
    'vpc_id': ?vpcId?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_s3_access_point_attachment`.
final class AwsFsxS3AccessPointAttachment extends Resource {
  static const String tfType = 'aws_fsx_s3_access_point_attachment';

  AwsFsxS3AccessPointAttachment(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required FsxS3AccessPointAttachmentType type,
    List<FsxS3AccessPointAttachmentOpenzfsConfiguration>? openzfsConfiguration,
    List<FsxS3AccessPointAttachmentS3AccessPoint>? s3AccessPoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'type': type,
           if (openzfsConfiguration != null)
             'openzfs_configuration': TfArg.literal([
               for (final e in openzfsConfiguration) e.encode(),
             ]),
           if (s3AccessPoint != null)
             's3_access_point': TfArg.literal([
               for (final e in s3AccessPoint) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxS3AccessPointAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxS3AccessPointAttachment>`.
  RefTo<AwsFsxS3AccessPointAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `s3_access_point_alias` attribute.
  TfRef<String> get s3AccessPointAlias =>
      TfRef.attribute<String>(this, 's3_access_point_alias');

  /// Reference to `s3_access_point_arn` attribute.
  TfRef<String> get s3AccessPointArn =>
      TfRef.attribute<String>(this, 's3_access_point_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
