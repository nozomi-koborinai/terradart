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

  final DatasyncLocationFsxOpenzfsFileSystemProtocolNfs nfs;

  Map<String, Object?> encode() => {'nfs': nfs.encode()};
}

/// Typed helper for the `protocol.nfs` block of
/// `aws_datasync_location_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOpenzfsFileSystemProtocolNfs {
  const DatasyncLocationFsxOpenzfsFileSystemProtocolNfs({
    required this.mountOptions,
  });

  final DatasyncLocationFsxOpenzfsFileSystemProtocolNfsMountOptions
  mountOptions;

  Map<String, Object?> encode() => {'mount_options': mountOptions.encode()};
}

/// Typed helper for the `protocol.nfs.mount_options` block of
/// `aws_datasync_location_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOpenzfsFileSystemProtocolNfsMountOptions {
  const DatasyncLocationFsxOpenzfsFileSystemProtocolNfsMountOptions({
    this.version,
  });

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_location_fsx_openzfs_file_system`.
final class AwsDatasyncLocationFsxOpenzfsFileSystem extends Resource {
  static const String tfType = 'aws_datasync_location_fsx_openzfs_file_system';

  AwsDatasyncLocationFsxOpenzfsFileSystem({
    required super.localName,
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
           if (region != null) 'region': region,
           'security_group_arns': securityGroupArns,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           'protocol': TfArg.literal(protocol.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxOpenzfsFileSystemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
