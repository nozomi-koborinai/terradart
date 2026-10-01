// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_ontap_storage_virtual_machine`.
const Set<String> _awsFsxOntapStorageVirtualMachineSensitive = <String>{
  'active_directory_configuration.self_managed_active_directory_configuration.password',
  'svm_admin_password',
};

/// Fsx Ontap Storage Virtual Machine Root Volume Security enum for `root_volume_security_style`.
extension type const FsxOntapStorageVirtualMachineRootVolumeSecurityStyle._(
  TfArg<String> _
) implements TfArg<String> {
  FsxOntapStorageVirtualMachineRootVolumeSecurityStyle.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapStorageVirtualMachineRootVolumeSecurityStyle.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const FsxOntapStorageVirtualMachineRootVolumeSecurityStyle.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const unix = FsxOntapStorageVirtualMachineRootVolumeSecurityStyle._(
    TfArgLiteral('UNIX'),
  );
  static const ntfs = FsxOntapStorageVirtualMachineRootVolumeSecurityStyle._(
    TfArgLiteral('NTFS'),
  );
  static const mixed = FsxOntapStorageVirtualMachineRootVolumeSecurityStyle._(
    TfArgLiteral('MIXED'),
  );

  static const List<FsxOntapStorageVirtualMachineRootVolumeSecurityStyle>
  values = [unix, ntfs, mixed];
}

/// Typed helper for the `active_directory_configuration` block of
/// `aws_fsx_ontap_storage_virtual_machine` (derived from provider schema).
@immutable
final class FsxOntapStorageVirtualMachineActiveDirectoryConfiguration {
  const FsxOntapStorageVirtualMachineActiveDirectoryConfiguration({
    this.netbiosName,
    this.selfManagedActiveDirectoryConfiguration,
  });

  final TfArg<String>? netbiosName;

  final FsxOntapStorageVirtualMachineSelfManagedActiveDirectoryConfiguration?
  selfManagedActiveDirectoryConfiguration;

  Map<String, Object?> encode() => {
    'netbios_name': ?netbiosName?.toTfJson(),
    'self_managed_active_directory_configuration':
        ?selfManagedActiveDirectoryConfiguration?.encode(),
  };
}

/// Typed helper for the `active_directory_configuration.self_managed_active_directory_configuration` block of
/// `aws_fsx_ontap_storage_virtual_machine` (derived from provider schema).
@immutable
final class FsxOntapStorageVirtualMachineSelfManagedActiveDirectoryConfiguration {
  const FsxOntapStorageVirtualMachineSelfManagedActiveDirectoryConfiguration({
    required this.dnsIps,
    required this.domainName,
    this.fileSystemAdministratorsGroup,
    this.organizationalUnitDistinguishedName,
    required this.password,
    required this.username,
  });

  final TfArg<List<String>> dnsIps;

  final TfArg<String> domainName;

  final TfArg<String>? fileSystemAdministratorsGroup;

  final TfArg<String>? organizationalUnitDistinguishedName;

  final Sensitive<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'dns_ips': dnsIps.toTfJson(),
    'domain_name': domainName.toTfJson(),
    'file_system_administrators_group': ?fileSystemAdministratorsGroup
        ?.toTfJson(),
    'organizational_unit_distinguished_name':
        ?organizationalUnitDistinguishedName?.toTfJson(),
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_ontap_storage_virtual_machine`.
final class AwsFsxOntapStorageVirtualMachine extends Resource {
  static const String tfType = 'aws_fsx_ontap_storage_virtual_machine';

  AwsFsxOntapStorageVirtualMachine(
    super.localName, {
    required TfArg<String> fileSystemId,
    required TfArg<String> name,
    TfArg<String>? region,
    FsxOntapStorageVirtualMachineRootVolumeSecurityStyle?
    rootVolumeSecurityStyle,
    Sensitive<String>? svmAdminPassword,
    TfArg<Map<String, String>>? tags,
    FsxOntapStorageVirtualMachineActiveDirectoryConfiguration?
    activeDirectoryConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           'name': name,
           'region': ?region,
           'root_volume_security_style': ?rootVolumeSecurityStyle,
           'svm_admin_password': ?svmAdminPassword,
           'tags': ?tags,
           if (activeDirectoryConfiguration != null)
             'active_directory_configuration': TfArg.literal(
               activeDirectoryConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOntapStorageVirtualMachineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxOntapStorageVirtualMachine>`.
  RefTo<AwsFsxOntapStorageVirtualMachine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');

  /// Reference to `subtype` attribute.
  TfRef<String> get subtype => TfRef.attribute<String>(this, 'subtype');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `root_volume_security_style` attribute.
  TfRef<String> get rootVolumeSecurityStyle =>
      TfRef.attribute<String>(this, 'root_volume_security_style');

  /// Reference to `svm_admin_password` attribute.
  TfRef<String> get svmAdminPassword =>
      TfRef.attribute<String>(this, 'svm_admin_password');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
