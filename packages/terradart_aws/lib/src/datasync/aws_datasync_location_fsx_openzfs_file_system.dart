// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_fsx_openzfs_file_system`.
const Set<String> _awsDatasyncLocationFsxOpenzfsFileSystemSensitive =
    <String>{};

/// Typed helper for the `protocol` block of
/// `aws_datasync_location_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOpenzfsFileSystemProtocol {
  const DatasyncLocationFsxOpenzfsFileSystemProtocol({required this.nfs});

  final DatasyncLocationFsxOpenzfsFileSystemNfs nfs;

  @internal
  Map<String, Object?> encode() => {'nfs': nfs.encode()};
}

/// Typed helper for the `protocol.nfs` block of
/// `aws_datasync_location_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOpenzfsFileSystemNfs {
  const DatasyncLocationFsxOpenzfsFileSystemNfs({required this.mountOptions});

  final DatasyncLocationFsxOpenzfsFileSystemMountOptions mountOptions;

  @internal
  Map<String, Object?> encode() => {'mount_options': mountOptions.encode()};
}

/// Typed helper for the `protocol.nfs.mount_options` block of
/// `aws_datasync_location_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOpenzfsFileSystemMountOptions {
  const DatasyncLocationFsxOpenzfsFileSystemMountOptions({this.version});

  final DatasyncLocationFsxOpenzfsFileSystemVersion? version;

  @internal
  Map<String, Object?> encode() => {'version': ?version?.toTfJson()};
}

/// `version` — derived from the provider schema description.
extension type const DatasyncLocationFsxOpenzfsFileSystemVersion._(
  TfArg<String> _
) implements TfArg<String> {
  DatasyncLocationFsxOpenzfsFileSystemVersion.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncLocationFsxOpenzfsFileSystemVersion.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncLocationFsxOpenzfsFileSystemVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const automatic = DatasyncLocationFsxOpenzfsFileSystemVersion._(
    TfArgLiteral('AUTOMATIC'),
  );
  static const nfs3 = DatasyncLocationFsxOpenzfsFileSystemVersion._(
    TfArgLiteral('NFS3'),
  );
  static const nfs40 = DatasyncLocationFsxOpenzfsFileSystemVersion._(
    TfArgLiteral('NFS4_0'),
  );
  static const nfs41 = DatasyncLocationFsxOpenzfsFileSystemVersion._(
    TfArgLiteral('NFS4_1'),
  );

  static const List<DatasyncLocationFsxOpenzfsFileSystemVersion> values = [
    automatic,
    nfs3,
    nfs40,
    nfs41,
  ];
}

/// Factory wrapper for `aws_datasync_location_fsx_openzfs_file_system`.
final class AwsDatasyncLocationFsxOpenzfsFileSystem extends Resource {
  static const String tfType = 'aws_datasync_location_fsx_openzfs_file_system';

  AwsDatasyncLocationFsxOpenzfsFileSystem(
    super.localName, {
    required TfArg<String> fsxFilesystemArn,
    TfArg<String>? region,
    required TfArg<List<String>> securityGroupArns,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    required DatasyncLocationFsxOpenzfsFileSystemProtocol protocol,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fsx_filesystem_arn': fsxFilesystemArn,
           'region': ?region,
           'security_group_arns': securityGroupArns,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
           'protocol': TfArg.literal(protocol.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxOpenzfsFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationFsxOpenzfsFileSystem>`.
  RefTo<AwsDatasyncLocationFsxOpenzfsFileSystem> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `fsx_filesystem_arn` attribute.
  TfRef<String> get fsxFilesystemArn =>
      TfRef.attribute<String>(this, 'fsx_filesystem_arn');

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
}
