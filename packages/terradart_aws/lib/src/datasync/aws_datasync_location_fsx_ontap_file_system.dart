// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_fsx_ontap_file_system`.
const Set<String> _awsDatasyncLocationFsxOntapFileSystemSensitive = <String>{
  'protocol.smb.password',
};

/// Typed helper for the `protocol` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemProtocol {
  const DatasyncLocationFsxOntapFileSystemProtocol({this.nfs, this.smb});

  final DatasyncLocationFsxOntapFileSystemProtocolNfs? nfs;

  final DatasyncLocationFsxOntapFileSystemProtocolSmb? smb;

  Map<String, Object?> encode() => {
    if (nfs != null) 'nfs': nfs!.encode(),
    if (smb != null) 'smb': smb!.encode(),
  };
}

/// Typed helper for the `protocol.nfs` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemProtocolNfs {
  const DatasyncLocationFsxOntapFileSystemProtocolNfs({
    required this.mountOptions,
  });

  final DatasyncLocationFsxOntapFileSystemProtocolNfsMountOptions mountOptions;

  Map<String, Object?> encode() => {'mount_options': mountOptions.encode()};
}

/// Typed helper for the `protocol.nfs.mount_options` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemProtocolNfsMountOptions {
  const DatasyncLocationFsxOntapFileSystemProtocolNfsMountOptions({
    this.version,
  });

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `protocol.smb` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemProtocolSmb {
  const DatasyncLocationFsxOntapFileSystemProtocolSmb({
    this.domain,
    required this.password,
    required this.user,
    required this.mountOptions,
  });

  final TfArg<String>? domain;

  final TfArg<String> password;

  final TfArg<String> user;

  final DatasyncLocationFsxOntapFileSystemProtocolSmbMountOptions mountOptions;

  Map<String, Object?> encode() => {
    if (domain != null) 'domain': domain!.toTfJson(),
    'password': password.toTfJson(),
    'user': user.toTfJson(),
    'mount_options': mountOptions.encode(),
  };
}

/// Typed helper for the `protocol.smb.mount_options` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemProtocolSmbMountOptions {
  const DatasyncLocationFsxOntapFileSystemProtocolSmbMountOptions({
    this.version,
  });

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_location_fsx_ontap_file_system`.
final class AwsDatasyncLocationFsxOntapFileSystem extends Resource {
  static const String tfType = 'aws_datasync_location_fsx_ontap_file_system';

  AwsDatasyncLocationFsxOntapFileSystem({
    required super.localName,
    TfArg<String>? region,
    required TfArg<List<String>> securityGroupArns,
    required TfArg<String> storageVirtualMachineArn,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    required DatasyncLocationFsxOntapFileSystemProtocol protocol,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'security_group_arns': securityGroupArns,
           'storage_virtual_machine_arn': storageVirtualMachineArn,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           'protocol': TfArg.literal(protocol.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxOntapFileSystemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `fsx_filesystem_arn` attribute.
  TfRef<String> get fsxFilesystemArn =>
      TfRef.attribute<String>(this, 'fsx_filesystem_arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
