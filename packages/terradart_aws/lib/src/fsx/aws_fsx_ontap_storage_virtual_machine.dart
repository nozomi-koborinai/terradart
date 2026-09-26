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

/// Typed helper for the `active_directory_configuration` block of
/// `aws_fsx_ontap_storage_virtual_machine` (derived from provider schema).
@immutable
final class FsxOntapStorageVirtualMachineActiveDirectoryConfiguration {
  const FsxOntapStorageVirtualMachineActiveDirectoryConfiguration({
    this.netbiosName,
    this.selfManagedActiveDirectoryConfiguration,
  });

  final TfArg<String>? netbiosName;

  final FsxOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration?
  selfManagedActiveDirectoryConfiguration;

  Map<String, Object?> encode() => {
    if (netbiosName != null) 'netbios_name': netbiosName!.toTfJson(),
    if (selfManagedActiveDirectoryConfiguration != null)
      'self_managed_active_directory_configuration':
          selfManagedActiveDirectoryConfiguration!.encode(),
  };
}

/// Typed helper for the `active_directory_configuration.self_managed_active_directory_configuration` block of
/// `aws_fsx_ontap_storage_virtual_machine` (derived from provider schema).
@immutable
final class FsxOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration {
  const FsxOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration({
    required this.dnsIps,
    required this.domainName,
    this.fileSystemAdministratorsGroup,
    this.organizationalUnitDistinguishedName,
    required this.password,
    required this.username,
  });

  final TfArg<List<Object?>> dnsIps;

  final TfArg<String> domainName;

  final TfArg<String>? fileSystemAdministratorsGroup;

  final TfArg<String>? organizationalUnitDistinguishedName;

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'dns_ips': dnsIps.toTfJson(),
    'domain_name': domainName.toTfJson(),
    if (fileSystemAdministratorsGroup != null)
      'file_system_administrators_group': fileSystemAdministratorsGroup!
          .toTfJson(),
    if (organizationalUnitDistinguishedName != null)
      'organizational_unit_distinguished_name':
          organizationalUnitDistinguishedName!.toTfJson(),
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_ontap_storage_virtual_machine`.
final class AwsFsxOntapStorageVirtualMachine extends Resource {
  static const String tfType = 'aws_fsx_ontap_storage_virtual_machine';

  AwsFsxOntapStorageVirtualMachine({
    required super.localName,
    required TfArg<String> fileSystemId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? rootVolumeSecurityStyle,
    TfArg<String>? svmAdminPassword,
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
           if (region != null) 'region': region,
           if (rootVolumeSecurityStyle != null)
             'root_volume_security_style': rootVolumeSecurityStyle,
           if (svmAdminPassword != null) 'svm_admin_password': svmAdminPassword,
           if (tags != null) 'tags': tags,
           if (activeDirectoryConfiguration != null)
             'active_directory_configuration': TfArg.literal(
               activeDirectoryConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOntapStorageVirtualMachineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
