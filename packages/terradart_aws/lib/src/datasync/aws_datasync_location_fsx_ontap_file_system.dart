// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_fsx_ontap_file_system`.
const Set<String> _awsDatasyncLocationFsxOntapFileSystemSensitive = <String>{
  'protocol.smb.password',
};

/// Exactly one of `nfs`, `smb` on the `protocol` block of `aws_datasync_location_fsx_ontap_file_system`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.nfs(...)`.
sealed class DatasyncLocationFsxOntapFileSystemProtocol {
  const DatasyncLocationFsxOntapFileSystemProtocol();

  /// Sets `nfs`.
  const factory DatasyncLocationFsxOntapFileSystemProtocol.nfs(
    DatasyncLocationFsxOntapFileSystemNfs nfs,
  ) = DatasyncLocationFsxOntapFileSystemProtocolNfs;

  /// Sets `smb`.
  const factory DatasyncLocationFsxOntapFileSystemProtocol.smb(
    DatasyncLocationFsxOntapFileSystemSmb smb,
  ) = DatasyncLocationFsxOntapFileSystemProtocolSmb;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DatasyncLocationFsxOntapFileSystemProtocol.nfs] choice: sets `nfs`.
final class DatasyncLocationFsxOntapFileSystemProtocolNfs
    extends DatasyncLocationFsxOntapFileSystemProtocol {
  const DatasyncLocationFsxOntapFileSystemProtocolNfs(this.nfs);

  final DatasyncLocationFsxOntapFileSystemNfs nfs;

  @override
  String get blockKey => 'nfs';

  @override
  Map<String, Object?> encode() => {'nfs': nfs.encode()};
}

/// The [DatasyncLocationFsxOntapFileSystemProtocol.smb] choice: sets `smb`.
final class DatasyncLocationFsxOntapFileSystemProtocolSmb
    extends DatasyncLocationFsxOntapFileSystemProtocol {
  const DatasyncLocationFsxOntapFileSystemProtocolSmb(this.smb);

  final DatasyncLocationFsxOntapFileSystemSmb smb;

  @override
  String get blockKey => 'smb';

  @override
  Map<String, Object?> encode() => {'smb': smb.encode()};
}

/// Typed helper for the `protocol.nfs` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemNfs {
  const DatasyncLocationFsxOntapFileSystemNfs({required this.mountOptions});

  final DatasyncLocationFsxOntapFileSystemNfsMountOptions mountOptions;

  Map<String, Object?> encode() => {'mount_options': mountOptions.encode()};
}

/// Typed helper for the `protocol.nfs.mount_options` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemNfsMountOptions {
  const DatasyncLocationFsxOntapFileSystemNfsMountOptions({this.version});

  final TfArg<DatasyncLocationFsxOntapFileSystemNfsVersion>? version;

  Map<String, Object?> encode() => {'version': ?version?.toTfJson()};
}

/// `version` — derived from the provider schema description.
enum DatasyncLocationFsxOntapFileSystemNfsVersion implements TerraformEnum {
  nfs3('NFS3');

  const DatasyncLocationFsxOntapFileSystemNfsVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `protocol.smb` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemSmb {
  const DatasyncLocationFsxOntapFileSystemSmb({
    this.domain,
    required this.password,
    required this.user,
    required this.mountOptions,
  });

  final TfArg<String>? domain;

  final TfArg<String> password;

  final TfArg<String> user;

  final DatasyncLocationFsxOntapFileSystemSmbMountOptions mountOptions;

  Map<String, Object?> encode() => {
    'domain': ?domain?.toTfJson(),
    'password': password.toTfJson(),
    'user': user.toTfJson(),
    'mount_options': mountOptions.encode(),
  };
}

/// Typed helper for the `protocol.smb.mount_options` block of
/// `aws_datasync_location_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class DatasyncLocationFsxOntapFileSystemSmbMountOptions {
  const DatasyncLocationFsxOntapFileSystemSmbMountOptions({this.version});

  final TfArg<DatasyncLocationFsxOntapFileSystemSmbVersion>? version;

  Map<String, Object?> encode() => {'version': ?version?.toTfJson()};
}

/// `version` — derived from the provider schema description.
enum DatasyncLocationFsxOntapFileSystemSmbVersion implements TerraformEnum {
  automatic('AUTOMATIC'),
  smb2('SMB2'),
  smb3('SMB3'),
  smb20('SMB2_0');

  const DatasyncLocationFsxOntapFileSystemSmbVersion(this.terraformValue);
  @override
  final String terraformValue;
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
           'region': ?region,
           'security_group_arns': securityGroupArns,
           'storage_virtual_machine_arn': storageVirtualMachineArn,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
           'protocol': TfArg.literal(protocol.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDatasyncLocationFsxOntapFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationFsxOntapFileSystem>`.
  RefTo<AwsDatasyncLocationFsxOntapFileSystem> get ref => RefTo.of(this);

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_arns` attribute.
  TfRef<List<String>> get securityGroupArns =>
      TfRef.attribute<List<String>>(this, 'security_group_arns');

  /// Reference to `storage_virtual_machine_arn` attribute.
  TfRef<String> get storageVirtualMachineArn =>
      TfRef.attribute<String>(this, 'storage_virtual_machine_arn');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectory =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
