// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_account`.
const Set<String> _azurermNetappAccountSensitive = <String>{
  'active_directory.password',
  'active_directory.server_root_ca_certificate',
};

/// Typed helper for the `active_directory` block of
/// `azurerm_netapp_account` (derived from provider schema).
@immutable
final class NetappAccountActiveDirectory {
  const NetappAccountActiveDirectory({
    this.administratorUsers,
    this.aesEncryptionEnabled,
    this.backupUsers,
    required this.dnsServers,
    required this.domain,
    this.domainControllerConnectionEncryptionEnabled,
    this.kerberosAdName,
    this.kerberosKdcIp,
    this.ldapClientPreferredServers,
    this.ldapOverTlsEnabled,
    this.ldapSigningEnabled,
    this.localNfsUsersWithLdapAllowed,
    this.organizationalUnit,
    required this.password,
    this.securityUsers,
    this.serverRootCaCertificate,
    this.siteName,
    required this.smbServerName,
    required this.username,
    this.ldapSearchScope,
  });

  final TfArg<List<String>>? administratorUsers;

  final TfArg<bool>? aesEncryptionEnabled;

  final TfArg<List<String>>? backupUsers;

  final TfArg<List<String>> dnsServers;

  final TfArg<String> domain;

  final TfArg<bool>? domainControllerConnectionEncryptionEnabled;

  final TfArg<String>? kerberosAdName;

  final TfArg<String>? kerberosKdcIp;

  final TfArg<List<String>>? ldapClientPreferredServers;

  final TfArg<bool>? ldapOverTlsEnabled;

  final TfArg<bool>? ldapSigningEnabled;

  final TfArg<bool>? localNfsUsersWithLdapAllowed;

  final TfArg<String>? organizationalUnit;

  final Sensitive<String> password;

  final TfArg<List<String>>? securityUsers;

  final Sensitive<String>? serverRootCaCertificate;

  final TfArg<String>? siteName;

  final TfArg<String> smbServerName;

  final TfArg<String> username;

  final NetappAccountLdapSearchScope? ldapSearchScope;

  @internal
  Map<String, Object?> encode() => {
    'administrator_users': ?administratorUsers?.toTfJson(),
    'aes_encryption_enabled': ?aesEncryptionEnabled?.toTfJson(),
    'backup_users': ?backupUsers?.toTfJson(),
    'dns_servers': dnsServers.toTfJson(),
    'domain': domain.toTfJson(),
    'domain_controller_connection_encryption_enabled':
        ?domainControllerConnectionEncryptionEnabled?.toTfJson(),
    'kerberos_ad_name': ?kerberosAdName?.toTfJson(),
    'kerberos_kdc_ip': ?kerberosKdcIp?.toTfJson(),
    'ldap_client_preferred_servers': ?ldapClientPreferredServers?.toTfJson(),
    'ldap_over_tls_enabled': ?ldapOverTlsEnabled?.toTfJson(),
    'ldap_signing_enabled': ?ldapSigningEnabled?.toTfJson(),
    'local_nfs_users_with_ldap_allowed': ?localNfsUsersWithLdapAllowed
        ?.toTfJson(),
    'organizational_unit': ?organizationalUnit?.toTfJson(),
    'password': password.toTfJson(),
    'security_users': ?securityUsers?.toTfJson(),
    'server_root_ca_certificate': ?serverRootCaCertificate?.toTfJson(),
    'site_name': ?siteName?.toTfJson(),
    'smb_server_name': smbServerName.toTfJson(),
    'username': username.toTfJson(),
    'ldap_search_scope': ?ldapSearchScope?.encode(),
  };
}

/// Typed helper for the `active_directory.ldap_search_scope` block of
/// `azurerm_netapp_account` (derived from provider schema).
@immutable
final class NetappAccountLdapSearchScope {
  const NetappAccountLdapSearchScope({
    this.groupDn,
    this.groupMembershipFilter,
    this.userDn,
  });

  final TfArg<String>? groupDn;

  final TfArg<String>? groupMembershipFilter;

  final TfArg<String>? userDn;

  @internal
  Map<String, Object?> encode() => {
    'group_dn': ?groupDn?.toTfJson(),
    'group_membership_filter': ?groupMembershipFilter?.toTfJson(),
    'user_dn': ?userDn?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_netapp_account` (derived from provider schema).
@immutable
final class NetappAccountIdentity {
  const NetappAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_netapp_account`.
final class AzurermNetappAccount extends Resource {
  static const String tfType = 'azurerm_netapp_account';

  AzurermNetappAccount(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    NetappAccountActiveDirectory? activeDirectory,
    NetappAccountIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (activeDirectory != null)
             'active_directory': TfArg.literal(activeDirectory.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappAccount>`.
  RefTo<AzurermNetappAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
