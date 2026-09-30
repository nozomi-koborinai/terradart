// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_active_directory`.
const Set<String> _googleNetappActiveDirectorySensitive = <String>{'password'};

/// Factory wrapper for `google_netapp_active_directory`.
///
/// ActiveDirectory is the public representation of the active directory config.
///
/// NetApp Volumes **Active Directory** policy for SMB / LDAP volumes.
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU under `FC86-5113-7C81`
/// (list_skus keyword directory → 0). billing-behavior: control-plane AD
/// join metadata — pool capacity (`C2DF-4710-FFE1`) bills only when a
/// never_apply [GoogleNetappStoragePool] attaches this policy. Deferred
/// with the pool Wave (no apply-smoke quickstart).
///
/// [password] is sensitive.
final class GoogleNetappActiveDirectory extends Resource {
  static const String tfType = 'google_netapp_active_directory';

  GoogleNetappActiveDirectory({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> domain,
    required TfArg<String> dns,
    required TfArg<String> netBiosPrefix,
    required TfArg<String> username,
    required TfArg<String> password,
    TfArg<String>? organizationalUnit,
    TfArg<String>? site,
    TfArg<List<String>>? administrators,
    TfArg<List<String>>? backupOperators,
    TfArg<List<String>>? securityOperators,
    TfArg<bool>? aesEncryption,
    TfArg<bool>? encryptDcConnections,
    TfArg<bool>? ldapSigning,
    TfArg<bool>? nfsUsersWithLdap,
    TfArg<String>? kdcHostname,
    TfArg<String>? kdcIp,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'domain': domain,
           'dns': dns,
           'net_bios_prefix': netBiosPrefix,
           'username': username,
           'password': password,
           'organizational_unit': ?organizationalUnit,
           'site': ?site,
           'administrators': ?administrators,
           'backup_operators': ?backupOperators,
           'security_operators': ?securityOperators,
           'aes_encryption': ?aesEncryption,
           'encrypt_dc_connections': ?encryptDcConnections,
           'ldap_signing': ?ldapSigning,
           'nfs_users_with_ldap': ?nfsUsersWithLdap,
           'kdc_hostname': ?kdcHostname,
           'kdc_ip': ?kdcIp,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappActiveDirectorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetappActiveDirectory>`.
  RefTo<GoogleNetappActiveDirectory> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `administrators` attribute.
  TfRef<List<String>> get administratorsRef =>
      TfRef.attribute<List<String>>(this, 'administrators');

  /// Reference to `aes_encryption` attribute.
  TfRef<bool> get aesEncryptionRef =>
      TfRef.attribute<bool>(this, 'aes_encryption');

  /// Reference to `backup_operators` attribute.
  TfRef<List<String>> get backupOperatorsRef =>
      TfRef.attribute<List<String>>(this, 'backup_operators');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `dns` attribute.
  TfRef<String> get dnsRef => TfRef.attribute<String>(this, 'dns');

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `encrypt_dc_connections` attribute.
  TfRef<bool> get encryptDcConnectionsRef =>
      TfRef.attribute<bool>(this, 'encrypt_dc_connections');

  /// Reference to `kdc_hostname` attribute.
  TfRef<String> get kdcHostnameRef =>
      TfRef.attribute<String>(this, 'kdc_hostname');

  /// Reference to `kdc_ip` attribute.
  TfRef<String> get kdcIpRef => TfRef.attribute<String>(this, 'kdc_ip');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `ldap_signing` attribute.
  TfRef<bool> get ldapSigningRef => TfRef.attribute<bool>(this, 'ldap_signing');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `net_bios_prefix` attribute.
  TfRef<String> get netBiosPrefixRef =>
      TfRef.attribute<String>(this, 'net_bios_prefix');

  /// Reference to `nfs_users_with_ldap` attribute.
  TfRef<bool> get nfsUsersWithLdapRef =>
      TfRef.attribute<bool>(this, 'nfs_users_with_ldap');

  /// Reference to `organizational_unit` attribute.
  TfRef<String> get organizationalUnitRef =>
      TfRef.attribute<String>(this, 'organizational_unit');

  /// Reference to `password` attribute.
  TfRef<String> get passwordRef => TfRef.attribute<String>(this, 'password');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_operators` attribute.
  TfRef<List<String>> get securityOperatorsRef =>
      TfRef.attribute<List<String>>(this, 'security_operators');

  /// Reference to `site` attribute.
  TfRef<String> get siteRef => TfRef.attribute<String>(this, 'site');

  /// Reference to `username` attribute.
  TfRef<String> get usernameRef => TfRef.attribute<String>(this, 'username');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
