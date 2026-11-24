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

/// Exactly one of `ontap_configuration`, `openzfs_configuration` on `aws_fsx_s3_access_point_attachment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.ontapConfiguration(...)`.
sealed class FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration {
  const FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration();

  /// Sets `ontap_configuration`.
  const factory FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration.ontapConfiguration(
    List<FsxS3AccessPointAttachmentOntapConfiguration> ontapConfiguration,
  ) = FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfigurationOntapConfiguration;

  /// Sets `openzfs_configuration`.
  const factory FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration.openzfsConfiguration(
    List<FsxS3AccessPointAttachmentOpenzfsConfiguration> openzfsConfiguration,
  ) = FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfigurationChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration.ontapConfiguration] choice: sets `ontap_configuration`.
final class FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfigurationOntapConfiguration
    extends FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration {
  const FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfigurationOntapConfiguration(
    this.ontapConfiguration,
  );

  final List<FsxS3AccessPointAttachmentOntapConfiguration> ontapConfiguration;

  @internal
  @override
  String get blockKey => 'ontap_configuration';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ontap_configuration': [for (final e in ontapConfiguration) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ontap_configuration': TfArg.literal([
      for (final e in ontapConfiguration) e.encode(),
    ]),
  };
}

/// The [FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration.openzfsConfiguration] choice: sets `openzfs_configuration`.
final class FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfigurationChoice
    extends FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration {
  const FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfigurationChoice(
    this.openzfsConfiguration,
  );

  final List<FsxS3AccessPointAttachmentOpenzfsConfiguration>
  openzfsConfiguration;

  @internal
  @override
  String get blockKey => 'openzfs_configuration';

  @internal
  @override
  Map<String, Object?> encode() => {
    'openzfs_configuration': [for (final e in openzfsConfiguration) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'openzfs_configuration': TfArg.literal([
      for (final e in openzfsConfiguration) e.encode(),
    ]),
  };
}

/// Typed helper for the `ontap_configuration` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentOntapConfiguration {
  const FsxS3AccessPointAttachmentOntapConfiguration({
    required this.volumeId,
    this.fileSystemIdentity,
  });

  final TfArg<String> volumeId;

  final List<FsxS3AccessPointAttachmentOntapConfigurationFileSystemIdentity>?
  fileSystemIdentity;

  @internal
  Map<String, Object?> encode() => {
    'volume_id': volumeId.toTfJson(),
    if (fileSystemIdentity != null)
      'file_system_identity': [for (final e in fileSystemIdentity!) e.encode()],
  };
}

/// Typed helper for the `ontap_configuration.file_system_identity` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentOntapConfigurationFileSystemIdentity {
  const FsxS3AccessPointAttachmentOntapConfigurationFileSystemIdentity({
    required this.type,
    required this.user,
  });

  final FsxS3AccessPointAttachmentOntapConfigurationType type;

  final FsxS3AccessPointAttachmentUser user;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson(), ...user.encode()};
}

/// Exactly one of `unix_user`, `windows_user` on the `ontap_configuration.file_system_identity` block of `aws_fsx_s3_access_point_attachment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.unixUser(...)`.
sealed class FsxS3AccessPointAttachmentUser {
  const FsxS3AccessPointAttachmentUser();

  /// Sets `unix_user`.
  const factory FsxS3AccessPointAttachmentUser.unixUser(
    List<FsxS3AccessPointAttachmentUnixUser> unixUser,
  ) = FsxS3AccessPointAttachmentUnixUserChoice;

  /// Sets `windows_user`.
  const factory FsxS3AccessPointAttachmentUser.windowsUser(
    List<FsxS3AccessPointAttachmentWindowsUser> windowsUser,
  ) = FsxS3AccessPointAttachmentWindowsUserChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FsxS3AccessPointAttachmentUser.unixUser] choice: sets `unix_user`.
final class FsxS3AccessPointAttachmentUnixUserChoice
    extends FsxS3AccessPointAttachmentUser {
  const FsxS3AccessPointAttachmentUnixUserChoice(this.unixUser);

  final List<FsxS3AccessPointAttachmentUnixUser> unixUser;

  @internal
  @override
  String get blockKey => 'unix_user';

  @internal
  @override
  Map<String, Object?> encode() => {
    'unix_user': [for (final e in unixUser) e.encode()],
  };
}

/// The [FsxS3AccessPointAttachmentUser.windowsUser] choice: sets `windows_user`.
final class FsxS3AccessPointAttachmentWindowsUserChoice
    extends FsxS3AccessPointAttachmentUser {
  const FsxS3AccessPointAttachmentWindowsUserChoice(this.windowsUser);

  final List<FsxS3AccessPointAttachmentWindowsUser> windowsUser;

  @internal
  @override
  String get blockKey => 'windows_user';

  @internal
  @override
  Map<String, Object?> encode() => {
    'windows_user': [for (final e in windowsUser) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
extension type const FsxS3AccessPointAttachmentOntapConfigurationType._(
  TfArg<String> _
)
    implements TfArg<String> {
  FsxS3AccessPointAttachmentOntapConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  FsxS3AccessPointAttachmentOntapConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxS3AccessPointAttachmentOntapConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const unix = FsxS3AccessPointAttachmentOntapConfigurationType._(
    TfArgLiteral('UNIX'),
  );
  static const windows = FsxS3AccessPointAttachmentOntapConfigurationType._(
    TfArgLiteral('WINDOWS'),
  );

  static const List<FsxS3AccessPointAttachmentOntapConfigurationType> values = [
    unix,
    windows,
  ];
}

/// Typed helper for the `ontap_configuration.file_system_identity.unix_user` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentUnixUser {
  const FsxS3AccessPointAttachmentUnixUser({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `ontap_configuration.file_system_identity.windows_user` block of
/// `aws_fsx_s3_access_point_attachment` (derived from provider schema).
@immutable
final class FsxS3AccessPointAttachmentWindowsUser {
  const FsxS3AccessPointAttachmentWindowsUser({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
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

  final List<FsxS3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity>?
  fileSystemIdentity;

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
final class FsxS3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity {
  const FsxS3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity({
    required this.type,
    this.posixUser,
  });

  final FsxS3AccessPointAttachmentOpenzfsConfigurationType type;

  final List<FsxS3AccessPointAttachmentPosixUser>? posixUser;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (posixUser != null)
      'posix_user': [for (final e in posixUser!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
extension type const FsxS3AccessPointAttachmentOpenzfsConfigurationType._(
  TfArg<String> _
)
    implements TfArg<String> {
  FsxS3AccessPointAttachmentOpenzfsConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  FsxS3AccessPointAttachmentOpenzfsConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxS3AccessPointAttachmentOpenzfsConfigurationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const posix = FsxS3AccessPointAttachmentOpenzfsConfigurationType._(
    TfArgLiteral('POSIX'),
  );

  static const List<FsxS3AccessPointAttachmentOpenzfsConfigurationType> values =
      [posix];
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
    required FsxS3AccessPointAttachmentOntapConfigurationOrOpenzfsConfiguration
    ontapConfigurationOrOpenzfsConfiguration,
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
           ...ontapConfigurationOrOpenzfsConfiguration.argMap,
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
